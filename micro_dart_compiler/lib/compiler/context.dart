import 'package:kernel/ast.dart';
import 'package:kernel/core_types.dart';
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

  final Map<String, TypeRef> visibleTypes = {};

  //op操作集合
  final ops = <Op>[];

  final bool debug;

  final Component component;

  late OffsetTracker offsetTracker = OffsetTracker(this);

  late CoreTypes coreTypes = CoreTypes(component);

  MicroCompilerContext(this.component, this.debug);

  int lookupDeclarationIndex(String key, NamedNode node) {
    if (compileDeclarationIndexes.containsKey(key)) {
      return compileDeclarationIndexes[key]!;
    }
    compileDeclarations.add(node);
    var index = compileDeclarations.length - 1;
    compileDeclarationIndexes[key] = compileDeclarations.length - 1;
    return index;
  }

  TypeRef? lookupType(Class node) {
    String key = node.getNamedName();

    var type = visibleTypes[key];
    if (type != null) {
      return type;
    }
    var superClazz = node.superclass;
    String? superTypeKey;
    if (superClazz != null) {
      superTypeKey = superClazz.getNamedName();
    }
    if (compileDeclarationIndexes.containsKey(key)) {
      type = TypeRef(node.stringLibraryUri, node.name, false, superTypeKey);
    } else {
      type = TypeRef(node.stringLibraryUri, node.name, true, superTypeKey);
    }
    visibleTypes[key] = type;

    print("lookupType:$type");
    return type;
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
    //position += op.opLen;
    int p = ops.length - 1;
    if (debug) {
      print('$p: $op');
    }
    return p;
  }

  int rewriteOp(Op op, int index) {
    ops[index] = op;
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
