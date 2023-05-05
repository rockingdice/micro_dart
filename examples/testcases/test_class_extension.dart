class A {
  int a;
  int b = 1;
  A(this.a);
  A.c1(this.a);
}

class B extends A {
  int c;
  int d = 2;
  B.c1(int a, this.c) : super.c1(a);

  int fn1(int n) {
    return a + b + c + n;
  }
}

extension Bext on A {
  void testA() {
    print("testA");
  }
}

int main() {
  var v1 = B.c1(3, 2);
  v1.testA();
  var r = v1.fn1(4);
  print(r);
  return r;
}
