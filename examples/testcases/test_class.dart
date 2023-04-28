class C {
  int p1;
  int _p2;

  int p3 = 1;

  C(this.p1, this._p2) {
    this.p1 = 0;
  }

  C.c1(this.p1, int p2) : _p2 = p2;

  factory C.c2(int a, int b) = C._;

  factory C._(int a, int b) => C.c1(a, b);

  int get p2 {
    return p1 + _p2;
  }

  int add(int p) {
    return p2 + p + p3;
  }

  void p3pp() {
    p3++;
  }
}

int main() {
  var c1 = C(1, 2);
  c1.p3 = 3;
  c1.p3pp();
  return c1.add(7) + C.c2(4, 5).p3;
}
