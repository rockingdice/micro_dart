import 'dart:async';

class A {
  Future<int> foo() async => 42;
}

class B extends A {
  Future<int> foo() async {
    var x = await super.foo();
    var y = await super.foo();
    return x + y;
  }
}

Future main() async {
  assert(84 == await new B().foo());
}
