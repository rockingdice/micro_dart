class Foo {
  bool myBoolean = false;

  void set foo(bool b) {
    print("Setting foo in Foo");
    myBoolean = b;
  }
}

class Baz extends Foo {
  Baz() {
    super.foo = true;
    assert(true == super.myBoolean);
  }
}

main() {
  new Baz();
}
