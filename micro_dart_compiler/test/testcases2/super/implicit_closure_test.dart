class BaseClass {
  BaseClass(this._i) {}
  int foo() {
    return _i;
  }

  int _i;
}

class DerivedClass extends BaseClass {
  DerivedClass(this._y, int j) : super(j) {}
  int foo() {
    return _y;
  }

  getSuper() {
    return super.foo;
  }

  int _y;
}

class SuperImplicitClosureTest {
  static void testMain() {
    DerivedClass obj = new DerivedClass(20, 10);

    var ib = obj.foo;
    assert(obj._y == ib());

    ib = obj.getSuper();
    assert(obj._i == ib());
  }
}

main() {
  SuperImplicitClosureTest.testMain();
}
