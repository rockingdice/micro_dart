class A {
  var map = new Map<int, int>();
  operator []=(a, b) {
    map[a] = b;
  }

  operator [](a) => map[a];
}

class B extends A {
  foo() {
    super[4] = 42;
    assert(42 == super[4]);
    super[4] += 5;
    assert(47 == super[4]);
  }
}

main() {
  new B().foo();
}
