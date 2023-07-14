import 'dart:async';

void main() async {
  var f = _Future__$();
  print(f);
  var r = Function.apply(f, []);
  print(r);
}

Function _Future__$() => <T>() {
      FutureOr<T> computationProxy() async => test1();
      return Future<T>(computationProxy);
    };

dynamic test1() {
  print("asdfadf");
  return 1;
}
