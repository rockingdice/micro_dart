class A {
  A() : field = 0 {}
  int field;
  incrField() {
    field++;
  }

  timesX(v) {
    return v * 2;
  }
}

class B extends A {
  incrField() {
    field++;
    super.incrField();
  }

  timesX(v) {
    return super.timesX(v) * 3;
  }

  B() : super() {}
}

class SuperCallTest {
  static testMain() {
    var b = new B();
    b.incrField();
    assert(2 == b.field);
    assert(12 == b.timesX(2));
  }
}

main() {
  SuperCallTest.testMain();
}
