import 'package:micro_dart_runtime/micro_dart_runtime.dart';

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
  dynamic getField(Scope _, String name) {
    if ($child != null && type.hasParam(name, scope.engine)) {
      return $child?.getField(scope, name);
    }
    //如果内部类都没找到，应该找外部类

    var function = ExternalMirror.findClassMemberGetter(
        bridgeType.ref.className, name);
    if (function == null) {
      throw Exception(
          "not found external function: ${bridgeType.ref.className} $name");
    }

    final Map<String, dynamic> namedArguments = {};
    final List<dynamic> positionalArguments = [];

    final instance = Function.apply(
        // isGlobalFunc ? function(scope) :
        function(scope, this),
        positionalArguments,
        namedArguments.map<Symbol, dynamic>(
            (key, value) => MapEntry(Symbol(key), value)));
    return instance;
    //这里需要考虑是父类属性的问题
    // return scope.engine.getMemberParamExternal(scope, type.ref, name, this);
  }

  @override
  bool hasField(Scope _, String name) {
    if ($child != null && type.hasParam(name, scope.engine)) {
      return $child!.hasField(scope, name);
    }
    return scope.engine.hasExternalParam(type.ref, name, false);
  }

  @override
  void setField(Scope _, String name, dynamic value) {
    if ($child != null && type.hasParam(name, scope.engine)) {
      $child?.setField(scope, name, value);
      return;
    }

    //外部方法
    var function =
        ExternalMirror.findClassMemberSetter(bridgeType.ref.className, name);
    if (function == null) {
      throw Exception(
          "not found external function: ${bridgeType.ref.className} $name");
    }

    final Map<String, dynamic> namedArguments = {};
    final List<dynamic> positionalArguments = [];

    Function.apply(
        // isGlobalFunc ? function(scope) :
        function(scope, this),
        [value],
        namedArguments.map<Symbol, dynamic>(
            (key, value) => MapEntry(Symbol(key), value)));

    //这里需要考虑是父类属性的问题
    // scope.engine.setMemberParamExternal(scope, type.ref, name, this, value);
  }
}
