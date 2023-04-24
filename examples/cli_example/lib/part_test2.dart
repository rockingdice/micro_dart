part of 'test2.dart';

extension Cext on C {
  void test() {
    print("test $fn3");
  }

  int get testGet {
    return fn3;
  }

  static void testStatic() {
    print("testStatic");
  }

  static int get getStatic {
    return 13;
  }
}
