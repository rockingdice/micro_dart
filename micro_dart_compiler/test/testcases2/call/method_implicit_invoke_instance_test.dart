class C1 {
  int call(int i) => 2 * i;
}

class C2 implements Function {
  int call(int i) => 2 * i;
}

class D {
  C1 c1 = C1();
  dynamic d1 = C1();
  C2 c2 = C2();
  dynamic d2 = C2();

  void test() {
    assert(c1(1) == 2);
    assert(d1(1) == 2);
    assert(c2(1) == 2);
    assert(d2(1) == 2);
  }
}

main() {
  D().test();
  assert(D().c1(1) == 2);
  assert(D().d1(1) == 2);
  assert(D().c2(1) == 2);
  assert(D().d2(1) == 2);
  D d = new D();
  assert(d.c1(1) == 2);
  assert(d.d1(1) == 2);
  assert(d.c2(1) == 2);
  assert(d.d2(1) == 2);
}
