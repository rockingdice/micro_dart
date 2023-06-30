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

class C extends B {
  int e;
  int f = 3;
  C(int a, int c, this.e) : super.c1(a, c);

  @override
  int fn1(int n) {
    return super.a + b + c + d + e + f + super.fn1(n);
  }
}

int main() {
  var v1 = C(3, 2, 1);
  var r = v1.fn1(4);
  print(r);
  return r;
}
