class C extends Deprecated {
  int e;
  int f = 3;
  C(this.e, String m) : super(m);

  String fn1(int n) {
    return "${message} ${e + f}";
  }
}

Deprecated main() {
  var c = C(3, "this is a message");
  return c;
}
