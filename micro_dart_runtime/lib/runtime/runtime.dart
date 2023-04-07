import 'dart:convert';
import 'dart:typed_data';

import '../ops/ops.dart';
import 'exception.dart';

/// 作用域
class Scope {
  final String name;

  Scope(this.name);

  /// 帧
  List<Object?> frame = [];

  /// 参数,用于存放作用域中的临时参数
  final Map<String, Object?> _params = <String, Object?>{};

  /// 帧指针
  int framePointer = 0;

  /// 返回值
  Object? returnValue;

  /// 获取临时参数
  Object? getParam(String key) {
    return _params[key];
  }

  /// 设置临时参数
  void setParam(String key, Object? value) {
    _params[key] = value;
  }

  /// 判断是否有临时参数
  bool hasParam(String name) {
    return _params.containsKey(name);
  }

  Object? operator [](int index) {
    return frame[index];
  }

  void operator []=(int index, Object? value) {
    if (index == frame.length) {
      frame.add(value);
    } else {
      frame[index] = value;
    }
  }

  Iterable<Object?> take(int count) {
    return frame.take(count);
  }

  void clean() {
    frame.clear();
    _params.clear();
    returnValue = null;
  }
}

//操作
abstract class Op {
  //运行操作
  void run(MicroRuntime runtime);
  //操作占用的字节长度
  int get opLen;

  List<int> get bytes;
}

//运行时
class MicroRuntime {
  /// 执行字节码
  late ByteData _data;

  ByteData get data {
    return _data;
  }

  /// 二进制文件读取偏移量，仅在加载时使用
  int fileOffset = 0;

  MicroRuntime(this._data);

  /// 操作集合
  final ops = <Op>[];

  /// 作用域集合
  final scopes = <Scope>[];

  /// 初始参数
  var initArgs = <String, Object?>{};

  /// 操作数指针
  int opPointer = -1;

  /// 声明指针
  var declarations = <int, Map<String, int>>{};

  /// 库索引
  var libraryIndexes = <String, int>{};

  /// 静态变量
  final constants = <Object>[];

  Object? returnValue;

  final callStack = <int>[0];

  final catchStack = <List<int>>[];

  Scope get scope {
    return scopes.last;
  }

  int addScope({String? name}) {
    int scopePosation = scopes.length;
    scopes.add(Scope(name ?? "#"));
    return scopePosation;
  }

  void removeScope() {
    var scope = scopes.removeLast();
    scope.clean();
  }

  /// 当前作用域帧指针
  int get framePointer {
    if (scopes.isEmpty) {
      return -1;
    }
    return scopes.last.framePointer;
  }

  /// 获取临时参数
  Object? getParam(String key) {
    int i = scopes.length - 1;
    while (i >= 0) {
      var obj = scopes[i].getParam(key);
      if (obj != null) {
        return obj;
      }
      i--;
    }
    return null;
  }

  /// 设置临时参数
  void setParam(String key, Object? value) {
    int i = scopes.length - 1;
    while (i >= 0) {
      if (scopes[i].hasParam(key)) {
        scopes[i].setParam(key, value);
        return;
      }
      i--;
    }
    scope.setParam(key, value);
  }

  //运行时初始化
  void init() {}

  dynamic executeLib(String importUri, String functionName,
      List<dynamic> positionalParams, Map<String, dynamic> namedParams) {
    try {
      //获取当前操作数指针
      opPointer = declarations[libraryIndexes[importUri]!]![functionName]!;

      for (int i = 0; i < positionalParams.length; i++) {
        initArgs["#$i"] = positionalParams[i];
      }
      namedParams.forEach((key, value) {
        initArgs[key] = value;
      });
      callStack.add(-1);
      catchStack.add([]);
      //执行方法
      while (true) {
        final op = ops[opPointer++];
        op.run(this);
      }
    } on ProgramExit catch (_) {
      return returnValue;
    } on RuntimeException catch (_) {
      rethrow;
    } on WrappedException catch (e) {
      throw e.exception;
    } catch (e, stk) {
      throw RuntimeException(this, e, stk);
    }
  }

  /// Setup bridged runtime functions and classes. Must be called before running
  /// the program and after registering all bridged functions and classes.
  void setup() {
    _load();
  }

  void _load() {
    final encodedToplevelDecs = Ops.readString(this);
    final encodedInstanceDecs = Ops.readString(this);
    //final encodedTypeNames = Ops.readString(this)();
    final encodedTypeTypes = Ops.readString(this);
    final encodedTypeIds = Ops.readString(this);
    final encodedBridgeLibraryMappings = Ops.readString(this);
    final encodedBridgeFuncMappings = Ops.readString(this);
    final encodedConstantPool = Ops.readString(this);
    //final encodedRuntimeTypes = Ops.readString(this);
    final encodedGlobalInitializers = Ops.readString(this);
    final encodedBridgeEnumMappings = Ops.readString(this);
    //final encodedOverrideMap = Ops.readString(this);

    declarations = (json.decode(encodedToplevelDecs).map((k, v) =>
            MapEntry(int.parse(k), (v as Map).cast<String, int>())) as Map)
        .cast<int, Map<String, int>>();

    final classes = (json.decode(encodedInstanceDecs).map((k, v) =>
            MapEntry(int.parse(k), (v as Map).cast<String, List>())) as Map)
        .cast<int, Map<String, List>>();

    // bridgeEnumMappings = (json.decode(encodedBridgeEnumMappings) as Map).map(
    //     (k, v) => MapEntry(
    //         int.parse(k),
    //         (v as Map)
    //             .map((key, value) =>
    //                 MapEntry(key, (value as Map).cast<String, int>()))
    //             .cast<String, Map<String, int>>()));

    // classes.forEach((file, $class) {
    //   declaredClasses[file] = {
    //     for (final decl in $class.entries)
    //       decl.key: EvalClass.fromJson(decl.value)
    //   };
    // });

    //typeNames = (json.decode(encodedTypeNames) as List).cast();
    // typeTypes = [
    //   for (final s in (json.decode(encodedTypeTypes) as List))
    //     (s as List).cast<int>().toSet()
    // ];

    // typeIds = (json.decode(encodedTypeIds) as Map).cast<String, Map>().map(
    //     (key, value) => MapEntry(int.parse(key), value.cast<String, int>()));

    libraryIndexes = (json.decode(encodedBridgeLibraryMappings) as Map).cast();

    // bridgeFuncMappings = (json.decode(encodedBridgeFuncMappings) as Map)
    //     .cast<String, Map>()
    //     .map((key, value) =>
    //         MapEntry(int.parse(key), value.cast<String, int>()));

    //constantPool.addAll((json.decode(encodedConstantPool) as List).cast());

    // runtimeTypes = [
    //   for (final s in (json.decode(encodedRuntimeTypes) as List))
    //     RuntimeTypeSet.fromJson(s as List)
    // ];

    // globalInitializers = [
    //   for (final i in json.decode(encodedGlobalInitializers) as List) i as int
    // ];

    // overrideMap = (json.decode(encodedOverrideMap) as Map)
    //     .cast<String, List>()
    //     .map((key, value) => MapEntry(key, OverrideSpec(value[0], value[1])));

    //_setupBridging();

    while (fileOffset < _data.lengthInBytes) {
      final opId = _data.getUint8(fileOffset);
      fileOffset++;
      if (opLoaders[opId] == null) {
        print("not found opId $opId");
        break;
      }
      ops.add(opLoaders[opId]!(this));
    }
  }

  void printOpcodes() {
    var i = 0;
    for (final oo in ops) {
      print('$i: $oo');
      i++;
    }
  }
}
