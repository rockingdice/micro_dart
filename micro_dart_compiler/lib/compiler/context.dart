import 'package:kernel/ast.dart';
import 'package:micro_dart_compiler/compiler/offset_tracker.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';
import 'package:micro_dart_runtime/constant_pool.dart';
import 'ast/ast.dart';
import 'namer.dart';

class MicroCompilerContext {
  final List<NamedNode> compileDeclarations = [];

  final List<int> compileFieldIndexes = [];
  final List<int> compileClassIndexes = [];

  final Map<CallRef, int> compileDeclarationIndexes = <CallRef, int>{};
  final Map<CallRef, int> rumtimeDeclarationOpIndexes = {};

  final constantPool = ConstantPool();

  final Map<ClassRef, CType> visibleTypes = {};

  //op操作集合
  final ops = <Op>[];

  final bool debug;

  final Component component;

  late OffsetTracker offsetTracker = OffsetTracker(this);

  final Namer<VariableDeclaration> variableNamer =
      NormalNamer<VariableDeclaration>('#v');

  final Namer<LabeledStatement> labeledNamer =
      NormalNamer<LabeledStatement>('#l');

  final Namer<Node> constantNamer = NormalNamer<Node>('#c');

  MicroCompilerContext(this.component, this.debug);

  int lookupDeclarationIndex(CallRef key, NamedNode node) {
    if (compileDeclarationIndexes.containsKey(key)) {
      return compileDeclarationIndexes[key]!;
    }
    compileDeclarations.add(node);
    var index = compileDeclarations.length - 1;
    compileDeclarationIndexes[key] = index;
    return index;
  }

  CType lookupType(Class node) {
    var ref = node.getClassRef();

    var type = visibleTypes[ref];
    if (type != null) {
      return type;
    }
    var superClazz = node.superclass;
    var mixinClazz = node.mixedInClass;
    ClassRef? superType;
    ClassRef? mixinType;
    if (superClazz != null) {
      superType = superClazz.getClassRef();
    }
    if (mixinClazz != null) {
      mixinType = mixinClazz.getClassRef();
    }
    bool isExternal = true;
    if (compileDeclarationIndexes.containsKey(ref)) {
      isExternal = false;
    }

    List<String> getters = [];
    List<String> setters = [];
    List<String> constructors = [];
    node.fields.forEach((field) {
      String name = field.name.text;
      getters.add(name);
      setters.add(name);
    });
    node.constructors.forEach((constructor) {
      String name = constructor.name.text;
      constructors.add(name);
    });
    node.redirectingFactories.forEach((redirectingFactory) {
      String name = redirectingFactory.name.text;
      constructors.add(name);
    });
    node.procedures.forEach((procedure) {
      if (procedure.isAbstract || procedure.isStatic) {
        return;
      }
      String name = procedure.name.text;
      if (procedure.isSetter) {
        setters.add(name);
      } else {
        getters.add(name);
      }
    });

    type = CType(
      ref,
      superType: superType,
      mixinType: mixinType,
      implementTypes: node.implementedTypes
          .map<ClassRef>((e) => e.classNode.getClassRef())
          .toList(),
      getters: getters,
      setters: setters,
      constructors: constructors,
      isExternal: isExternal,
      isAnonymousMixin: node.isAnonymousMixin,
      isMixinDeclaration: node.isMixinDeclaration,
    );

    visibleTypes[ref] = type;
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
    int p = ops.length - 1;

    return p;
  }

  int rewriteOp(Op op, int index) {
    ops[index] = op;
    return index;
  }

  int callStart(CallRef ref) {
    final position = ops.length;
    var op = OpCallStart.make(ref);
    pushOp(op);
    return position;
  }

  int callEnd() {
    final position = ops.length;
    var op = OpCallEnd.make();
    pushOp(op);
    return position;
  }

  void startCompileNode(NamedNode node) {
    if (debug) {
      print("start compile: ${node.getCallRef()}");
    }
  }

  void endCompileNode(NamedNode node) {
    if (debug) {
      print("end compile: ${node.getCallRef()}");
    }
  }
}
