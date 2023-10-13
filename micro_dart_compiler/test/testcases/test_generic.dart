class A<T> extends B<T> {
  A(T t) : super(t);
}

class B<T> {
  T t;
  B(this.t);

  T getT() {
    return t;
  }

  void test<M extends num>(M m) {
    print(m);
  }
}

int main() {
  var a = A<int>(1);
  print(a.getT());
  a.test(1.0);
  return a.getT();
}
