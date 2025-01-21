class A {
  int a = 0;
  int get func => a;
  void set func(int v) {
    a = v;
  }
}

int main() {
  print("hash: ${"abc".hashCode}");
  print("hash: ${"abc".hashCode}");

  dynamic a;
  a = A();
  a.func = 2;
  print("${a.func}");
  return a.func;
}
