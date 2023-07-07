class A {}

extension Aext on A {
  String test() {
    print("test");
    return "test";
  }
}

String main() {
  var a = A();
  return a.test();
}
