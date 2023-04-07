//运行时
import 'dart:typed_data';

import 'runtime.dart';

/// 解释器,字节码转换成操作集合
/// 一个解释器可以执行多个运行时
class MicroInterpreter {
  /// 执行字节码
  late ByteData data;

  /// 操作集合
  final ops = <Op>[];

  /// 声明指针
  var declarations = <int, Map<String, int>>{};

  /// 库索引
  var libraryIndexes = <String, int>{};
}
