abstract class Namer<T> {
  int index = 0;
  final Map<T, String> map = <T, String>{};

  String getName(T key) => map.putIfAbsent(key, () => '$prefix${++index}');

  String get prefix;
}

class NormalNamer<T> extends Namer<T> {
  @override
  final String prefix;

  NormalNamer(this.prefix);
}
