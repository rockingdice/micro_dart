var expected;

class A {
  set length(a) {
    assert(expected == a);
  }

  get length => 41;
}

class B extends A {
  test() {
    expected = 42;
    super.length = 42;
    expected = 42;
    super.length += 1;
    expected = 42;
    assert(42 == ++super.length);
    expected = 40;
    assert(40 == --super.length);
    expected = 42;
    assert(41 == super.length++);
    expected = 40;
    assert(41 == super.length--);
    assert(41 == super.length);
  }
}

main() {
  // Ensures the list class is instantiated.
  print([]);
  new B().test();
}
