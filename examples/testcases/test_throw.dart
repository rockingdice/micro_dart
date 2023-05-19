int main() {
  throwTest1();
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
