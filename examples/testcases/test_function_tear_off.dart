class A {
  final int Function() fun1;

  A(this.fun1);
}

class B {
  int i;
  B(this.i);
  int fun2() {
    return i;
  }
}

int main() {
  var b = B(2);
  b.i = 3;
  var a = A(b.fun2);
  var r = a.fun1();
  print(r);
  return r;
}
