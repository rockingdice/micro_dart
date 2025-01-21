class A {
  int foo();

  noSuchMethod(im) => 42;
}

class B extends Object with A {}

main() {
  assert(42 == new B().foo());
}
