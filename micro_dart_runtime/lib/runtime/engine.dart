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
  final List<TypeRef> types = <TypeRef>[];
  final Map<String, int> typeIndexes = <String, int>{};

  /// 二进制文件读取偏移量，仅在加载时使用
  int _fileOffset = 0;

  /// 全局作用域
  final Map<String, Object?> globals = {};

  //外部全局方法调用
  final Map<String, Function> externalFunctions = {};

  MicroDartEngine._(this._data);

  factory MicroDartEngine.fromData(ByteData data) {
    return MicroDartEngine._(data).._load();
  }

  void addExternalFunctions(Map<String, Function> functions) {
    externalFunctions.addAll(functions);
  }

  @pragma('vm:always-inline')
  int readUint8() {
    final i = _data.getUint8(_fileOffset);
    _fileOffset += 1;
    return i;
  }

  @pragma('vm:always-inline')
  int readInt32() {
    final i = _data.getInt32(_fileOffset);
    _fileOffset += 4;
    return i;
  }

  @pragma('vm:always-inline')
  double readFloat32() {
    final i = _data.getFloat32(_fileOffset);
    _fileOffset += 4;
    return i;
  }

  @pragma('vm:always-inline')
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

  @pragma('vm:always-inline')
  int readInt16() {
    final i = _data.getInt16(_fileOffset);
    _fileOffset += 2;
    return i;
  }

  void _load() {
    ///加载全局声明
    declarations.addAll(json.decode(readString()).cast<String, int>());

    ///加载静态变量
    constants.addAll((json.decode(readString()) as List).cast());

    types.addAll((json.decode(readString()) as List)
        .map((e) => TypeRef.fromList(e))
        .toList());

    typeIndexes.addAll(json.decode(readString()).cast<String, int>());

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

  MicroRuntime createRuntime() {
    return MicroRuntime(this);
  }
}
