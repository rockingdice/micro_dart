class A {}

extension Aext on A {
  String test() {
    print("test");
    return "test";
  }
}

bool main() {
  var a = A();
  var r = a.test();
  return r == "test" ? true : false;
}
