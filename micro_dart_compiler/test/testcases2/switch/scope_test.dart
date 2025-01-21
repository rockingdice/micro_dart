class SwitchScopeTest {
  static testMain() {
    switch (1) {
      case 1:
        final v = 1;
        break;
      case 2:
        final v = 2;
        assert(2 == v);
        break;
      default:
        final v = 3;
        break;
    }
  }
}

main() {
  SwitchScopeTest.testMain();
}
