import 'package:micro_dart_runtime/runtime/engine.dart';

import 'scope.dart';
import 'type.dart';

abstract class Instance {
  CType get type;

  set type(CType type);

  dynamic getParam(Scope scope, String name);
  void setParam(Scope scope, String name, dynamic value);
  bool hasParam(Scope scope, String name);
}

class InstanceImpl extends Instance {
  final Map<String, dynamic> params = {};

  @override
  CType type;

  MicroDartEngine engine;

  InstanceImpl(this.engine, this.type);

  @override
  dynamic getParam(Scope scope, String name) {
    return params[name];
  }

  @override
  void setParam(Scope scope, String name, dynamic value) {
    params[name] = value;
  }

  @override
  bool hasParam(Scope scope, String name) {
    if (params.containsKey(name)) {
      return true;
    }
    return false;
  }

  @override
  String toString() {
    return "InstanceImpl($type,$params)";
  }
}
