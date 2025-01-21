class C {
  static bool check(x, y) => x < y;
  static bool staticTrue() => true;
  final int x;
  const C(this.x);

  C.c01(this.x, y) : assert(x < y);
  C.c02(x, y)
      : x = x,
        assert(x < y);
  C.c03(x, y)
      : assert(x < y),
        x = x;
  C.c05(this.x, y)
      : assert(x < y),
        super();
  C.c06(x, y)
      : x = x,
        assert(x < y),
        super();
  C.c07(x, y)
      : assert(x < y),
        x = x,
        super();
  C.c08(x, y)
      : assert(x < y),
        x = x,
        assert(y > x),
        super();
  C.c09(this.x, y) : assert(x < y, "$x < $y");
  C.c10(this.x, y)
      : assert(
          x < y,
        );
  C.c11(this.x, y)
      : assert(
          x < y,
          "$x < $y",
        );

  const C.cc01(this.x, y) : assert(x < y);
  const C.cc02(x, y)
      : x = x,
        assert(x < y);
  const C.cc03(x, y)
      : assert(x < y),
        x = x;
  const C.cc05(this.x, y)
      : assert(x < y),
        super();
  const C.cc06(x, y)
      : x = x,
        assert(x < y),
        super();
  const C.cc07(x, y)
      : assert(x < y),
        x = x,
        super();
  const C.cc08(x, y)
      : assert(x < y),
        x = x,
        assert(y > x),
        super();
  const C.cc09(this.x, y) : assert(x < y, "$x < $y");
  const C.cc10(this.x, y)
      : assert(
          x < y,
        );
  const C.cc11(this.x, y)
      : assert(
          x < y,
          "$x < $y",
        );
}

main() {
  const c1 = const C(1);

  var r1 = c1 == const C.cc01(1, 2);
  print("r1: $r1");
  // var r2 = c1 == const C.cc02(1, 2);
  // print("r2: $r2");
  // var r3 = c1 == const C.cc03(1, 2);
  // print("r3: $r3");
  // var r5 = c1 == const C.cc05(1, 2);
  // print("r5: $r5");
  // var r6 = c1 == const C.cc06(1, 2);
  // print("r6: $r6");
  // var r7 = c1 == const C.cc07(1, 2);
  // print("r7: $r7");
  // var r8 = c1 == const C.cc08(1, 2);
  // print("r8: $r8");
  // var r9 = c1 == const C.cc09(1, 2);
  // print("r9: $r9");
  // var r10 = c1 == const C.cc10(1, 2);
  // print("r10: $r10");
  // var r11 = c1 == const C.cc11(1, 2);
  // print("r11: $r11");

  // var b1 = r1 && r2 && r3 && r5 && r6 && r7 && r8 && r9 && r10 && r11;
  // print("b1: $b1");
  // var r12 = c1 == C.c01(1, 2);
  // print("r12: $r12");
  // var r13 = c1 == C.c02(1, 2);
  // print("r13: $r13");
  // var r14 = c1 == C.c03(1, 2);
  // print("r14: $r14");
  // var r15 = c1 == C.c05(1, 2);
  // print("r15: $r15");
  // var r16 = c1 == C.c06(1, 2);
  // print("r16: $r16");
  // var r17 = c1 == C.c07(1, 2);
  // print("r17: $r17");
  // var r18 = c1 == C.c08(1, 2);
  // print("r18: $r18");
  // var r19 = c1 == C.c09(1, 2);
  // print("r19: $r19");
  // var r20 = c1 == C.c10(1, 2);
  // print("r20: $r20");
  // var r21 = c1 == C.c11(1, 2);
  // print("r21: $r21");

  // var b2 = !r12 &&
  //     !r13 &&
  //     !r14 &&
  //     !r15 &&
  //     !r16 &&
  //     !r17 &&
  //     !r18 &&
  //     !r19 &&
  //     !r20 &&
  //     !r21;
  // print("b2: $b2");

  // var r = b1 && b2;
  // print("r: $r");
  // return r;
  return true;
}
