final results = [];

int invoke(int f()) => f();

class Base {
  var f;
  var z;

  m(x) => results.add(x);

  int g() {
    return 42;
  }
}

class C extends Base {
  final Iterable _iter;

  C(this._iter) {
    _iter.map((x) => super.m(x)).toList();
    super.f = _iter;
    z = invoke(super.g);
  }

  int g() {
    return -1;
  }
}

main() {
  var c = new C([1, 2, 3]);
  listEquals([1, 2, 3], results);
  listEquals([1, 2, 3], c.f);
  equals(42, c.z);
}

void listEquals(List a, List b) {
  assert(a.length == b.length);
  for (int i = 0; i < a.length; i++) {
    assert(a[i] == b[i]);
  }
}

void equals(a, b) {
  assert(a == b);
}
