class A {
  final x;
  final y;
  const A(a, {b})
      : x = a,
        y = b;
  static const test = const A(1, b: 2);
}

bool main() {
  A a = A.test;
  bool b1 = 1 == a.x;
  bool b2 = 2 == a.y;
  print(b1);
  print(b2);
  return b1 && b2;
}
