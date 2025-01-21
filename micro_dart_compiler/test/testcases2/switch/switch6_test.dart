class Switch6Test {
  static testMain() {
    var a = 0;
    var x = -1;
    switch (a) {
      case 0:
        {
          x = 0;
          break;
        }
      case 1:
        x = 1;
        break;
    }
    assert(0 == x);
  }
}

main() {
  Switch6Test.testMain();
}
