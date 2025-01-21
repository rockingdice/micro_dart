class Foo {
  @override
  noSuchMethod(im) => 42;
  test4() => 43;
}

returnFoo() {
  (() => 42)();
  return Foo();
}

class Bar {
  operator ==(other) => false;
}

var a = [false, true, new Object(), new Bar()];

test1() {
  var a1 = returnFoo();
  // print(a1);
  return a1.test4() == 43;
}

test2() {
  var a1 = returnFoo();
  // print(a1);
  var a2 = a1.test2();
  // print(a2 == 42);
  return a2 == 42;
}

test3() {
  bool b = a[2] == 42;
  // print(b);
  return b;
}

main() {
  var r1 = test1();
  var r2 = test2();
  var r3 = test3();
  var r = "$r1$r2$r3";
  print(r);
  return r;
}
