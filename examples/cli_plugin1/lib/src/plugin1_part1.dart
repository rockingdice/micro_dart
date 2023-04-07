part of '../cli_plugin1.dart';

int topLevelDeclarations = 10;

var testRectangle = TestRectangle(23, 23, 23, 23);

extension ExtNum on num {
  void extNum() {
    testRectangle = TestRectangle(12, 13, 14, 15);
    var testGeneric = TestGeneric<TestRectangle>(testRectangle);
    print(24 + toInt() + testGeneric.t.height.toInt());
  }
}

class TestRectangle extends math.Rectangle {
  TestRectangle(super.left, super.top, super.width, super.height);

  void testToString() {
    print(toString());
  }
}

class TestGeneric<T extends math.Rectangle> {
  T t;
  TestGeneric(this.t);

  T getT() {
    return t;
  }
}
