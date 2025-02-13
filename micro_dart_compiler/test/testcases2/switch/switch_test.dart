class Switcher {
  Switcher() {}

  test1(val) {
    var x = 0;
    switch (val) {
      case 1:
        x = 100;
        break;
      case 2:
      case 3:
        x = 200;
        break;
      case 4:
      default:
        {
          x = 400;
          break;
        }
    }
    return x;
  }

  test2(val) {
    switch (val) {
      case 1:
        return 200;
      default:
        return 400;
    }
  }
}

class SwitchTest {
  static testMain() {
    Switcher s = new Switcher();
    assert(100 == s.test1(1));
    assert(200 == s.test1(2));
    assert(200 == s.test1(3));
    assert(400 == s.test1(4));
    assert(400 == s.test1(5));

    assert(200 == s.test2(1));
    assert(400 == s.test2(2));
  }
}

class Enum {
  static const Enum e1 = const Enum(1);
  static const Enum e2 = const Enum(2);
  static const Enum e3 = const Enum(3);
  final int id;
  const Enum(this.id);
}

void testSwitchEnum(Enum? input, int expect) {
  int? result = null;
  switch (input) {
    case Enum.e1:
      result = 10;
      break;
    case Enum.e2:
      result = 20;
      break;
    case Enum.e3:
      result = 30;
      break;
    default:
      result = 40;
  }
  assert(expect == result);
}

const int ic1 = 1;
const int ic2 = 2;
void testSwitchIntExpression(int? input, int? expect) {
  int? result = null;
  switch (input) {
    case 1 + 1: // 2
    case ic1 + 2: // 3
      result = 11;
      break;
    case ic2 * 2: // 4
    case 1 * 5: // 5
      result = 21;
      break;
    case ic1 % ic2 + 5: // 6
      result = 31;
      break;
  }
  assert(expect == result);
}

void testSwitchBool(bool input, int expect) {
  int? result = null;
  switch (input) {
    case true:
      result = 12;
      break;
    case false:
      result = 22;
  }
  assert(expect == result);
}

void testSwitchString(String? input, int? expect) {
  int? result = null;
  switch (input) {
    case 'one':
      result = 1;
      break;
    case 'two':
      result = 2;
      break;
  }
  assert(expect == result);
}

switchConstString() {
  const c = 'a';
  switch (c) {
    case 'a':
      return 'aa';
    case 'b':
      return 'bb';
    case 'c':
      return 'cc';
    case 'd':
      return 'dd';
    case 'e':
      return 'ee';
    case 'f':
      return 'ff';
  }
}

main() {
  SwitchTest.testMain();

  testSwitchEnum(Enum.e1, 10);
  testSwitchEnum(Enum.e2, 20);
  testSwitchEnum(Enum.e3, 30);
  testSwitchEnum(null, 40);

  testSwitchIntExpression(2, 11);
  testSwitchIntExpression(3, 11);
  testSwitchIntExpression(4, 21);
  testSwitchIntExpression(5, 21);
  testSwitchIntExpression(6, 31);
  testSwitchIntExpression(7, null);

  testSwitchBool(true, 12);
  testSwitchBool(false, 22);

  testSwitchString(null, null);
  testSwitchString('one', 1);
  testSwitchString('two', 2);
  testSwitchString('three', null);

  assert('aa' == switchConstString());
}
