class A {
  int foo();

  noSuchMethod(im) => 42;
}

class B extends Object with A {
  noSuchMethod(im) => 87;
}

main() {
  assert(87 == new B().foo());
}
