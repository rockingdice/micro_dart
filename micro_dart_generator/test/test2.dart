void main() {
  var a = A();

  var b = a.add;
  Function.apply(b<Object>, ["message"]);
  print(a.maps);
}

class A {
  final Map<Type, String> maps = {};

  void add<T>(String s) {
    maps[T] = s;
  }
}
