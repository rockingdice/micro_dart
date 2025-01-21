class A {
  int foo();
  noSuchMethod(im) => 42;
}

class B extends A {
  noSuchMethod(im) => 87;

  int foo() => super.foo();
}

main() {
  assert(87 == new B().foo());
}
