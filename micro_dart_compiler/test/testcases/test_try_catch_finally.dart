int main() {
  try {
    throwTest2();
  } catch (exception) {
    print("$exception");
  } finally {
    print("finally 1");
  }

  try {
    throwTest1();
  } catch (exception) {
    print("$exception");
  } finally {
    print("finally 2");
  }
  return 1;
}

void throwTest1() {
  try {
    throwTest2();
  } catch (e, s) {
    print("rethrow");
    rethrow;
  }
}

void throwTest2() {
  {
    throw "throwTest2";
  }
}
