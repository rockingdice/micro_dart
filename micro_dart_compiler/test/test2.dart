import 'dart:async';

void main() async {
  await callAsync();
  print(returnValue);
}

FutureOr run() {
  return Future(() async {
    await Future.delayed(Duration(seconds: 10));
    returnValue = Future.value(1);
  });
}

dynamic returnValue;

Future callAsync() async {
  var c = run();
  print("1");
  if (c is Future) {
    print("2");
    await c;
  }
  print("3");
  return returnValue;
}
