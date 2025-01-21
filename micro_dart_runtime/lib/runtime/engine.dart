import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:micro_dart_runtime/micro_dart_runtime.dart';

/// 解释器,字节码转换成操作集合
/// 一个解释器可以执行多个运行时
class MicroDartEngine {
  /// 执行字节码
  ByteData? _data;

  /// 操作集合
  final List<Op> ops = <Op>[];

  /// 声明指针
  final Map<CallRef, int> declarations = <CallRef, int>{};

  /// 静态变量
  final List<String> constants = [];

  /// 类型
  final Map<ClassRef, CType> types = <ClassRef, CType>{};

  /// 二进制文件读取偏移量，仅在加载时使用
  int _fileOffset = 0;

  /// 全局作用域
  final Map<String, dynamic> globals = {};

  /// 全反射
  late final MicroDartReflection reflection;

  MicroDartEngine._(this._data);

  bool debug = false;
  int maxScopeDeep = -1;

  factory MicroDartEngine.fromData(ByteData data) {
    return MicroDartEngine._(data).._load();
  }

  dynamic getGlobalParam(CallRef ref) {
    return globals[ref.fullName];
  }

  void setGlobalParam(CallRef ref, dynamic value) {
    globals[ref.fullName] = value;
  }

  bool hasGlobalParam(CallRef key) {
    return globals.containsKey(key.fullName);
  }

  void setReflection(MicroDartReflection reflection) {
    this.reflection = reflection;
  }

  int readUint8() {
    final i = _data!.getUint8(_fileOffset);
    _fileOffset += 1;
    return i;
  }

  int readInt32() {
    final i = _data!.getInt32(_fileOffset);
    _fileOffset += 4;
    return i;
  }

  int readUInt32() {
    final i = _data!.getUint32(_fileOffset);
    _fileOffset += 4;
    return i;
  }


  int readInt64() {
    final i = _data!.getInt64(_fileOffset);
    _fileOffset += 8;
    return i;
  }

  int readUInt64() {
    final i = _data!.getUint64(_fileOffset);
    _fileOffset += 8;
    return i;
  }

  double readFloat32() {
    final i = _data!.getFloat32(_fileOffset);
    _fileOffset += 4;
    return i;
  }

  double readFloat64() {
    final i = _data!.getFloat64(_fileOffset);
    _fileOffset += 8;
    return i;
  }

  String readString() {
    final offset = _data!.getInt32(_fileOffset);
    _fileOffset += 4;
    return constants[offset];
  }

  String readRealString() {
    final len = _data!.getInt32(_fileOffset);
    _fileOffset += 4;
    final codeUnits = List.filled(len, 0);
    for (var i = 0; i < len; i++) {
      codeUnits[i] = _data!.getUint8(_fileOffset + i);
    }
    _fileOffset += len;
    return utf8.decode(codeUnits);
  }

  List<String> readStringList() {
    final len = _data!.getInt32(_fileOffset);
    _fileOffset += 4;
    final List<String> result = [];
    for (int i = 0; i < len; i++) {
      result.add(readString());
    }
    return result;
  }

  int readInt16() {
    final i = _data!.getInt16(_fileOffset);
    _fileOffset += 2;
    return i;
  }

  void dispose() {
    declarations.clear();
    constants.clear();
    types.clear();
    ops.clear();
    globals.clear();
    _data = null;
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
    while (_fileOffset < _data!.lengthInBytes) {
      final opId = _data!.getUint8(_fileOffset);
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
    _data = null;
  }

  void printOpcodes() {
    var i = 0;
    var depth = 0;
    for (final oo in ops) {
      if (oo is OpCallEnd) {
        depth--;
      }
      var tabs = '';
      for (var i = 0; i < depth; ++i) {
        tabs += '  ';
      }
      if (oo is OpCallStart) {
        depth++;
      }
      print('$tabs$i : $oo');

      i++;
    }
  }

  String getOpcodes() {
    var i = 0;
    StringBuffer buffer = StringBuffer();
    for (final oo in ops) {
      buffer.writeln('$i : $oo');
      i++;
    }
    return buffer.toString();
  }

  String getConstants() {
    var i = 0;
    StringBuffer buffer = StringBuffer();
    for (final c in constants) {
      buffer.writeln('$i : $c');
      i++;
    }
    return buffer.toString();
  }

  String getTypes() {
    StringBuffer buffer = StringBuffer();
    var i = 0;
    types.forEach((key, value) {
      buffer.writeln('$i : $key : $value');
      i++;
    });

    return buffer.toString();
  }

  String getDeclarations() {
    StringBuffer buffer = StringBuffer();
    var i = 0;
    declarations.forEach((key, value) {
      buffer.writeln('$i : $value : $key');
      i++;
    });

    return buffer.toString();
  }

  CType getType(ClassRef ref) {
    var type = types[ref];
    if (type == null) {
      throw Exception("type not found $ref  $types");
    }
    return type;
  }

//这里的问题是，即使找到了callref，也不知道是内部方法还是外部方法，最终调用的时候还要判断一次
  CallRef? getCallRefByType(
      CType type, String name, bool isSetter, bool isStatic) {
    var key = type.getCallRef(name, isSetter, isStatic);
    if (declarations.containsKey(key)) {
      return key;
      // } else if (externalExists(type, name, isSetter, isStatic)) {
      //   return key;
    } else if (type.superType != null && types.containsKey(type.superType)) {
      return getCallRefByType(
          getType(type.superType!), name, isSetter, isStatic);
    }
    return null;
  }

  CallRef? getCallRefBySuperType(CType type, ClassRef targetRef, String name,
      bool isSetter, bool isMixinDeclaration) {
    //如果没有父类则直接返回null
    // if (type.superType == null) {
    //   return null;
    // }

    //当前类的父类不是需要调用的父类则轮询
    CType? targetType;
    // bool isSuper = false;
    // bool isMixin = false;

    if (type.ref == targetRef) {
      //如果type直接就是目标ref就不用往上找了。
      targetType = type;
    } else if (targetRef == type.superType) {
      targetType = getType(type.superType!);
    } else if (targetRef == type.mixinType) {
      targetType = getType(type.mixinType!);
    } else {
      //继续往上找
      var t = getCallRefBySuperType(getType(type.superType!), targetRef, name,
          isSetter, isMixinDeclaration);
      return t;
    }

    if (isMixinDeclaration) {
      //use super
      targetType = getType(type.superType!);
    }
    return getInstanceCallRefRecursively(targetType, name, isSetter);
  }

  CallRef getInstanceCallRefRecursively(
      CType targetType, String name, bool isSetter) {
    var callback = getKeyByType2(targetType, name, isSetter, false);

    if (callback == null) {
      while (targetType.superType != null) {
        //继续向上找superType直到null
        targetType = getType(targetType.superType!);
        // superType = getType(superRef);
        callback = getKeyByType2(targetType, name, isSetter, false);
        if (callback != null) {
          break;
        }
      }
      assert(callback != null, "Error: Don't find $name on $targetType");
    }

    return callback!;
  }

  CallRef? getKeyByType2(
      CType type, String name, bool isSetter, bool isStatic) {
    if (type.isExternal) {
      return type.getCallRef(name, isSetter, isStatic);
      // } else if (type.isMixinDeclaration || type.isAnonymousMixin) {
      //   return getCallRefByType(getType(type.superType!), name, isSetter, isStatic);
    } else {
      var key = type.getCallRef(name, isSetter, isStatic);
      if (declarations.containsKey(key)) {
        return key;
      }
    }
    return null;
  }

  T? callStaticFunction<T>(String importUri, String functionName,
      List positional, Map<String, dynamic> named) {
    var ref = CallRef(importUri, "", functionName, false, true);
    //获取当前操作数指针
    int pointer = declarations[ref]!;
    var scope = Scope(this, "_root_", true, false);
    List<dynamic> args = [];
    //设置初始参数
    for (int i = positional.length - 1; i >= 0; i--) {
      args.add(positional[i]);
    }
    args.add(positional.length);
    named.forEach((key, value) {
      args.add(value);
      args.add(key);
    });
    args.add(named.length);
    scope.setScopeParam("#args", args);

    scope.call(pointer);

    return scope.returnValue;
  }

  T? callStaticFunction2<T>(String importUri, String functionName) {
    var ref = CallRef(importUri, "", functionName, false, true);
    //获取当前操作数指针
    int pointer = declarations[ref]!;
    var scope = Scope(this, "_root_", true, false);
    List<dynamic> args = [0, 0];
    scope.setScopeParam("#args", args);
    scope.call(pointer);
    return scope.returnValue;
  }

  dynamic callFunction(
      Scope scope,
      Instance instance,
      CallRef ref,
      List positional,
      Map<String, dynamic> named,
      dynamic Function()? otherwise) {
    //获取当前操作数指针
    var pointer = declarations[ref];
    var newScope =
        scope.createFromParent(ref.callName, true, false, maxScopeDeep);
    if (pointer == null) {
      return otherwise?.call();
    }

    List<dynamic> args = [instance];
    //设置初始参数
    for (int i = positional.length - 1; i >= 0; i--) {
      args.add(positional[i]);
    }
    args.add(positional.length);
    named.forEach((key, value) {
      args.add(value);
      args.add(key);
    });
    args.add(named.length);
    newScope.setScopeParam("#args", args);

    newScope.call(pointer);

    return newScope.returnValue;
  }

  Future callStaticFunctionWaitClean(String importUri, String functionName,
      List positional, Map<String, dynamic> named) async {
    var ref = CallRef(importUri, "", functionName, false, true);
    //获取当前操作数指针
    int pointer = declarations[ref]!;
    var scope = Scope(this, "_root_", true, false);
    List<dynamic> args = [];
    //设置初始参数
    for (int i = positional.length - 1; i >= 0; i--) {
      args.add(positional[i]);
    }
    args.add(positional.length);
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
      List positional, Map<String, dynamic> named) async {
    var ref = CallRef(importUri, "", functionName, false, true);
    //获取当前操作数指针
    int pointer = declarations[ref]!;
    var scope = Scope(this, "_root_", true, true);
    List<dynamic> args = [];
    //设置初始参数
    for (int i = positional.length - 1; i >= 0; i--) {
      args.add(positional[i]);
    }
    args.add(positional.length);
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
      Scope scope, String name, bool hasArgs, bool isAsync, int pointer) async {
    var newScope = scope.createFromParent(name, hasArgs, isAsync, maxScopeDeep);
    if (hasArgs) {
      newScope.setScopeParam("#args", (scope.popFrame() as List<dynamic>));
    }

    if (isAsync) {
      var future = _doAsync(newScope, pointer);
      scope.pushFrame(future);
    } else {
      await newScope.callAsync(pointer);
      if (newScope.hasReturn) {
        scope.pushFrame(newScope.returnValue);
      }
    }
  }

  void callPointer(Scope scope, String name, bool hasArgs, int pointer,
      {Instance? thiz}) {
    var newScope = scope.createFromParent(name, hasArgs, false, maxScopeDeep);
    if (hasArgs) {
      newScope.setScopeParam("#args", (scope.popFrame() as List<dynamic>));
    }
    if (thiz != null) {
      newScope.setScopeParam("#this", thiz);
    }
    newScope.call(pointer);
    if (newScope.hasReturn) {
      scope.pushFrame(newScope.returnValue);
    }
  }

  Future<dynamic> callFunctionPointerAsync(
      Scope scope,
      FunctionPointer functionPointer,
      List<dynamic> positional,
      Map<String, dynamic> named) async {
    var newScope =
        scope.createFromParent("_anonymous_", true, true, maxScopeDeep);
    List<dynamic> args = [];
    if (!functionPointer.isStatic) {
      args.add(functionPointer.target);
    }
    //设置初始参数
    for (int i = positional.length - 1; i >= 0; i--) {
      args.add(positional[i]);
    }
    args.add(positional.length);
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
      List<dynamic> positional, Map<String, dynamic> named) {
    var newScope = scope.createFromParent(
        "_callFunctionPointer_", true, false, maxScopeDeep);

    List<dynamic> args = [];
    if (!functionPointer.isStatic) {
      args.add(functionPointer.target);
    }
    //设置初始参数
    for (int i = positional.length - 1; i >= 0; i--) {
      args.add(positional[i]);
    }
    args.add(positional.length);
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

  void callDynamicFunction(Scope scope, String name, bool hasArgs) {
    var args = (scope.popFrame() as List<dynamic>);
    var newScope = scope.createFromParent(name, hasArgs, false, maxScopeDeep);

    dynamic callee = args.first;
    int pointer = -1;
    if (callee is InstanceImpl) {
      if (callee.hasField(scope, name)) {
        //是成员变量
        var member = callee.getField(scope, name);
        if (member is FunctionPointer) {
          newScope.setScopeParam("#this", member.target);
          pointer = member.offset;
        } else {
          throw Exception(
              "cannot call dynamic [$name] as FunctionPointer, actual type: [${member.runtimeType}]");
        }
      } else {
        //是成员函数
        var ref = getCallRefByType(callee.type, name, false, false);
        if (ref == null) {
          //没找到，看看有没有noSuchMethod，如果有调用之
          ref = getCallRefByType(callee.type, "noSuchMethod", false, false);
          if (ref == null) {
            throw Exception("no such method : ${callee.runtimeType}.$name");
          }
        }
        pointer = declarations[ref]!;
      }
    } else if (callee is FunctionPointer) {
      newScope.setScopeParam("#this", callee.target);
      pointer = callee.offset;
    } else if (callee is InstanceBridge) {
      // TODO: 继承外部类的实例
      assert(false,
          "unsupport type of dynamic invocation : ${callee.runtimeType}");
    } else {
      final Map<String, dynamic> namedArguments = {};

      final int namedLength = args.removeLast() as int;
      for (int i = 0; i < namedLength; i++) {
        String key = args.removeLast() as String;
        var value = args.removeLast();
        namedArguments[key] = value;
      }
      int posationalLength = args.removeLast() as int;
      final List<dynamic> positionalArguments =
          List.filled(posationalLength, null, growable: false);
      for (int i = 0; i < posationalLength; i++) {
        var value = args.removeLast();
        positionalArguments[i] = value;
      }

      var function = scope.engine.reflection.findStaticGetter(name);
      if (function != null) {
        //外部静态方法
        final instance = Function.apply(
            function(scope),
            positionalArguments,
            namedArguments.map<Symbol, dynamic>(
                (key, value) => MapEntry(Symbol(key), value)));
        scope.pushFrame(instance);
      } else {
        //外部成员方法
        var className =
            scope.engine.reflection.findClassName(callee.runtimeType)!;
        function =
            scope.engine.reflection.findClassMemberGetter(className, name);

        if (function == null) {
          throw Exception(
              "not found external function: $name for type: ${callee.runtimeType}");
        }
        final instance = Function.apply(
            function(scope, callee),
            positionalArguments,
            namedArguments.map<Symbol, dynamic>(
                (key, value) => MapEntry(Symbol(key), value)));
        scope.pushFrame(instance);
      }
      return;
    }
    if (hasArgs) {
      newScope.setScopeParam("#args", args);
    }

    newScope.call(pointer);
    if (newScope.hasReturn) {
      scope.pushFrame(newScope.returnValue);
    }
  }

  void callDynamicFunctionAsync(Scope scope, String name, bool hasArgs) async {
    var args = (scope.popFrame() as List<dynamic>);
    var newScope = scope.createFromParent(name, hasArgs, false, maxScopeDeep);

    dynamic callee = args.first;
    int pointer = -1;
    if (callee is InstanceImpl) {
      if (callee.hasField(scope, name)) {
        //是成员变量
        var member = callee.getField(scope, name);
        if (member is FunctionPointer) {
          newScope.setScopeParam("#this", member.target);
          pointer = member.offset;
        } else {
          throw Exception(
              "cannot call dynamic [$name] as FunctionPointer, actual type: [${member.runtimeType}]");
        }
      } else {
        //是成员函数
        var ref = getCallRefByType(callee.type, name, false, false);
        pointer = declarations[ref]!;
      }
    } else if (callee is FunctionPointer) {
      newScope.setScopeParam("#this", callee.target);
      pointer = callee.offset;
    } else if (callee is InstanceBridge) {
      // TODO: 继承外部类的实例
      assert(false,
          "unsupport type of dynamic invocation : ${callee.runtimeType}");
    } else {
      // TODO: 外部类型
      assert(false,
          "unsupport type of dynamic invocation : ${callee.runtimeType}");
    }
    if (hasArgs) {
      newScope.setScopeParam("#args", args);
    }

    await newScope.callAsync(pointer);
    if (newScope.hasReturn) {
      scope.pushFrame(newScope.returnValue);
    }
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

  //FIXME: 目前只有#is用到了，且is需要优化结构
  dynamic callMemberFunctionExternal(
      ClassRef ref,
      String name,
      Scope scope,
      dynamic target,
      List positionalArguments,
      Map<Symbol, dynamic> namedArgs) {
    var function = scope.engine.reflection
        .findClassMemberGetter(ref.className, name)!(scope, target);

    try {
      return Function.apply(function, positionalArguments, namedArgs);
    } catch (e, s) {
      print("callMemberFunctionExternal error $ref");
      rethrow;
    }
  }
}
