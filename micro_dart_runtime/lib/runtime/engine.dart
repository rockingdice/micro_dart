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
        print("not found opId $opId");
        break;
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

  dynamic callStaticFunction(String importUri, String functionName,
      List posational, Map<String, dynamic> named) {
    //获取当前操作数指针
    int pointer = declarations['$importUri@@$functionName:static']!;
    var scope = Scope(this, "_root_");
    //设置初始参数
    for (int i = posational.length - 1; i >= 0; i--) {
      scope.pushFrame(posational[i]);
    }
    scope.pushFrame(posational.length);
    named.forEach((key, value) {
      scope.pushFrame(value);
      scope.pushFrame(key);
    });
    scope.pushFrame(named.length);

    var newScope = scope.createFromParent("_CallStatic_", maxScopeDeep);
    newScope.call(pointer);

    return newScope.returnValue;
  }

  void callPointer(Scope scope, String name, bool isAsync, int poniter) {
    var newScope = scope.createFromParent(name, maxScopeDeep);

    if (isAsync) {
      var future = _doAsync(newScope, poniter);
      if (newScope.hasReturn) {
        scope.pushFrame(future);
      }
    } else {
      newScope.call(poniter);
      if (newScope.hasReturn) {
        scope.pushFrame(newScope.returnValue);
      }
    }
  }

  Future _doAsync(Scope scope, int poniter) {
    Completer completer = Completer();
    Future(() {
      scope.call(poniter);
      completer.complete(scope.returnValue);
    });
    return completer.future;
  }
}
