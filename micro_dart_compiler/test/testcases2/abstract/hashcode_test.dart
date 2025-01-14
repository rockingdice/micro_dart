class A {
  const A();
  @override
  bool operator ==(other) => true;
  @override
  int get hashCode => 0;
}

class B implements A {
  const B();
}

class C extends A {
  const C();
}

class Invalid {
  bool operator ==(other) => false;
  const Invalid();
}

class D implements Invalid {
  const D();
}

main() {
  var a = A();
  var b = B();
  var c = C();

  var d1 = D();
  var d2 = d1;
  var d3 = D();
  Map map = {};
  map[a] = 1;
  map[b] = 2;
  map[c] = 3;
  map[d1] = 4;
  map[d2] = 5;
  map[d3] = 6;
  print(map);
  var r = map.values.join();
  print(r);
  return r;
}
