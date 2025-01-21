// Tests all statement types. Not an exhaustive test of all statement semantics.
class StatementTest {
  StatementTest() {}

  static testMain() {
    var test = new StatementTest();
    test.testIfStatement();
    test.testForLoop();
    test.testWhileLoops();
    test.testSwitch();
    test.testExceptions();
    test.testBreak();
    test.testContinue();
    test.testFunction();
    test.testReturn();
  }

  testIfStatement() {
    // Basic if statements.
    if (true) {
      assert(true == true);
    } else {
      assert(false == true);
    }

    if (false) {
      assert(false == true);
    } else {
      assert(true, true);
    }
  }

  testForLoop() {
    int count = 0, count2;

    // Basic for loop.
    for (int i = 0; i < 10; ++i) {
      ++count;
    }
    assert(10 == count);

    // For loop with no 'var'.
    count2 = 0;
    for (count = 0; count < 5; ++count) {
      ++count2;
    }
    assert(5 == count);
    assert(5 == count2);

    // For loop with no initializer.
    count = count2 = 0;
    for (; count < 10; ++count) {
      ++count2;
    }
    assert(10 == count);
    assert(10 == count2);

    // For loop with no increment.
    for (count = 0; count < 5;) {
      ++count;
    }
    assert(5 == count);

    // For loop with no test.
    for (count = 0;; ++count) {
      if (count == 10) {
        break;
      }
    }
    assert(10 == count);

    // For loop with no nothing.
    count = 0;
    for (;;) {
      if (count == 5) {
        break;
      }
      ++count;
    }
    assert(5 == count);
  }

  testWhileLoops() {
    // Basic while loop.
    int count = 0;
    while (count < 10) {
      ++count;
    }
    assert(10 == count);

    // Basic do loop.
    count = 0;
    do {
      ++count;
    } while (count < 5);
    assert(5 == count);
  }

  testSwitch() {
    // Int switch.
    bool? hit0, hit1, hitDefault;
    for (int x = 0; x < 3; ++x) {
      switch (x) {
        case 0:
          hit0 = true;
          break;
        case 1:
          hit1 = true;
          break;
        default:
          hitDefault = true;
          break;
      }
    }
    assert(true == hit0);
    assert(true == hit1);
    assert(true == hitDefault);

    // String switch.
    var strings = ['a', 'b', 'c'];
    bool? hitA, hitB;
    hitDefault = false;
    for (int x = 0; x < 3; ++x) {
      switch (strings[x]) {
        case 'a':
          hitA = true;
          break;
        case 'b':
          hitB = true;
          break;
        default:
          hitDefault = true;
          break;
      }
    }
    assert(true == hitA);
    assert(true == hitB);
    assert(true == hitDefault);
  }

  testExceptions() {
    // TODO(jgw): Better tests once all the exception semantics are worked out.
    bool hitCatch, hitFinally;
    try {
      throw "foo";
    } catch (e) {
      assert(true, e == "foo");
      hitCatch = true;
    } finally {
      hitFinally = true;
    }

    assert(true, hitCatch);
    assert(true, hitFinally);
  }

  testBreak() {
    var ints = [
      [32, 87, 3, 589],
      [12, 1076, 2000, 8],
      [622, 127, 77, 955]
    ];
    int i, j = 0;
    bool foundIt = false;

    search:
    for (i = 0; i < ints.length; i++) {
      for (j = 0; j < ints[i].length; j++) {
        if (ints[i][j] == 12) {
          foundIt = true;
          break search;
        }
      }
    }
    assert(true, foundIt);
  }

  testContinue() {
    String searchMe = "Look for a substring in me";
    String substring = "sub";
    bool foundIt = false;
    int max = searchMe.length - substring.length;

    test:
    for (int i = 0; i <= max; i++) {
      int n = substring.length;
      int j = i;
      int k = 0;
      while (n-- != 0) {
        if (searchMe[j++] != substring[k++]) {
          continue test;
        }
      }
      foundIt = true;
      break test;
    }
  }

  testFunction() {
    int foo() {
      return 42;
    }

    assert(42 == foo());
  }

  void testReturn() {
    if (true) {
      return;
    }
    assert(true, false);
  }
}

main() {
  StatementTest.testMain();
}
