int main() {
  try {
    throwTest2();
  } catch (exception, stackTrace) {
    print("$exception $stackTrace");
  }

  try {
    throwTest1();
  } catch (e, s) {
    print("$e $s");
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
