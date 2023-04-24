class C {
  final int p1;
  final int _p2;

  final int p3 = 3;

  const C(this.p1, this._p2);

  const C.c1(this.p1, int p2) : _p2 = p2;
  const C.c2()
      : p1 = 1,
        _p2 = 2;

  int get p2 {
    return _p2;
  }
}

int main() {
  var c1 = C(0, 1);
  return c1.p2;
}
