class A {
  int get foo;
  noSuchMethod(im) => 42;
}

class B extends A {
  noSuchMethod(im) => 87;

  get foo => super.foo;
}

main() {
  assert(87 == new B().foo);
}
