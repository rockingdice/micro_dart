class A {
  noSuchMethod(_) {
    print("Should not reach here");
  }
}

class B extends A {
  operator ==(other);
}

class C extends B {}

var a = [C()];

main() {
  C c = a[0];
  a.add(c);
  var b1 = c == a[1];
  print(b1);
}
