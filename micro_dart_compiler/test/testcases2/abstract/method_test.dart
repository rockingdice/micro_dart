int get length => throw "error: top-level getter called";
set height(x) {
  throw "error: top-level setter called";
}

width() {
  throw "error: top-level function called";
}

abstract class A {
  int get length; //    Abstract instance getter.
  set height(int x); // Abstract instance setter.
  int width(); //       Abstract instance method.

  // Must resolve to non-abstract length getter in subclass.
  get useLength => length;
  // Must resolve to non-abstract height setter in subclass.
  setHeight(x) => height = x;
  // Must resolve to non-abstract width() method in subclass.
  useWidth() => width();
}

class A1 extends A {
  int length; // Implies a length getter.
  int? height; // Implies a height setter.
  int width() => 345;
  A1(this.length);
}

main() {
  var a = A1(123);
  bool b1 = 123 == a.useLength;
  a.setHeight(234);
  bool b2 = 234 == a.height;
  bool b3 = 345 == a.useWidth();
  print([a.useLength, a.height, a.useWidth()]);
  return b1 && b2 && b3;
}
