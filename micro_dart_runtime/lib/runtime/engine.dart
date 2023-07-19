import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:micro_dart_runtime/micro_dart_runtime.dart';

/// 解释器,字节码转换成操作集合
/// 一个解释器可以执行多个运行时
class MicroDartEngine {
  /// 执行字节码
  final ByteData _data;

  /// 操作集合
  final List<Op> ops = <Op>[];

  /// 声明指针
  final Map<CallRef, int> declarations = <CallRef, int>{};

  /// 静态变量
  final List<String> constants = <String>[];

  /// 类型
  final Map<ClassRef, CType> types = <ClassRef, CType>{};

  /// 二进制文件读取偏移量，仅在加载时使用
  int _fileOffset = 0;

  /// 全局作用域
  final Map<CallRef, dynamic> globals = {};

  //外部全局方法调用
  static Map<String, LibraryMirror> libraryMirrors = {};

  MicroDartEngine._(this._data);

  bool debug = false;
  int maxScopeDeep = -1;

  factory MicroDartEngine.fromData(ByteData data) {
    return MicroDartEngine._(data).._load();
  }

  dynamic getGlobalParam(CallRef ref) {
    return globals[ref];
  }

  void setGlobalParam(CallRef ref, dynamic value) {
    globals[ref] = value;
  }

  bool hasGlobalParam(CallRef key) {
    return globals.containsKey(key);
  }

  void setExternalFunctions(Map<String, LibraryMirror> mirrors) {
    libraryMirrors = mirrors;
  }

  int readUint8() {
    final i = _data.getUint8(_fileOffset);
    _fileOffset += 1;
    return i;
  }

  int readInt32() {
    final i = _data.getInt32(_fileOffset);
    _fileOffset += 4;
    return i;
  }

  double readFloat32() {
    final i = _data.getFloat32(_fileOffset);
    _fileOffset += 4;
    return i;
  }

  double readFloat64() {
    final i = _data.getFloat64(_fileOffset);
    _fileOffset += 8;
    return i;
  }

  String readString() {
    final offset = _data.getInt32(_fileOffset);
    _fileOffset += 4;
    return constants[offset];
  }

  String readRealString() {
    final len = _data.getInt32(_fileOffset);
    _fileOffset += 4;
    final codeUnits = List.filled(len, 0);
    for (var i = 0; i < len; i++) {
      codeUnits[i] = _data.getUint8(_fileOffset + i);
    }
    _fileOffset += len;
    return utf8.decode(codeUnits);
  }

  List<String> readStringList() {
    final len = _data.getInt32(_fileOffset);
    _fileOffset += 4;
    final List<String> result = [];
    for (int i = 0; i < len; i++) {
      result.add(readString());
    }
    return result;
  }

  int readInt16() {
    final i = _data.getInt16(_fileOffset);
    _fileOffset += 2;
    return i;
  }

  void _load() {
    declarations.clear();
    constants.clear();
    types.clear();
    ops.clear();

    var typeList = json.decode(readRealString()) as List;
    var callRefJsonList = (json.decode(readRealString()) as List);
    var callRefJsonIndexList = (json.decode(readRealString()) as List);
    var constantJsonList = (json.decode(readRealString()) as List);

    ///加载静态变量
    constants.addAll(constantJsonList.cast());

    ///加载类型
    types.addEntries(typeList.map<MapEntry<ClassRef, CType>>((value) {
      var cType = CType.fromList(value, constants);
      return MapEntry<ClassRef, CType>(cType.ref, cType);
    }).toList());

    var callRefList = callRefJsonList
        .map<CallRef>((e) => CallRef.fromList(e, constants))
        .toList();
    var callRefIndexList = callRefJsonIndexList.cast<int>();

    for (int i = 0; i < callRefList.length; i++) {
      declarations[callRefList[i]] = callRefIndexList[i];
    }

    ///加载全局声明
    //declarations.addAll(json.decode(readString()).cast<String, int>());

    ///加载内置类型
    //types.addAll(Types.internalTypes);

    ///加载操作结合
    while (_fileOffset < _data.lengthInBytes) {
      final opId = _data.getUint8(_fileOffset);
      _fileOffset++;
      if (opLoaders[opId] == null) {
        var start = ops.length - 10;
        if (start < 0) {
          start = 0;
        }
        throw Exception(
            "not found ${ops.length} opId:$opId queue:${ops.sublist(start, ops.length)}");
      }
      var op = opLoaders[opId]!(this);

      ops.add(op);
    }
  }

  void printOpcodes() {
    print("------------start printOpcodes------------");
    var i = 0;
    for (final oo in ops) {
      print('$i: $oo');
      i++;
    }
    print("------------end printOpcodes------------");
  }

  CType getType(ClassRef ref) {
    var type = types[ref];
    if (type == null) {
      throw Exception("type not found $ref  $types");
    }
    return type;
  }

  bool externalExists(CType type, String name, bool isSetter, bool isStatic) {
    if (isStatic) {
      return libraryMirrors[type.ref.library]?.getters[name] != null;
    }
    return libraryMirrors[type.ref.library]
            ?.classes[type.ref.className]
            ?.getters[name] !=
        null;
  }

  CallRef? getCallRefByType(
      CType type, String name, bool isSetter, bool isStatic) {
    var key = type.getCallRef(name, isSetter, isStatic);
    if (declarations.containsKey(key)) {
      return key;
    } else if (externalExists(type, name, isSetter, isStatic)) {
      return key;
    } else if (type.superType != null && types.containsKey(type.superType)) {
      return getCallRefByType(
          getType(type.superType!), name, isSetter, isStatic);
    }
    return null;
  }

  CallRef? getCallRefBySuperType(CType type, ClassRef superRef, String name,
      bool isSetter, bool isStatic) {
    //如果没有父类则直接返回null
    if (type.superType == null) {
      return null;
    }
    //当前类的父类不是需要调用的父类则轮询
    bool isSuper = false;
    bool isMixin = false;

    if (superRef == type.superType) {
      print("1");
      isSuper = true;
    } else if (superRef == type.mixinType) {
      print("2 ${type} ${superRef}");
      isMixin = true;
    } else if (type.implementTypes.contains(superRef)) {
      print("3");
      isSuper = true;
    }
    if (!isSuper && !isMixin) {
      print("4");
      return getCallRefBySuperType(
          getType(type.superType!), superRef, name, isSetter, isStatic);
    }
    print("5");
    CType? superType;

    if (isSuper) {
      superType = getType(type.superType!);
    } else if (isMixin) {
      superType = getType(type.mixinType!);
    }
    print("6");
    var callback = getKeyByType2(superType!, name, isSetter, isStatic);

    if (callback == null) {
      print("7");
      superType = getType(superRef);
      callback = getKeyByType2(superType, name, isSetter, isStatic);
    }
    return callback;
  }

  CallRef? getKeyByType2(
      CType type, String name, bool isSetter, bool isStatic) {
    if (type.isExternal) {
      return type.getCallRef(name, isSetter, isStatic);
    } else if (type.isMixinDeclaration || type.isAnonymousMixin) {
      return getCallRefByType(
          getType(type.superType!), name, isSetter, isStatic);
    } else {
      var key = type.getCallRef(name, isSetter, isStatic);
      if (declarations.containsKey(key)) {
        return key;
      }
    }
    return null;
  }

  T? callStaticFunction<T>(String importUri, String functionName,
      List posational, Map<String, dynamic> named) {
    var ref = CallRef(importUri, "", functionName, false, true);
    //获取当前操作数指针
    int pointer = declarations[ref]!;
    var scope = Scope(this, "_root_", true, false);
    List<dynamic> args = [];
    //设置初始参数
    for (int i = posational.length - 1; i >= 0; i--) {
      args.add(posational[i]);
    }
    args.add(posational.length);
    named.forEach((key, value) {
      args.add(value);
      args.add(key);
    });
    args.add(named.length);
    scope.setScopeParam("#args", args);

    scope.call(pointer);

    return scope.returnValue;
  }

  dynamic callFunction(Instance instance, CallRef ref, List posational,
      Map<String, dynamic> named, dynamic Function()? alse) {
    //获取当前操作数指针
    var pointer = declarations[ref];
    if (pointer == null) {
      if (alse != null) {
        return alse();
      }
      return null;
    }
    var scope = Scope(this, "_external_call_", true, false);
    List<dynamic> args = [instance];
    //设置初始参数
    for (int i = posational.length - 1; i >= 0; i--) {
      args.add(posational[i]);
    }
    args.add(posational.length);
    named.forEach((key, value) {
      args.add(value);
      args.add(key);
    });
    args.add(named.length);
    scope.setScopeParam("#args", args);

    scope.call(pointer);

    return scope.returnValue;
  }

  Future callStaticFunctionWaitClean(String importUri, String functionName,
      List posational, Map<String, dynamic> named) async {
    var ref = CallRef(importUri, "", functionName, false, true);
    //获取当前操作数指针
    int pointer = declarations[ref]!;
    var scope = Scope(this, "_root_", true, false);
    List<dynamic> args = [];
    //设置初始参数
    for (int i = posational.length - 1; i >= 0; i--) {
      args.add(posational[i]);
    }
    args.add(posational.length);
    named.forEach((key, value) {
      args.add(value);
      args.add(key);
    });
    args.add(named.length);
    scope.setScopeParam("#args", args);

    scope.call(pointer);

    while (!scope.released) {
      await Future.delayed(Duration(milliseconds: 100));
    }

    return scope.returnValue;
  }

  Future<T> callStaticFunctionAsync<T>(String importUri, String functionName,
      List posational, Map<String, dynamic> named) async {
    var ref = CallRef(importUri, "", functionName, false, true);
    //获取当前操作数指针
    int pointer = declarations[ref]!;
    var scope = Scope(this, "_root_", true, true);
    List<dynamic> args = [];
    //设置初始参数
    for (int i = posational.length - 1; i >= 0; i--) {
      args.add(posational[i]);
    }
    args.add(posational.length);
    named.forEach((key, value) {
      args.add(value);
      args.add(key);
    });
    args.add(named.length);
    scope.setScopeParam("#args", args);

    await scope.callAsync(pointer);
    return scope.returnValue;
  }

  Future callPointerAsync(
      Scope scope, String name, bool hasArgs, bool isAsync, int poniter) async {
    var newScope = scope.createFromParent(name, hasArgs, isAsync, maxScopeDeep);
    if (hasArgs) {
      newScope.setScopeParam("#args", (scope.popFrame() as List<dynamic>));
    }

    if (isAsync) {
      var future = _doAsync(newScope, poniter);
      scope.pushFrame(future);
    } else {
      await newScope.callAsync(poniter);
      if (newScope.hasReturn) {
        scope.pushFrame(newScope.returnValue);
      }
    }
  }

  void callPointer(Scope scope, String name, bool hasArgs, int poniter,
      {Instance? thiz}) {
    var newScope = scope.createFromParent(name, hasArgs, false, maxScopeDeep);
    if (hasArgs) {
      newScope.setScopeParam("#args", (scope.popFrame() as List<dynamic>));
    }
    if (thiz != null) {
      newScope.setScopeParam("#this", thiz);
    }
    newScope.call(poniter);
    if (newScope.hasReturn) {
      scope.pushFrame(newScope.returnValue);
    }
  }

  Future<dynamic> callFunctionPointerAsync(
      Scope scope,
      FunctionPointer functionPointer,
      List<dynamic> posational,
      Map<String, dynamic> named) async {
    var newScope =
        scope.createFromParent("_anonymous_", true, true, maxScopeDeep);
    List<dynamic> args = [];
    if (!functionPointer.isStatic) {
      args.add(functionPointer.target);
    }
    //设置初始参数
    for (int i = posational.length - 1; i >= 0; i--) {
      args.add(posational[i]);
    }
    args.add(posational.length);
    named.forEach((key, value) {
      args.add(value);
      args.add(key);
    });
    args.add(named.length);
    newScope.setScopeParam("#args", args);
    if (!functionPointer.isStatic) {
      newScope.setScopeParam("#this", functionPointer.target);
    }
    await newScope.callAsync(functionPointer.offset);
    if (newScope.hasReturn) {
      return scope.returnValue;
    }
    return null;
  }

  dynamic callFunctionPointer(Scope scope, FunctionPointer functionPointer,
      List<dynamic> posational, Map<String, dynamic> named) {
    if (scope.released) {
      print(scope.dump());
    }

    var newScope = scope.createFromParent(
        "_callFunctionPointer_", true, false, maxScopeDeep);

    List<dynamic> args = [];
    if (!functionPointer.isStatic) {
      args.add(functionPointer.target);
    }
    //设置初始参数
    for (int i = posational.length - 1; i >= 0; i--) {
      args.add(posational[i]);
    }
    args.add(posational.length);
    named.forEach((key, value) {
      args.add(value);
      args.add(key);
    });
    args.add(named.length);
    newScope.setScopeParam("#args", args);
    if (functionPointer.target != null) {
      newScope.setScopeParam("#this", functionPointer.target);
    }

    newScope.call(functionPointer.offset);
    if (newScope.hasReturn) {
      return newScope.returnValue;
    }
    return null;
  }

  Future<T> _doAsync<T>(Scope scope, int pointer) {
    var completer = Completer<T>();
    Future(() async {
      await scope.callAsync(pointer);
      if (scope.hasReturn) {
        completer.complete(scope.returnValue);
      } else {
        completer.complete(null);
      }
    });
    return completer.future;
  }

  void setStaticParamExternal(String library, String name, dynamic other) {
    var function = libraryMirrors[library]?.getters[name];
    function!(other);
  }

  dynamic getStaticParamExternal(String library, String name) {
    var function = libraryMirrors[library]?.setters[name];
    return function!();
  }

  void setParamExternal(
      ClassRef ref, String name, dynamic target, dynamic other) {
    var function =
        libraryMirrors[ref.library]?.classes[ref.className]?.setters[name];

    function!(target, other);
  }

  dynamic getParamExternal(ClassRef ref, String name, dynamic target) {
    var function =
        libraryMirrors[ref.library]?.classes[ref.className]?.getters[name];
    return function!(target);
  }

  bool hasExternalParam(ClassRef ref, String name, bool isSetter) {
    var clazz = libraryMirrors[ref.library]?.classes[ref.className];

    if (isSetter) {
      return clazz?.setters[name] == null;
    }
    return clazz?.getters[name] == null;
  }

  dynamic callExternalFunction(
      ClassRef ref,
      String name,
      Scope scope,
      dynamic target,
      List positionalArguments,
      Map<Symbol, dynamic> namedArgs) {
    var function = libraryMirrors[ref.library]
        ?.classes[ref.className]
        ?.getters[name]!(scope, target);
    return Function.apply(function, positionalArguments, namedArgs);
  }

  dynamic callExternalStaticFunction(ClassRef ref, String name, Scope scope,
      List positionalArguments, Map<Symbol, dynamic> namedArgs) {
    var function = libraryMirrors[ref.library]
        ?.classes[ref.className]
        ?.getters[name]!(scope);
    return Function.apply(function, positionalArguments, namedArgs);
  }

  Function? getExternalFunction(CallRef ref) {
    if (ref.isStatic) {
      if (ref.isSetter) {
        return libraryMirrors[ref.library]?.setters[ref.name];
      }
      return libraryMirrors[ref.library]?.getters[ref.name];
    }

    var clazz = libraryMirrors[ref.library]?.classes[ref.className];

    if (ref.isSetter) {
      return clazz?.setters[ref.name];
    }
    return clazz?.getters[ref.name];
  }
}
