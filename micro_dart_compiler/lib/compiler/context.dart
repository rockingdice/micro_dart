import 'package:kernel/ast.dart';
import 'package:kernel/core_types.dart';
import 'package:micro_dart_compiler/compiler/offset_tracker.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'namednode.dart';
import 'constant_pool.dart';

class MicroCompilerContext {
  final List<NamedNode> compileDeclarations = [];

  final Map<String, int> compileDeclarationIndexes = <String, int>{};

  final Map<String, int> rumtimetopLevelDeclarationOpIndex = {};

  //library自增序列

  final constantPool = ConstantPool<Object>();

  final CoreTypes coreTypes;

  //op操作集合
  final ops = <Op>[];

  //op占用的总字节长度
  int position = 0;

  int currentlibraryIndex = 0;

  late OffsetTracker offsetTracker = OffsetTracker(this);

  MicroCompilerContext(this.coreTypes);

  int lookupDeclarationIndex(NamedNode node) {
    String name = node.getNamedName();
    if (compileDeclarationIndexes.containsKey(name)) {
      return compileDeclarationIndexes[name]!;
    }
    compileDeclarations.add(node);
    var index = compileDeclarations.length - 1;
    compileDeclarationIndexes[name] = compileDeclarations.length - 1;
    return index;
  }

  int pushOp(Op op) {
    ops.add(op);
    position += op.opLen;
    return ops.length - 1;
  }

  int addScope(String name, int fileOffset) {
    final position = ops.length;
    var op = PushScope.make(currentlibraryIndex, fileOffset, name);
    pushOp(op);
    return position;
  }

  int removeScope() {
    final position = ops.length;
    var op = PopScope.make();
    pushOp(op);
    return position;
  }
}
