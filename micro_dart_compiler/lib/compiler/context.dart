import 'package:kernel/ast.dart';
import 'package:micro_dart_compiler/compiler/offset_tracker.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'constant_pool.dart';
import 'ast/ast.dart';

class MicroCompilerContext {
  final List<NamedNode> compileDeclarations = [];

  final Map<String, int> compileDeclarationIndexes = <String, int>{};
  final List<int> compileFieldIndexes = [];
  final List<int> compileClassIndexes = [];

  final Map<String, int> rumtimeDeclarationOpIndexes = {};

  final constantPool = ConstantPool<Object>();

  final List<TypeRef> visibleTypes = [];

  final Map<String, int> visibleTypeIndex = {};

  //op操作集合
  final ops = <Op>[];

  //op占用的总字节长度
  int position = 0;

  final bool debug;

  late OffsetTracker offsetTracker = OffsetTracker(this);

  MicroCompilerContext(this.debug);

  int lookupDeclarationIndex(String key, NamedNode node) {
    if (compileDeclarationIndexes.containsKey(key)) {
      return compileDeclarationIndexes[key]!;
    }
    compileDeclarations.add(node);
    var index = compileDeclarations.length - 1;
    compileDeclarationIndexes[key] = compileDeclarations.length - 1;
    return index;
  }

  int? lookupType(Class node) {
    String key = node.getNamedName();

    var index = visibleTypeIndex[key];
    if (index != null) {
      return index;
    }
    TypeRef? type;
    if (compileDeclarationIndexes.containsKey(key)) {
      type = TypeRef(node.stringLibraryUri, node.name, false);
    } else {
      type = TypeRef(node.stringLibraryUri, node.name, true);
    }
    visibleTypes.add(type);
    visibleTypeIndex[key] = visibleTypes.length - 1;
    var superClazz = node.superclass;
    if (superClazz != null) {
      type.superTypeIndex = lookupType(superClazz);
    }
    print("lookupType:$type");
    return visibleTypeIndex[key];
  }

  void setupTypes() {
    //设置类Type
    compileClassIndexes.forEach((index) {
      var clazz = compileDeclarations[index] as Class;
      lookupType(clazz);
    });
  }

  int pushOp(Op op) {
    ops.add(op);
    position += op.opLen;
    int p = ops.length - 1;
    if (debug) {
      print('$p: $op');
    }
    return p;
  }

  int rewriteOp(Op op, int index) {
    var oldOp = ops[index];
    position -= oldOp.opLen;
    ops[index] = op;
    position += op.opLen;
    return index;
  }

  int addScope(String name, int fileOffset) {
    final position = ops.length;
    var op = PushScope.make(fileOffset, name);
    pushOp(op);
    return position;
  }

  int removeScope() {
    final position = ops.length;
    var op = PopScope.make();
    pushOp(op);
    return position;
  }

  void printCompileNode(Node node) {
    if (debug) {
      print("start compile: ${node.runtimeType.toString()}");
    }
  }
}
