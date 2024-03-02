library test1;

import 'dart:io';
export 'dart:io';

const int a1 = 0;
int a2 = 1;

void fun0() {
  print("fun0");
}

class C {
  int c1 = 2;
  void fun1() {
    fun0();
    print("fun1");
  }
}
