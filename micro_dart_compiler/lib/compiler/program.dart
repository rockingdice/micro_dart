import 'dart:convert';

import 'dart:typed_data';
import 'package:kernel/ast.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class Program {
  final Component? component;

  /// Global bytecode offsets of the program's top-level declarations.
  final Map<String, int> rumtimeDeclarationOpIndexes;

  final List<Op> ops;
  final List<Object> constantPool;

  final Map<String, TypeRef> runtimeTypes;

  Program(
      {required this.rumtimeDeclarationOpIndexes,
      required this.runtimeTypes,
      required this.ops,
      required this.constantPool,
      this.component});

  Uint8List write() {
    final builder = BytesBuilder(copy: false);

    _writeMetaBlock(builder, rumtimeDeclarationOpIndexes);
    _writeMetaBlock(builder, constantPool);
    _writeMetaBlock(
        builder,
        runtimeTypes
            .map<String, List>((key, value) => MapEntry(key, value.toList())));

    for (final op in ops) {
      builder.add(Ops.opcodeFrom(op));
    }

    return builder.takeBytes();
  }

  void _writeMetaBlock(BytesBuilder builder, Object block) {
    final encodedBlock = utf8.encode(json.encode(block));
    builder.add(Ops.i32b(encodedBlock.length));
    builder.add(encodedBlock);
  }
}
