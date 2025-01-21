class A {
  var foo;
  A(this.foo);

  B_Sfoo() => 'A.B_Sfoo()';
}

class B extends A {
  B(x) : super(x);

  B_Sfoo() => super.foo;
  BC_Sfoo() => super.foo;
  BCD_Sfoo() => super.foo;
}

class C extends B {
  var foo;
  C(x, this.foo) : super(x);

  BC_Sfoo() => super.foo;
  BCD_Sfoo() => super.foo;
}

class D extends C {
  D(x, y) : super(x, y);

  BCD_Sfoo() => super.foo;
}

var inscrutable;

main() {
  inscrutable = (x) => x;

  var b = new B('Ba');
  var c = new C('Ca', 'Cc');
  var d = new D('Da', 'Dc');

  // Check access via plain getter.
  var b_bc = inscrutable(true) ? b : c; // B, but compiler thinks can also be C
  var c_bc = inscrutable(true) ? c : b; // C, but compiler thinks can also be B

  assert('Ba' == b.foo);
  assert('Cc' == c.foo);
  assert('Dc' == d.foo);
  assert('Ba' == b_bc.foo);
  assert('Cc' == c_bc.foo);

  assert('Ba' == inscrutable(b).foo);
  assert('Cc' == inscrutable(c).foo);
  assert('Dc' == inscrutable(d).foo);
  assert('Ba' == inscrutable(b_bc).foo);
  assert('Cc' == inscrutable(c_bc).foo);

  // Check access via super.foo in various contexts
  assert('Ba' == b.B_Sfoo());
  assert('Ca' == c.B_Sfoo());
  assert('Da' == d.B_Sfoo());

  assert('Ba' == b.BC_Sfoo());
  assert('Ca' == c.BC_Sfoo());
  assert('Da' == d.BC_Sfoo());

  assert('Ba' == b.BCD_Sfoo());
  assert('Ca' == c.BCD_Sfoo());
  assert('Dc' == d.BCD_Sfoo());

  assert('Ba' == inscrutable(b).B_Sfoo());
  assert('Ca' == inscrutable(c).B_Sfoo());
  assert('Da' == inscrutable(d).B_Sfoo());

  assert('Ba' == inscrutable(b).BC_Sfoo());
  assert('Ca' == inscrutable(c).BC_Sfoo());
  assert('Da' == inscrutable(d).BC_Sfoo());

  assert('Ba' == inscrutable(b).BCD_Sfoo());
  assert('Ca' == inscrutable(c).BCD_Sfoo());
  assert('Dc' == inscrutable(d).BCD_Sfoo());
}
