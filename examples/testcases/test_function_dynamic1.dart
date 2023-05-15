abstract class A {
  A();
  int func1() {
    return 1;
  }
}

class B extends A {
  B();

  int _i = 3;
  A func2() {
    return B();
  }

  int get func3 {
    return _i;
  }

  set func3(c) {
    _i = c;
  }

  int func4() {
    return 4;
  }
}
