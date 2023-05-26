import 'dart:async';

Future<int> main() async {
  func2();
  return func1();
}

Future<int> func1() async {
  return Future.value(1);
}

void func2() {
  print("aaa");
}
