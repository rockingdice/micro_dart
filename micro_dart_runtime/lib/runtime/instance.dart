class $String extends InstanceProxy<String> {
  $String(super.superInstance, super.value);

  @override
  Object? getProperty(String key) {
    // TODO: implement getProperty
    throw UnimplementedError();
  }

  @override
  bool hasProperty(String key) {
    // TODO: implement hasProperty
    throw UnimplementedError();
  }

  @override
  void setProperty(String key, Object value) {
    // TODO: implement setProperty
  }
}

abstract class MicroValue {
  Object? getProperty(String key);

  void setProperty(String key, Object value);

  bool hasProperty(String key);
}

abstract class InstanceProxy<T> extends Instance {
  final functions = <String, Function>{};
  final T _value;

  InstanceProxy(super.superInstance, this._value);

  T get value {
    return _value;
  }

  @override
  dynamic call(String functionName, List<dynamic>? positionalArguments,
      Map<String, dynamic>? namedParams) {
    return Function.apply(functions[functionName]!, positionalArguments,
        transToNamedParams(namedParams));
  }
}

abstract class Instance extends MicroValue {
  final Instance? superInstance;

  Instance(this.superInstance);

  dynamic call(String functionName, List<dynamic>? positionalArguments,
      Map<String, dynamic>? namedParams) {}
}

Map<Symbol, dynamic>? transToNamedParams(Map<String, dynamic>? namedParams) {
  if (namedParams == null) {
    return null;
  }
  final Map<Symbol, dynamic> maps = {};
  namedParams.forEach((key, value) {
    maps[Symbol(key)] = value;
  });
  return maps;
}
