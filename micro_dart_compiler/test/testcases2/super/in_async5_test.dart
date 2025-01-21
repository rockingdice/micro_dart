class A {
  Future<int> get foo async => 42;
}

class B extends A {
  Future<int> bar() async {
    var x = await super.foo;
    return x + 1;
  }
}

main() async {
  assert(43 == await new B().bar());
}
