foo() async {
  throw 42;
}

Future<bool> test() async {
  var exception;
  try {
    await foo();
  } catch (e) {
    print(await (e));
    await (exception = await e);
  }
  return exception == 42;
}

Future main() async {
  var r = await test().then((r) => "r is $r");
  print(r);
  return r;
}
