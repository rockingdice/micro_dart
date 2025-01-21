import 'dart:async';

class A {
  Future<int> foo() async => 42;
}

class B extends A {
  Future<int> foo() async {
    var x = await super.foo();
    return x + 1;
  }
}

Future main() async {
  assert(43 == await new B().foo());
}
