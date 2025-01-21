class A {
  foo(a) => a + 42;
}

class B extends A {
  bar() {
    super.foo(null);
  }
}

var a = [new A()];

main() {
  analyzeFirst();
  analyzeSecond();
}

analyzeFirst() {
  assert(84 == a[0].foo(42));
}

analyzeSecond() {
  try {
    B().bar();
  } catch (e, s) {
    print(e.toString());
  }
}
