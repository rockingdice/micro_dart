class A {
  String val = "";
  List things;

  A() : things = ['D', 'a', 'r', 't', 42];

  operator +(String s) {
    val = "${val}${s}";
    return this;
  }

  operator [](i) {
    return things[i];
  }

  operator []=(i, val) {
    return things[i] = val;
  }
}

class B extends A {
  operator +(String s) {
    super + ("${s}${s}"); // Call A.operator+(this, "${s}${s}").
    return this;
  }

  operator [](i) {
    var temp = super[i];
    if (temp is String) {
      return "$temp$temp";
    }
    return temp + temp;
  }

  operator []=(i, val) {
    // Make sure the index expression is only evaluated
    // once in the presence of a compound assignment.
    return super[i++] += val;
  }
}

main() {
  var a = new A();
  a = a + "William"; // operator + of class A.
  assert("William" == a.val);
  assert("r" == a[2]); // operator [] of class A.

  a = new B();
  a += "Tell"; //   operator + of class B.
  assert("TellTell" == a.val);
  assert("rr" == a[2]); // operator [] of class B.

  a[4] = 1; // operator []= of class B.
  assert(43 == a.things[4]);
  assert(86 == a[4]);
}
