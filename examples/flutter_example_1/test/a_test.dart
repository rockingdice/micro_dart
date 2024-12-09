import 'dart:async';

void test1(void Function(int a, int b) func) {}

void test2(void Function(int a, int b, {int n1, int? n2}) func) {}
void test3(int Function(int a, int b, {int n1, int? n2}) func) {}
void test4(Future Function(int a, int b, {int n1, int? n2}) func) {}
void test5(FutureOr Function(int a, int b, {int n1, int? n2}) func) {}
void test6(FutureOr<int> Function(int a, int b, {int n1, int? n2}) func) {}
Future test7(
    FutureOr<int> Function(int a, int b, {int n1, int? n2}) func) async {}

abstract class A {
  final int a;
  const A(this.a);
  factory A.a(int a) {
    return B(a);
  }

  const A.b(this.a);
}

class B extends A {
  const B(int a) : super(a);
  const B.b(super.a);
  factory B.c(int a) {
    return B.b(a);
  }
}

void main() {
  test3((a, b, {dynamic n1, dynamic n2}) {
    return 1;
  });

  A a = Function.apply(B.c, [1]);
  print(a.a);
}
