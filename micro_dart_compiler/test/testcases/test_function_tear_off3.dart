typedef Fun = int Function(int a, {int b});

class A {
  final Fun fun1;

  A(this.fun1);
}

class B {
  int fun2(int a, {int b = 0}) {
    return a - b;
  }
}

int main() {
  var f = getFun;
  var a = A(f);
  return a.fun1(2, b: 4);
}

Fun getFun = B().fun2;
