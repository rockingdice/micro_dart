import 'package:kernel/ast.dart';
import 'package:kernel/core_types.dart';
import 'package:micro_dart_compiler/compiler/offset_tracker.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'constant_pool.dart';
import 'ast/ast.dart';
import 'namer.dart';

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

  final Namer<VariableDeclaration> variableNamer =
      NormalNamer<VariableDeclaration>('#v');

  final Namer<LabeledStatement> labeledNamer =
      NormalNamer<LabeledStatement>('#l');

  final Namer<Constant> constantNamer = NormalNamer<Constant>('#c');

  MicroCompilerContext(this.component, this.debug);

  int lookupDeclarationIndex(String key, NamedNode node) {
    if (compileDeclarationIndexes.containsKey(key)) {
      return compileDeclarationIndexes[key]!;
    }
    compileDeclarations.add(node);
    var index = compileDeclarations.length - 1;
    compileDeclarationIndexes[key] = index;
    return index;
  }

  TypeRef lookupType(Class node) {
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
    bool isExternal = true;
    if (compileDeclarationIndexes.containsKey(key)) {
      isExternal = false;
    }
    type = TypeRef(node.stringLibraryUri, node.name, isExternal,
        superTypeKey: superTypeKey,
        isAnonymousMixin: node.isAnonymousMixin,
        isMixinDeclaration: node.isMixinDeclaration,
        methods: getClassMethods(node),
        implementTypes: node.implementedTypes
            .map<String>((e) => e.classNode.getNamedName())
            .toList(),
        mixinTypeKey: node.mixedInClass?.getNamedName());
    visibleTypes[key] = type;
    return type;
  }

  List<String> getClassMethods(Class clazz) {
    List<String> methods = [];
    clazz.fields.forEach((field) {
      String name = field.getNamedName();
      methods.add(name);
    });
    clazz.constructors.forEach((constructor) {
      String name = constructor.getNamedName();
      methods.add(name);
    });
    clazz.redirectingFactories.forEach((redirectingFactory) {
      String name = redirectingFactory.getNamedName();
      methods.add(name);
    });
    clazz.procedures.forEach((procedure) {
      if (procedure.isAbstract) {
        return;
      }
      String name = procedure.getNamedName();
      methods.add(name);
    });

    return methods;
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

  int callStart(String name) {
    final position = ops.length;
    var op = OpCallStart.make(name);
    pushOp(op);
    return position;
  }

  int callEnd() {
    final position = ops.length;
    var op = OpCallEnd.make();
    pushOp(op);
    return position;
  }

  void printCompileNode(Node node) {
    if (debug) {
      print("start compile: ${node.runtimeType.toString()}");
    }
  }
}
