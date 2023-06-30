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

dynamic main() {
  dynamic a = B();
  dynamic b = a.func2();
  b.func3 = 4;
  dynamic c = b.func3;
  dynamic d = b.func4;
  return c + d + a.func1();
}
