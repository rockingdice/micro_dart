confuse(x) {
  return x;
}

Future<bool> test1() async {
  var b1 = await confuse(false) && await confuse(false);
  var b2 = await confuse(false) && await confuse(true);
  var b3 = await confuse(true) && await confuse(false);
  var b4 = await confuse(true) && await confuse(true);
  var b5 = await confuse(false) || await confuse(false);
  var b6 = await confuse(false) || await confuse(true);
  var b7 = await confuse(true) || await confuse(false);
  var b8 = await confuse(true) || await confuse(true);

  var list = [b1, b2, b3, b4, b5, b6, b7, b8];
  print(list);
  return !b1 && !b2 && !b3 && b4 && !b5 && b6 && b7 && b8;
}

String trace = "";

bool traceA(bool x) {
  trace += "a";
  return x;
}

bool traceB(bool x) {
  trace += "b";
  return x;
}

Future testEvaluation(Future fn()) async {
  trace = "";
  return await fn();
}

Future<bool> test2() async {
  var b1 = await testEvaluation(() async {
    var b1 = await confuse(traceA(false)) && await confuse(traceB(false));
    var b2 = "a" == trace;
    var list = [b1, b2];
    print(list);
    return list[0] && list[1];
  });
  var b2 = await testEvaluation(() async {
    var b1 = await confuse(traceA(false)) && await confuse(traceB(true));
    bool b2 = "a" == trace;
    var list = [b1, b2];
    print(list);
    return list[0] && list[1];
  });
  var b3 = await testEvaluation(() async {
    var b1 = await confuse(traceA(true)) && await confuse(traceB(false));
    var b2 = "ab" == trace;
    var list = [b1, b2];
    print(list);
    return list[0] && list[1];
  });
  var b4 = await testEvaluation(() async {
    var b1 = await confuse(traceA(true)) && await confuse(traceB(true));
    var b2 = "ab" == trace;
    var list = [b1, b2];

    print(list);
    return list[0] && list[1];
  });

  var b5 = await testEvaluation(() async {
    var b1 = await confuse(traceA(false)) || await confuse(traceB(false));
    var b2 = "ab" == trace;
    var list = [b1, b2];

    print(list);
    return list[0] && list[1];
  });
  var b6 = await testEvaluation(() async {
    var b1 = await confuse(traceA(false)) || await confuse(traceB(true));
    var b2 = "ab" == trace;
    var list = [b1, b2];
    print(list);
    return list[0] && list[1];
  });
  var b7 = await testEvaluation(() async {
    var b1 = await confuse(traceA(true)) || await confuse(traceB(false));
    var b2 = "a" == trace;
    var list = [b1, b2];
    print(list);
    return list[0] && list[1];
  });
  var b8 = await testEvaluation(() async {
    var b1 = await confuse(traceA(true)) || await confuse(traceB(true));
    var b2 = "a" == trace;
    var list = [b1, b2];
    print(list);
    return list[0] && list[1];
  });

  var list = [b1, b2, b3, b4, b5, b6, b7, b8];
  print(list);
  return !b1 && !b2 && !b3 && b4 && !b5 && b6 && b7 && b8;
}

Future<bool> test() async {
  bool b1 = await test1();
  bool b2 = await test2();
  var list = [b1, b2];
  print(list);
  return list[0] && list[1];
}

Future<String> main() async {
  var r = await test().then((r) => "test complete $r");
  print(r);
  return r;
}
