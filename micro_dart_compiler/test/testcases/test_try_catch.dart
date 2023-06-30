int main() {
  try {
    throwTest1();
  } catch (exception, stackTrace) {
    print("$exception $stackTrace");
  }

  try {
    throwTest2();
  } catch (exception, stackTrace) {
    print("$exception $stackTrace");
  }
  return 1;
}

void throwTest1() {
  throw 112;
}

void throwTest2() {
  try {
    throwTest3();
  } catch (exception, stackTrace) {
    print("throwTest2 $exception $stackTrace");
  }
}

void throwTest3() {
  throw "throwTest3";
}
