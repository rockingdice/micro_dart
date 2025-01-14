import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetThisSuper implements Op {
  static const OpSetThisSuper _instance = OpSetThisSuper._();

  const OpSetThisSuper._();

  factory OpSetThisSuper() => _instance;
  factory OpSetThisSuper.make() => _instance;

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opSetThisSuper];

  @override
  void run(Scope scope) {
    var superInstance = scope.popFrame() as Instance;
    //print("set this super: ${superInstance.type}");
    var instance = scope.getParam("#this") as Instance;
    if (superInstance is InstanceImpl) {
      if (instance is InstanceImpl) {
        instance.params.addAll(superInstance.params);
      } else if (instance is InstanceBridge) {
        instance.$child?.params.addAll(superInstance.params);
      }
    } else if (superInstance is InstanceBridge) {
      if (instance is InstanceImpl) {
        if (superInstance.$child != null) {
          instance.params.addAll(superInstance.$child!.params);
        }

        superInstance.$child = instance;
        superInstance.type = instance.type;
        scope.setScopeParam("#this", superInstance);
      } else if (instance is InstanceBridge) {
        superInstance.$child = instance.$child;
        superInstance.type = instance.$child!.type;
        scope.setScopeParam("#this", superInstance);
      }
    }
  }

  @override
  String toString() => "OpSetThisSuper()";
}
