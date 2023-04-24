part 'part_test2.dart';

int global1 = 0;

C global2 = C.c2();

int fn1() {
  return 10 * 11;
}

int fn2() {
  return 10 * 11;
}

class C {
  int _f1;
  int _f2;
  int fn3;

  int get f1 {
    return _f1;
  }

  set f1(int i) {
    _f1 = i;
  }

  C(this._f1, this._f2, this.fn3);

  C.c1(this._f1, {int a1 = 1, int a2 = 3})
      : _f2 = a1,
        fn3 = a2;

  C.c2()
      : _f1 = 1,
        _f2 = 0,
        fn3 = 3;

  factory C.f1(int i, int j, int k) = C._;

  factory C._(int i, int j, int k) {
    return C(i, j, k);
  }

  factory C.f2(int i, int j) {
    return C(i, j, 0);
  }

  factory C.f3(int i) {
    return C(i, 0, 0);
  }

  static C create(int i, int j) {
    return C(i, j, 0);
  }

  int fn1() {
    return testGet;
  }

  static bool isEqualNum<T extends num>(T value1, T value2) => value1 == value2;
}

void test<E>() {}
