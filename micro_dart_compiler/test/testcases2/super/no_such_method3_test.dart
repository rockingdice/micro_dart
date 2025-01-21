var result;

class A {
  set foo(int a);

  noSuchMethod(im) {
    result = 42;
  }
}

class B extends A {
  noSuchMethod(im) {
    result = 87;
  }

  set foo(v) => super.foo = v;
}

main() {
  new B().foo = 0;
  assert(87 == result);
}
