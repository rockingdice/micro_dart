class A {
  int foo;
  A(this.foo);

  raw$foo() => foo;
  this$foo() => this.foo;
}

class B extends A {
  int foo;
  B.b1(x, this.foo) : super(x);
  B.b2(x, y)
      : this.foo = y,
        super(x);
  B.b3(x, y)
      : this.foo = y,
        super(x);

  super$foo() => super.foo;
  sum() => foo + super.foo;
}

test(b) {
  assert(10 == b.foo);
  assert(10 == b.raw$foo());
  assert(10 == b.this$foo());
  assert(100 == b.super$foo());
  assert(110 == b.sum());
}

main() {
  test(new B.b1(100, 10));
  test(new B.b2(100, 10));
  test(new B.b3(100, 10));
}
