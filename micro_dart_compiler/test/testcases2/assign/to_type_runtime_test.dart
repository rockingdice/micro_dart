class C<T> {
  String f() {
    return T.toString();
  }
}

class D {}

enum E { e0 }

typedef void F();

String main() {
  var t = C<D>().f();
  print(t);
  return t;
}
