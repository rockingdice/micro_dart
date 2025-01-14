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

  @override
  String toString() {
    return "this is b to string";
  }
}

dynamic g1 = "${0} s dynamic";

dynamic get g2 {
  return g1;
}

set g2(dynamic g3) {
  g1 = g3;
}

dynamic main() {
  //test global dynamic
  print(g1);
  print(g2);
  g2 = "${1} s dynamic";
  print(g1);
  print(g2);

  dynamic a;
  a = g1;
  print(a);
  a = g2;
  print(a);
  a = null;
  print(a);
  a = "dynamic str";
  print(a);
  a = B();
  print(a);
  dynamic b = a.func2();
  b.func3 = 4;
  print(b.func3);
  dynamic c = b.func3;
  dynamic d = b.func4;
  print(c);
  return c;
}
