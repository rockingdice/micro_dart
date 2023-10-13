import 'dart:async';

void main() async {
  try {
    print("1");
    Timer.run(() {
      print("run");
      throw Exception("run exception");
    });
    print("2");
  } catch (e, s) {
    print(e);
  }
}

FutureOr run() {
  return Future(() async {
    await Future.delayed(Duration(seconds: 2));
    returnValue = Future.value(1);
  });
}

dynamic returnValue;

Future<T> callAsync<T>() async {
  var c = run();
  print("1");
  if (c is Future) {
    print("2");
    await c;
  }
  print("3");
  return returnValue;
}
