import 'engine.dart';

abstract class Instance {
  final String libraryName;
  final String className;

  const Instance(this.libraryName, this.className);

  Object? getParam(String name);
  void setParam(String name, Object? value, {String? lName, String? cName});
  bool hasParam(String name);

  bool same(String lName, String cName) {
    return libraryName == lName && className == cName;
  }
}

class InstanceBridge extends Instance {
  final Object _target;
  final MicroDartEngine _interpreter;

  const InstanceBridge(
      this._interpreter, this._target, String libraryName, String className)
      : super(libraryName, className);
  @override
  Object? getParam(String name) {
    final key = "$libraryName@$className@$name";
    return _interpreter.externalFunctions[key]!(_target);
  }

  @override
  bool hasParam(String name) {
    return _interpreter.externalFunctions.containsKey(name);
  }

  @override
  void setParam(String name, Object? value, {String? lName, String? cName}) {
    final key = "$libraryName@$className@$name:set";
    _interpreter.externalFunctions[key]!(_target, value);
  }

  @override
  String toString() {
    return "InstanceBridge($libraryName,$className)";
  }
}

class InstanceImpl extends Instance {
  final Map<String, Object?> _params = {};

  Instance? _superInstance;

  InstanceImpl(String libraryName, String className)
      : super(libraryName, className);

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
  void setParam(String name, Object? value, {String? lName, String? cName}) {
    if (name == "#super") {
      _superInstance = value as Instance;
      return;
    }
    if (lName == null || cName == null || same(lName, cName)) {
      _params[name] = value;
    } else {
      return _superInstance?.setParam(name, value, lName: lName, cName: cName);
    }
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
    return "InstanceImpl($libraryName,$className,$_superInstance,$_params)";
  }
}
