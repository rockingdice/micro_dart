abstract class Namer<T> {
  int index = 0;
  final Map<T, Name> map = <T, Name>{};

  Name getName(T key) => map.putIfAbsent(key, () => Name('$prefix${++index}'));

  String get prefix;

  void setParam(T key, String name, Object? value) {
    getName(key).params[name] = value;
  }

  Object? getParam(T key, String name) {
    return getName(key).params[name];
  }
}

class Name {
  final Map<String, Object?> params = {};
  final String text;

  Name(this.text);
}

class NormalNamer<T> extends Namer<T> {
  @override
  final String prefix;

  NormalNamer(this.prefix);
}
