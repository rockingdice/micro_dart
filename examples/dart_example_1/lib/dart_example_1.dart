import 'dart:math';

int test1() {
  int j = 0;
  for (int i = 0; i < 10; i++) {
    j = j + i;
  }
  return j;
}

int test2() {
  int j = 0;
  for (int i = 0; i < 10; i++) {
    j = j + Random.secure().nextInt(100);
  }
  return j;
}

String test3() {
  List list = [];
  int j = Random.secure().nextInt(100);
  for (int i = 0; i < 10; i++) {
    list.add(i + j * 2);
  }
  return list.join();
}

String test4() {
  Set set = {};
  int j = Random.secure().nextInt(100);
  for (int i = 0; i < 10; i++) {
    set.add(i + j * 2);
  }
  return set.join();
}

String test5() {
  Map map = {};
  int j = Random.secure().nextInt(100);
  for (int i = 0; i < 10; i++) {
    map[i] = i + j * 2;
  }
  return map.values.join();
}

class A {
  int a;
  int b = 1;
  A(this.a);
  A.c1(this.a);
}

class B extends A {
  int c;
  int d = 2;
  B.c1(int a, this.c) : super.c1(a);

  int fn1(int n) {
    return a + b + c + n;
  }
}

class C extends B {
  int e;
  int f = 3;
  C(int a, int c, this.e) : super.c1(a, c);

  @override
  int fn1(int n) {
    return super.a + b + c + d + e + f + super.fn1(n);
  }
}

int test6() {
  int j = 0;
  for (int i = 0; i < 10; i++) {
    var v1 = C(i, i + 1, i + 2);
    var r = v1.fn1(Random.secure().nextInt(100));
    j = j + r;
  }
  return j;
}
