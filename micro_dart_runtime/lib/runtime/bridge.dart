import 'instance.dart';
import 'scope.dart';
import 'type.dart';

mixin InstanceBridge implements Instance {
  InstanceImpl? child;

  TypeRef get bridgeType;

  @override
  late TypeRef type = bridgeType;

  @override
  Object? getParam(Scope scope, String name) {
    if (child != null && type.hasParam(name, scope.engine)) {
      return child?.getParam(scope, name);
    }
    var key = scope.engine.getKeyByType(type, name);
    //这里需要考虑是父类属性的问题
    return scope.engine.externalFunctions[key]!(scope, this);
  }

  @override
  bool hasParam(Scope scope, String name) {
    if (child != null && type.hasParam(name, scope.engine)) {
      return child!.hasParam(scope, name);
    }
    var key = scope.engine.getKeyByType(type, name);
    print("hasParam $name");
    return scope.engine.externalFunctions.containsKey(key);
  }

  @override
  void setParam(Scope scope, String name, Object? value) {
    if (child != null && type.hasParam(name, scope.engine)) {
      child?.setParam(scope, name, value);
      return;
    }
    final key = scope.engine.getKeyByType(type, name, isSetter: true);
    //这里需要考虑是父类属性的问题

    scope.engine.externalFunctions[key]!(this, value);
  }

  @override
  String toString() {
    return "InstanceBridge($type,$child)";
  }
}
