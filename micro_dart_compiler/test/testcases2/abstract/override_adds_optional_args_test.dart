class A {
  void foo() {
    print("foo");
  }
}

abstract class B extends A {
  void foo([x]);
}

class C extends B {
  void foo([x]) {
    super.foo();
  }
}

void f(B b) {
  b.foo(42);
}

main() {
  f(new C());
}
