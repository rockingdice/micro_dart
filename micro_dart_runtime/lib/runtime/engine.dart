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
  final ops = <Op>[];

  /// 声明指针
  final declarations = <String, int>{};

  /// 静态变量
  final constants = <Object>[];

  /// 类型
  final Map<String, TypeRef> types = <String, TypeRef>{};

  /// 二进制文件读取偏移量，仅在加载时使用
  int _fileOffset = 0;

  /// 全局作用域
  final Map<String, Object?> globals = {};

  //外部全局方法调用
  final Map<String, Function> externalFunctions = {};

  MicroDartEngine._(this._data);

  bool debug = false;
  int maxScopeDeep = -1;

  factory MicroDartEngine.fromData(ByteData data) {
    return MicroDartEngine._(data).._load();
  }

  Object? getGlobalParam(String key) {
    return globals[key];
  }

  void setGlobalParam(String key, Object? value) {
    globals[key] = value;
  }

  bool hasGlobalParam(String key) {
    return globals.containsKey(key);
  }

  void addExternalFunctions(Map<String, Function> functions) {
    externalFunctions.addAll(functions);
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

  String readString() {
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

    ///加载全局声明
    declarations.addAll(json.decode(readString()).cast<String, int>());

    ///加载静态变量
    constants.addAll((json.decode(readString()) as List).cast());
    var maps = json.decode(readString()) as Map;

    ///加载类型
    types.addAll(maps.map<String, TypeRef>((key, value) =>
        MapEntry<String, TypeRef>(key, TypeRef.fromList(value))));

    ///加载内置类型
    types.addAll(Types.internalTypes);

    ///加载操作结合
    while (_fileOffset < _data.lengthInBytes) {
      final opId = _data.getUint8(_fileOffset);
      _fileOffset++;
      if (opLoaders[opId] == null) {
        throw Exception("not found opId $opId");
      }
      ops.add(opLoaders[opId]!(this));
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

  TypeRef getType(String key) {
    return types[key]!;
  }

  String? getKeyByType(TypeRef type, String name, {bool isSetter = false}) {
    var key = type.getNameKey(name, isSetter: isSetter);
    if (declarations.containsKey(key)) {
      return key;
    } else if (externalFunctions.containsKey(key)) {
      return key;
    } else if (type.superTypeKey != null &&
        types.containsKey(type.superTypeKey)) {
      return getKeyByType(getType(type.superTypeKey!), name,
          isSetter: isSetter);
    }
    return null;
  }

  String? getKeyBySuperType(TypeRef type, String superKey, String name,
      {bool isSetter = false}) {
    //如果没有父类则直接返回null
    if (type.superTypeKey == null) {
      return null;
    }
    //当前类的父类不是需要调用的父类则轮询
    bool isSuper = false;
    if (superKey == type.superTypeKey) {
      isSuper = true;
    } else if (superKey == type.mixinTypeKey) {
      isSuper = true;
    } else if (type.implementTypes.contains(superKey)) {
      isSuper = true;
    }
    if (!isSuper) {
      return getKeyBySuperType(getType(type.superTypeKey!), superKey, name,
          isSetter: isSetter);
    }

    var superType = getType(type.superTypeKey!);

    var callback = getKeyByType2(superType, name, isSetter: isSetter);
    if (callback == null) {
      superType = getType(superKey);
      callback = getKeyByType2(superType, name, isSetter: isSetter);
    }
    return callback;
  }

  String? getKeyByType2(TypeRef type, String name, {bool isSetter = false}) {
    if (type.isExternal) {
      return type.getNameKey(name, isSetter: isSetter);
    } else if (type.isMixinDeclaration || type.isAnonymousMixin) {
      return getKeyByType(getType(type.superTypeKey!), name,
          isSetter: isSetter);
    } else {
      var key = type.getNameKey(name, isSetter: isSetter);
      if (declarations.containsKey(key)) {
        return key;
      }
    }
    return null;
  }

  T? callStaticFunction<T>(String importUri, String functionName,
      List posational, Map<String, dynamic> named) {
    //获取当前操作数指针
    int pointer = declarations['$importUri@@$functionName']!;
    var scope = Scope(this, "_root_", true, false);
    List<Object?> args = [];
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
    //获取当前操作数指针
    int pointer = declarations['$importUri@@$functionName']!;
    var scope = Scope(this, "_root_", true, false);
    List<Object?> args = [];
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
    //获取当前操作数指针
    int pointer = declarations['$importUri@@$functionName']!;
    var scope = Scope(this, "_root_", true, true);
    List<Object?> args = [];
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
      newScope.setScopeParam("#args", (scope.popFrame() as List<Object?>));
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

  void callPointer(Scope scope, String name, bool hasArgs, int poniter) {
    var newScope = scope.createFromParent(name, hasArgs, false, maxScopeDeep);
    if (hasArgs) {
      newScope.setScopeParam("#args", (scope.popFrame() as List<Object?>));
    }
    newScope.call(poniter);
  }

  Future<dynamic> callFunctionPointerAsync(
      Scope scope,
      FunctionPointer functionPointer,
      List<Object?> posational,
      Map<String, dynamic> named) async {
    var newScope =
        scope.createFromParent("_anonymous_", true, true, maxScopeDeep);
    List<Object?> args = [];
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
    await newScope.callAsync(functionPointer.offset);
    if (newScope.hasReturn) {
      return scope.returnValue;
    }
    return null;
  }

  dynamic callFunctionPointer(Scope scope, FunctionPointer functionPointer,
      List<Object?> posational, Map<String, dynamic> named) {
    var newScope =
        scope.createFromParent("_anonymous_", true, true, maxScopeDeep);
    List<Object?> args = [];
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

    newScope.call(functionPointer.offset);
    if (newScope.hasReturn) {
      return scope.returnValue;
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
}
