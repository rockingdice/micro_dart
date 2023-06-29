import 'scope.dart';
import 'type.dart';

abstract class Instance {
  TypeRef get type;
  set type(TypeRef type);

  Object? getParam(Scope scope, String name);
  void setParam(Scope scope, String name, Object? value);
  bool hasParam(Scope scope, String name);
}

class InstanceImpl extends Instance {
  final Map<String, Object?> params = {};

  @override
  TypeRef type;

  InstanceImpl(this.type);

  @override
  Object? getParam(Scope scope, String name) {
    if (params.containsKey(name)) {
      return params[name];
    }
    return null;
  }

  @override
  void setParam(Scope scope, String name, Object? value) {
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
