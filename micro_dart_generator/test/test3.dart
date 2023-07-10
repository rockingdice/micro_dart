void main() {
  int g = get1();
  var a = A(g);
}

class A<T extends num> {
  T a;
  A(this.a);
}

get1() {
  return 1;
}

get2() {
  return 2;
}
