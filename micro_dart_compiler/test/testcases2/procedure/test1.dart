class A<T> {
  String method1(num o) {
    return "A<T> method1 $o";
  }

  String method2(T o) {
    return "A<T> method2 $o";
  }
}

class B {
  String method1(covariant int o) {
    return "B method1 $o";
  }

  String method2(int o) {
    return "B method2 $o";
  }
}

class C implements A<int>, B {
  // Abstract forwarding stub needed because the parameter is
  // covariant in `B.method1` but not in `A.method1`.

  @override
  String method1(covariant num o) {
    return "C method1 $o";
  }

  // Abstract forwarding stub needed because the parameter is a
  // generic covariant impl in `A.method2` but not in `B.method2`.

  @override
  String method2(/*generic-covariant-impl*/ int o) {
    return "C method2 $o";
  }
}

class C2 extends A<int> implements B {
  // Abstract forwarding stub needed because the parameter is
  // covariant in `B.method1` but not in `A.method1`.

  @override
  String method1(covariant num o) {
    return "C2 method1 $o";
  }

  // Abstract forwarding stub needed because the parameter is a
  // generic covariant impl in `A.method2` but not in `B.method2`.

  @override
  String method2(/*generic-covariant-impl*/ int o) {
    return "C2 method2 $o";
  }
}

String main() {
  var c = C();
  var s1 = c.method1(1.1);
  var s2 = c.method2(2);
  var r = "$s1$s2";
  print(r);
  return r;
}
