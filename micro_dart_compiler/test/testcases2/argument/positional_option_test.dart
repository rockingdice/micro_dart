String test1(int a, [int? b]) {
  return "test1 $a$b";
}

String test2(int a, [int b = 0]) {
  return "test2 $a$b";
}

String test3(int a, {int? b}) {
  return "test3 $a$b";
}

String test4(int a, {int b = 0}) {
  return "test4 $a$b";
}

class A {
  final int a;
  final int b;
  A.test1(this.a, this.b);
  A.test2(this.a, {this.b = 0});
  A.test3(this.a, [this.b = 0]);

  String get params {
    return "A.params $a$b";
  }
}

int main() {
  var r1 = test1(0);
  print("r1: $r1");
  var r2 = test1(1, 1);
  print("r2: $r2");
  var r3 = test2(2);
  print("r3: $r3");
  var r4 = test2(2, 2);
  print("r4: $r4");
  var r5 = test3(3);
  print("r5: $r5");
  var r6 = test3(3, b: 3);
  print("r6: $r6");
  var r7 = test4(4);
  print("r7: $r7");
  var r8 = test4(4, b: 4);
  print("r8: $r8");
  var r9 = A.test1(5, 5).params;
  print("r9: $r9");
  var r10 = A.test2(6).params;
  print("r10: $r10");
  var r11 = A.test2(6, b: 6).params;
  print("r11: $r11");
  var r12 = A.test3(7).params;
  print("r12: $r12");
  var r13 = A.test3(7, 7).params;
  print("r13: $r13");

  var r = (r1 + r2 + r3 + r4 + r5 + r6 + r7 + r8 + r9 + r10 + r11 + r12 + r13)
      .hashCode;
  print("r: $r");
  return r;
}
