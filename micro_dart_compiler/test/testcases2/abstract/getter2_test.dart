class A {
  int get x => 100;
}

abstract class B extends A {
  int? _x;

  int get x;
  set x(int v) {
    _x = v;
  }
}

class C extends B {
  int get x => super.x;
}

class GetterConcrete {
  var _foo;

  get foo => _foo;
  set foo(x) => _foo = x;

  var _bar;

  get bar => _bar;
  set bar(x) => _bar = x;
}

class AbstractGetterOverride1 extends GetterConcrete {
  get foo;
  set bar(x);
}

class AbstractGetterOverride2 extends Object with GetterConcrete {
  get foo;
  set bar(x);
}

bool main() {
  B b = new C();
  b.x = 42;
  bool r1 = b._x == 42;
  bool r2 = b.x == 100;

  var c1 = AbstractGetterOverride1()
    ..foo = 123
    ..bar = 456;

  bool r3 = c1.foo == 123;
  bool r4 = c1.bar == 456;

  var c2 = AbstractGetterOverride2()
    ..foo = 123
    ..bar = 456;
  bool r5 = c2.foo == 123;
  bool r6 = c2.bar == 456;

  bool r = r1 && r2 && r3 && r4 && r5 && r6;
  print(r);
  return r;
}
