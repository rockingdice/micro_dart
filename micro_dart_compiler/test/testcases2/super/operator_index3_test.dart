class A {
  var indexField = new List<int?>.filled(2, null);
  operator []=(index, value) {
    indexField[index] = value;
  }
}

class B extends A {
  operator [](index) => indexField[index];
}

class C extends B {
  test() {
    super[0] = 42;
    assert(42 == super[0]);
    super[0] += 1;
    assert(43 == super[0]);
    super[0]++;
    assert(44 == super[0]);
    super[0] = 2;
    assert(2 == super[0]);
    super[0] += 1;
    assert(3 == super[0]);
    super[0]++;
    assert(4 == super[0]);
  }
}

main() {
  new C().test();
}
