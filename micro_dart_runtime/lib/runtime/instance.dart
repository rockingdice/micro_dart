import 'package:micro_dart_runtime/runtime/engine.dart';

import 'scope.dart';
import 'type.dart';

abstract class Instance {
  CType get type;

  set type(CType type);

  dynamic getField(Scope scope, String name);
  void setField(Scope scope, String name, dynamic value);
  bool hasField(Scope scope, String name);
}

class InstanceImpl extends Instance {
  final Map<String, dynamic> params = {};

  @override
  CType type;

  MicroDartEngine engine;

  InstanceImpl(this.engine, this.type);

  @override
  dynamic getField(Scope scope, String name) {
    return params[name];
  }

  @override
  void setField(Scope scope, String name, dynamic value) {
    params[name] = value;
  }

  @override
  bool hasField(Scope scope, String name) {
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
