import 'dart:async';

int main() {
  int a = 0;
  testDelay(a);
  print("return $a");
  return a;
}

Future testDelay(int a) async {
  Future.delayed(Duration(seconds: 3), () {
    a = 1;
    print("delayed1 $a");
  });

  Future.delayed(Duration(seconds: 2), () {
    a = 2;
    print("delayed2 $a");
  });

  Future(() {
    a = 3;
    print("delayed3 $a");
  });

  await Future.delayed(Duration(seconds: 4));
  print("testDelay $a");
}
