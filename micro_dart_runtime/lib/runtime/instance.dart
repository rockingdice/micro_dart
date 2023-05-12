import 'engine.dart';
import 'type.dart';

abstract class Instance {
  final TypeRef type;

  const Instance(this.type);

  Object? getParam(String name);
  void setParam(String name, Object? value);
  bool hasParam(String name);

  bool same(TypeRef? stype) {
    return type.libraryName == stype?.libraryName &&
        type.className == stype?.className;
  }
}

class InstanceBridge extends Instance {
  final Object target;
  final MicroDartEngine _interpreter;

  const InstanceBridge(this._interpreter, this.target, TypeRef type)
      : super(type);
  @override
  Object? getParam(String name) {
    var key = _interpreter.getKeyByType(type, name);
    //这里需要考虑是父类属性的问题
    return _interpreter.externalFunctions[key]!(target);
  }

  @override
  bool hasParam(String name) {
    return _interpreter.externalFunctions.containsKey(name);
  }

  @override
  void setParam(String name, Object? value) {
    final key = _interpreter.getKeyByType(type, name);
    //这里需要考虑是父类属性的问题
    print("key:$key");
    _interpreter.externalFunctions[key]!(target, value);
  }

  @override
  String toString() {
    return "InstanceBridge($target)";
  }
}

class InstanceImpl extends Instance {
  final Map<String, Object?> _params = {};

  Instance? _superInstance;

  InstanceImpl(super.type);

  @override
  Object? getParam(String name) {
    if (name == "#super") {
      return _superInstance;
    }

    if (_params.containsKey(name)) {
      return _params[name];
    }
    return _superInstance?.getParam(name);
  }

  @override
  void setParam(String name, Object? value) {
    if (name == "#super") {
      _superInstance = value as Instance;
      return;
    }
    _params[name] = value;
  }

  @override
  bool hasParam(String name) {
    if (_params.containsKey(name)) {
      return true;
    }
    return _superInstance?.hasParam(name) ?? false;
  }

  @override
  String toString() {
    return "InstanceImpl($type,$_superInstance,$_params)";
  }
}
