class A {
  static int aaa = 0;
  dynamic a = () {
    aaa = 1;
  };

  void func1() {
    a = 1;
  }

  void func2() {
    a = "2";
  }

  void func3() {
    a = () {
      a = "3";
    };
  }

  void func4() {
    a = () {
      a = () {
        a = 4;
      };
      return a;
    };
    return a;
  }

  // void func5() {
  //   func1();
  //   a += 4;
  // }
}

String main() {
  String output = "";
  dynamic ia;
  ia = A();
  ia.func1();
  output += ia.a.toString();
  ia.func2();
  output += ia.a.toString();
  ia.func3();
  ia.a();
  output += ia.a.toString();
  ia.func4();
  ia.a()();
  output += ia.a.toString();
  // ia.func5();
  // output += ia.a.toString();

  dynamic a = 6;
  output += a.toString();

  a = "7";
  output += a.toString();

  a = (int b, int c) {
    output += "${b + c}";
  };
  a(1, 7);
  print(output);
  return output;
}
