int main() {
  var a = A();
  var r = a.test(1);
  print(r);
  return r;
}

class A {
  int k = 1;

  A();

  B build() {
    return B(callback: (a) {
      return a + k;
    });
  }

  int test(int a) {
    B b = build();
    if (b.callback == null) {
      return 0;
    }
    return b.callback!(a);
  }
}

typedef Callback = int Function(int a);

class B {
  Callback? callback;
  B({this.callback});
}
