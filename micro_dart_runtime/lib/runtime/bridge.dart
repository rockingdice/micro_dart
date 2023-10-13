import 'instance.dart';
import 'scope.dart';
import 'type.dart';

abstract mixin class InstanceBridge<T> implements Instance {
  InstanceImpl? $child;

  CType get bridgeType;

  T? target;

  @override
  late CType type = bridgeType;

  late Scope scope =
      Scope($child!.engine, bridgeType.ref.callName, true, false);

  Map<String, Function> get superGetters;

  @override
  dynamic getParam(Scope _, String name) {
    if ($child != null && type.hasParam(name, scope.engine)) {
      return $child?.getParam(scope, name);
    }
    //这里需要考虑是父类属性的问题
    return scope.engine.getParamExternal(scope, type.ref, name, this);
  }

  @override
  bool hasParam(Scope _, String name) {
    if ($child != null && type.hasParam(name, scope.engine)) {
      return $child!.hasParam(scope, name);
    }
    return scope.engine.hasExternalParam(type.ref, name, false);
  }

  @override
  void setParam(Scope _, String name, dynamic value) {
    if ($child != null && type.hasParam(name, scope.engine)) {
      $child?.setParam(scope, name, value);
      return;
    }
    //这里需要考虑是父类属性的问题
    scope.engine.setParamExternal(scope, type.ref, name, this, value);
  }
}
