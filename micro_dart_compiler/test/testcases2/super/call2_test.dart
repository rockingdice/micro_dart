class C<T> {
  foo(T a) {}
}

class D<T> extends C<T> {
  foo(T a) {
    super.foo(a); // used to be resolved incorrectly and generate this.foo(a).
  }
}

class A {
  static int? _value;
  Function foo = (int x) => _value = x + 1;
}

class B extends A {
  void m(int x) {
    super.foo(x);
  }
}

main() {
  var d = new D();
  d.foo(null);

  var b = new B();
  b.m(41);
  assert(42 == A._value);
}
