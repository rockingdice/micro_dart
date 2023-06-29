import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetThisSuper implements Op {
  OpSetThisSuper(MicroDartEngine interpreter);

  OpSetThisSuper.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opSetThisSuper];

  @override
  void run(Scope scope) {
    var superInstance = scope.popFrame() as Instance;
    var instance = scope.getParam("#this") as Instance;
    if (superInstance is InstanceImpl) {
      if (instance is InstanceImpl) {
        instance.params.addAll(superInstance.params);
      } else if (instance is InstanceBridge) {
        instance.child?.params.addAll(superInstance.params);
      }
    } else if (superInstance is InstanceBridge) {
      if (instance is InstanceImpl) {
        if (superInstance.child != null) {
          instance.params.addAll(superInstance.child!.params);
        }

        superInstance.child = instance;
        superInstance.type = instance.type;
        scope.setScopeParam("#this", superInstance);
      } else if (instance is InstanceBridge) {
        superInstance.child = instance.child;
        superInstance.type = instance.child!.type;
        scope.setScopeParam("#this", superInstance);
      }
    }
  }

  @override
  String toString() => "OpSetThisSuper()";
}
