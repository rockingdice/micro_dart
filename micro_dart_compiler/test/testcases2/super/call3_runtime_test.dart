class A {
  A();
  final foo = 499;
}

class B extends A {}

class B2 extends A {
  B2();
  B2.named() : this.x = 499;
  var x;
}

class C {
  C();
  final foo = 499;
}

class D extends C {}

class D2 extends C {
  D2();
  D2.named() : this.x = 499;
  var x;
}

main() {
  assert(499 == new B().foo);
  assert(499 == new B2().foo);
  assert(499 == new B2.named().foo);
  assert(499 == new D().foo);
  assert(499 == new D2().foo);
  assert(499 == new D2.named().foo);
}
