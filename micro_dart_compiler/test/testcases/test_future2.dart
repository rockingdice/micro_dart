import 'dart:async';

Future<int> main() async {
  int a = 0;
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
  print(a);
  return a;
}
