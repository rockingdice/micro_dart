int res = 0;

class A {
  A([int v = 1]) {
    res += v;
  }
}

class B extends A {
  B([int v = 2]) {
    res += v;
  }
}

main() {
  B();
  assert(3 == res);
}
