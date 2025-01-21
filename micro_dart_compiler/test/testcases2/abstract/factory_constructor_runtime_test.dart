class A {
  A._();

  static A make() {
    return B();
  }
  String method(){return "";} // Abstract.
  factory A.make1() {
    return B();
  }

  factory A.make2() {
    return B(b: "A make2 method");
  }
}

class B extends A {
  final String b;
  B({this.b = "current method"}) : super._();
  B.make({this.b = "make method"}) : super._();

  String method() {
    return b;
  }
}

main() {
  var a1 = A.make();
  var a2 = A.make1();
  var r1 = a1.method();
  var r2 = a2.method();
  print(r1);
  print(r2);
  var r = "$r1$r2";
  print(r);
  return r;
}
