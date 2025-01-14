import 'dart:convert';

import 'dart:typed_data';
import 'package:kernel/ast.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class Program {
  final Component? component;

  /// Global bytecode offsets of the program's top-level declarations.
  final Map<CallRef, int> runtimeDeclarationOpIndexes;

  final List<Op> ops;
  final ConstantPool constantPool;

  final Map<ClassRef, CType> runtimeTypes;

  final Set<CallRef> externalTypes;

  Program(
      {required this.runtimeDeclarationOpIndexes,
      required this.runtimeTypes,
      required this.externalTypes,
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
        runtimeDeclarationOpIndexes.keys
            .map<List>((e) => e.toList(constantPool))
            .toList());
    _writeMetaBlock(builder, runtimeDeclarationOpIndexes.values.toList());

    _writeMetaBlock(builder, constantPool.pool);

    builder.add(opBuilder.takeBytes());

    return builder.takeBytes();
  }

  void _writeMetaBlock(BytesBuilder builder, Object block) {
    final encodedBlock = utf8.encode(json.encode(block));
    builder.add(Ops.i32b(encodedBlock.length));
    builder.add(encodedBlock);
  }

  String getExternalCallMethods() {
    Map<String, dynamic> externalJson = {};
    externalTypes.forEach((element) {
      var library =
          externalJson.putIfAbsent(element.library, () => <String, dynamic>{});
      if (element.isStatic) {
        if (element.isSetter) {
          List<String> setters =
              library.putIfAbsent("setters", () => <String>[]);
          if (!setters.contains(element.callName)) {
            setters.add(element.callName);
          }
        } else {
          List<String> getters =
              library.putIfAbsent("getters", () => <String>[]);
          if (!getters.contains(element.name)) {
            getters.add(element.name);
          }
        }
      } else {
        var classes = library.putIfAbsent("classes", () => <String, dynamic>{});
        classes =
            classes.putIfAbsent(element.className, () => <String, dynamic>{});
        if (element.isSetter) {
          List<String> setters =
              classes.putIfAbsent("setters", () => <String>[]);
          if (!setters.contains(element.name)) {
            setters.add(element.name);
          }
        } else {
          List<String> getters =
              classes.putIfAbsent("getters", () => <String>[]);
          if (!getters.contains(element.name)) {
            getters.add(element.name);
          }
        }
      }
    });
    return json.encode(externalJson);
  }

  void printOpcodes() {
    var i = 0;
    for (final oo in ops) {
      print('$i: $oo');
      i++;
    }
  }
}
