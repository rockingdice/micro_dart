class A {
  T foo<T>({required T x}) => x;
}

class B extends A {
  int bar() {
    try {
      throw 'bar';
    } finally {
      var x = super.foo(x: 41);
      return x + 1;
    }
  }
}

main() {
  assert(42 == new B().bar());
}
