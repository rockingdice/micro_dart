class C extends Deprecated {
  int e;
  int f = 3;
  C(this.e, String m) : super(m);

  String fn1(int n) {
    return "${message} ${e + f}";
  }
}

class D {
  C c;
  D(this.c);
}

String main() {
  var c = C(3, "this is a message");
  var d = D(c);
  var r = d.c.fn1(4);
  print(r);
  return r;
}
