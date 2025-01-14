class A {
  foo() {
    print("foo");
    return "foo";
  }
}

abstract class B extends A {
  foo([x]);
}

class C extends B {
  foo([x]) {
    print("foo C x: ${x}");
    return x;
  }
}

f(B b) {
  var a1 = b.foo();
  var a2 = b.foo(0);
  var a3 = b.foo("ab");
  return "${a1}${a2}${a3}";
}

main() {
  var p = f(new C());
  print(p);
  return p;
}
