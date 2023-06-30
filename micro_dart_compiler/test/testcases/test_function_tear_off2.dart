typedef Fun = int Function(int a, {int b});

class A {
  final Fun fun1;

  A(this.fun1);
}

class B {
  int i;
  B(this.i);
  int fun2(int a, {int b = 0}) {
    return i + a - b;
  }
}

int main() {
  var b = B(2);
  b.i = 3;
  var a = A(b.fun2);

  return a.fun1(2, b: 4);
}
