import 'package:micro_dart_runtime/runtime/engine.dart';

import 'scope.dart';
import 'type.dart';

abstract class Instance {
  TypeRef get type;
  set type(TypeRef type);

  dynamic getParam(Scope scope, String name);
  void setParam(Scope scope, String name, dynamic value);
  bool hasParam(Scope scope, String name);
}

class InstanceImpl extends Instance {
  final Map<String, dynamic> params = {};

  @override
  TypeRef type;

  MicroDartEngine engine;

  InstanceImpl(this.engine, this.type);

  @override
  dynamic getParam(Scope scope, String name) {
    if (params.containsKey(name)) {
      return params[name];
    }
    return null;
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

  bool same(TypeRef? stype) {
    return type.libraryName == stype?.libraryName &&
        type.className == stype?.className;
  }
}
