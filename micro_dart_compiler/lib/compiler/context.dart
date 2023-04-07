import 'package:kernel/ast.dart';
import 'package:kernel/core_types.dart';
import 'package:micro_dart_compiler/compiler/offset_tracker.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'constant_pool.dart';

class MicroCompilerContext {
  final List<NamedNode> declarations = [];

  //library自增序列
  int librarySeq = 0;
  final Map<String, int> libraryIndexes = <String, int>{};

  final Map<int, Map<String, int>> topLevelProceduresIndexes =
      <int, Map<String, int>>{};

  final Map<int, Map<String, int>> topLevelFieldIndexes =
      <int, Map<String, int>>{};

  final Map<int, Map<String, int>> topLevelConstructors =
      <int, Map<String, int>>{};

  final Map<int, Map<String, int>> topLevelRedirectingFactories =
      <int, Map<String, int>>{};

  final Map<int, Map<String, int>> classIndexes = <int, Map<String, int>>{};

  final Map<int, Map<String, Map<String, int>>> proceduresIndexes =
      <int, Map<String, Map<String, int>>>{};

  final Map<int, Map<String, Map<String, int>>> fieldIndexes =
      <int, Map<String, Map<String, int>>>{};

  /// <libraryIndex,<declarationName,opIndex>>
  final Map<int, Map<String, int>> topLevelDeclarationPositions =
      <int, Map<String, int>>{};

  final constantPool = ConstantPool<Object>();

  final CoreTypes coreTypes;

  //op操作集合
  final ops = <Op>[];

  //op占用的总字节长度
  int position = 0;

  int currentlibraryIndex = 0;

  late OffsetTracker offsetTracker = OffsetTracker(this);

  MicroCompilerContext(this.coreTypes);

  int lookupLibraryIndex(String importUri) {
    if (libraryIndexes.containsKey(importUri)) {
      return libraryIndexes[importUri]!;
    }
    libraryIndexes[importUri] = librarySeq;
    librarySeq++;
    return libraryIndexes[importUri]!;
  }

  int lookupDeclarationIndex(NamedNode node) {
    if (declarations.contains(node)) {
      return declarations.indexOf(node);
    }
    declarations.add(node);
    return declarations.indexOf(node);
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
