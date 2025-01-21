class A {
  late String city;
  A() {
    city = "Bern";
  }
  String greeting() {
    return "Gruezi";
  }
}

class B extends A {
  B() : super() {}
  String greeting() {
    return "Hola " + super.greeting();
  }
}

class C extends B {
  C() : super() {}
  String greeting() {
    return "Servus " + super.greeting();
  }

  String get city {
    return "Basel " + super.city;
  }
}

class SuperFieldTest {
  static testMain() {
    A a = new A();
    B b = new B();
    C c = new C();
    assert("Gruezi" == a.greeting());
    assert("Hola Gruezi" == b.greeting());
    assert("Servus Hola Gruezi" == c.greeting());

    assert("Bern" == a.city);
    assert("Bern" == b.city);
    assert("Basel Bern" == c.city);
    c.city = "Zurich";
    assert("Basel Zurich" == c.city);
  }
}

main() {
  SuperFieldTest.testMain();
}
