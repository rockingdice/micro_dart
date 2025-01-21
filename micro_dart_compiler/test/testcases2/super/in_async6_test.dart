import 'dart:async';

class A {
  Future<int> foo(int x, int y, int z) async => x + y + z;
}

class B extends A {
  Future<int> foo(int x, int y, int z) async {
    var w = await super.foo(x, y, z);
    return w + 1;
  }
}

main() async {
  assert(7 == await new B().foo(1, 2, 3));
}
