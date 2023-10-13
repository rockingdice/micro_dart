import 'dart:convert';

import 'dart:typed_data';
import 'package:kernel/ast.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class Program {
  final Component? component;

  /// Global bytecode offsets of the program's top-level declarations.
  final Map<CallRef, int> rumtimeDeclarationOpIndexes;

  final List<Op> ops;
  final ConstantPool constantPool;

  final Map<ClassRef, CType> runtimeTypes;

  Program(
      {required this.rumtimeDeclarationOpIndexes,
      required this.runtimeTypes,
      required this.ops,
      required this.constantPool,
      this.component});

  Uint8List write() {
    final builder = BytesBuilder(copy: false);

    final opBuilder = BytesBuilder(copy: false);

    for (final op in ops) {
      opBuilder.add(Ops.opcodeFrom(op, constantPool));
    }

    _writeMetaBlock(
        builder,
        runtimeTypes
            .map<ClassRef, List>(
                (key, value) => MapEntry(key, value.toList(constantPool)))
            .values
            .toList());

    _writeMetaBlock(
        builder,
        rumtimeDeclarationOpIndexes.keys
            .map<List>((e) => e.toList(constantPool))
            .toList());
    _writeMetaBlock(builder, rumtimeDeclarationOpIndexes.values.toList());

    _writeMetaBlock(builder, constantPool.pool);

    builder.add(opBuilder.takeBytes());

    return builder.takeBytes();
  }

  void _writeMetaBlock(BytesBuilder builder, Object block) {
    final encodedBlock = utf8.encode(json.encode(block));
    builder.add(Ops.i32b(encodedBlock.length));
    builder.add(encodedBlock);
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
}
