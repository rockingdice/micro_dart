extension Aext on Deprecated {
  String test() {
    print("test");
    return "test";
  }
}

String main() {
  var a = Deprecated("d");
  return a.test();
}
