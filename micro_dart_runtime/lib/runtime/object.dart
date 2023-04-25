import 'scope.dart';

class Instance {
  final Scope _scope;

  Instance(this._scope);

  Object? getParam(String key) => _scope.getParam(key);
  void setParam(String key, Object? value) => _scope.setParam(key, value);
}
