class A {
  const A();
  @override
  bool operator ==(other) => true;
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
  bool r1 = a == b;
  bool r2 = a == c;
  bool r3 = d1 == d2;
  bool r4 = d1 == d3;
  bool r5 = 1 == 1;
  bool r6 = 1 == 0;

  print("r1:$r1");
  print("r2:$r2");
  print("r3:$r3");
  print("r4:$r4");
  print("r5:$r5");
  print("r6:$r6");
  bool r = r1 && r2 && r3 && !r4 && r5 && !r6;
  print("r:$r");
  return r;
}
