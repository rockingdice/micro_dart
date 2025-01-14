class A extends C {
  var a;
  var b;
  @override
  String toString() {
    return "${this.runtimeType.toString()} toString";
  }
}

class C {
  foo() {}
  bar() {}
}

String main() {
  var a = A();
  a.a = 1;
  a.b = a;
  var r = "${a.a}${a.b}";
  print(r);
  return r;
}
