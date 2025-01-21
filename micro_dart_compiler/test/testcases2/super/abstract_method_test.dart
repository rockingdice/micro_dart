class Base {
  foo() => 42;
}

abstract class A extends Base {
  foo();
}

class B extends A {
  testSuperCall() => super.foo();
  foo() =>
      42; // required since if is removed, then a warning is introduced on 'B' above
}

main() {
  assert(42 == B().foo());
  assert(42 == B().testSuperCall());
}
