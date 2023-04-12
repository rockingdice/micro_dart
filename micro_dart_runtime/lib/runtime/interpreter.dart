import 'dart:convert';
import 'dart:typed_data';

import 'package:micro_dart_runtime/micro_dart_runtime.dart';

/// 解释器,字节码转换成操作集合
/// 一个解释器可以执行多个运行时
class MicroDartInterpreter {
  /// 执行字节码
  final ByteData _data;

  /// 操作集合
  final ops = <Op>[];

  /// 声明指针
  final declarations = <String, int>{};

  /// 静态变量
  ///final constants = <Object>[];

  /// 二进制文件读取偏移量，仅在加载时使用
  int _fileOffset = 0;

  /// 全局作用域
  final Scope rootScope = Scope("<root>");

  MicroDartInterpreter._(this._data);

  factory MicroDartInterpreter.fromData(ByteData data) {
    var interpreter = MicroDartInterpreter._(data).._load();

    return interpreter;
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

  @pragma('vm:always-inline')
  int readInt16() {
    final i = _data.getInt16(_fileOffset);
    _fileOffset += 2;
    return i;
  }

  void _load() {
    ///加载全局声明
    declarations.addAll(json.decode(readString()).cast<String, int>());

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
    return MicroRuntime(this, rootScope: rootScope);
  }
}
