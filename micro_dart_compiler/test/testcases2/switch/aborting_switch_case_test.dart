foo() {
  throw 42;
}

main() {
  var exception;
  try {
    switch (42) {
      case 42:
        foo();
        foo();
        break;
    }
  } catch (e) {
    exception = e;
  }
  assert(42 == exception);
}
