class C {
  int p1;
  int _p2;

  int p3 = 0;

  C(this.p1, this._p2) {
    this.p1 = 0;
  }

  C.c1(this.p1, int p2) : _p2 = p2;
  C.c2()
      : p1 = 1,
        _p2 = 2;

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
  var c2 = C.c1(4, 5);
  c2.p3 = 6;
  c2.p3pp();
  return c1.add(7) + c2.add(8);
}
