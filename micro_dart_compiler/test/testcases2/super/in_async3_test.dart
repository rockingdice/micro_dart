import 'dart:async';

class A {
  Future<T> foo<T>(T x) async => x;
}

class B extends A {
  Future<int> bar() async {
    var x = await super.foo(41);
    return x + 1;
  }
}

Future main() async {
  assert(42 == await new B().bar());
}
