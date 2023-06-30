String main() {
  final a = const {"a": 0, "b": 1, "c": 2};
  var b1 = a.keys.join();
  var b2 = a.values.join();
  var b = "$b1$b2";
  print(b);
  return b;
}
