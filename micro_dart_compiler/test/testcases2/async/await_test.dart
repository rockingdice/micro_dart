import "dart:async";

typedef dynamic DynamicToDynamic(dynamic d);

Future test1() {
  f() async {
    return id(42);
  }

  return expect42(f());
}

Future test2() {
  // Calling an "async" function starts immediately.
  var result = [];
  f() async {
    result.add(1);
    return id(42);
  }

  ;
  var future = f();
  result.add(0);
  return future.whenComplete(() {
    expect(result, equals([1, 0]));
  });
}

Future test3() {
  f() async {
    var v = await new Future.value(42);
    return v;
  }

  ;
  return expect42(f());
}

Future test4() {
  f() async {
    var v = await id(42);
    return v;
  }

  ;
  return expect42(f());
}

Future test5() {
  f() async {
    var v = await null;
    expect(v, equals(null));
  }

  ;
  return f();
}

Future test6() {
  f() async {
    return await await new Future.value(42);
  }

  return expect42(f());
}

Future test7() {
  f() async {
    return await Future.value(42);
  }

  return expect42(f());
}

Future test8() {
  f() async {
    return await Future.error("err");
  }

  return throwsErr(f());
}

Future test9() {
  f() async {
    bool x = false;
    scheduleMicrotask(() {
      x = true;
    });
    var y = await true;
    expect(x, equals(y));
  }

  return f();
}

Future test10() {
  f(v) async {
    assert(v == 87);
    return await new Future.microtask(() => 42);
  }

  return f(42).then((_) {
    fail("assert didn't throw");
  }, onError: (e, s) {
    expect(e is AssertionError, isTrue);
  });
}

Future test11() {
  f(v) async {
    var x = await new Future.microtask(() => 42);
    assert(v == 87);
    return x;
  }

  return f(42).then((_) {
    fail("assert didn't throw");
  }, onError: (e, s) {
    expect(e is AssertionError, isTrue);
  });
}

Future test12() {
  f() async {
    await new Future.error("err");
    return id(42);
  }

  return throwsErr(f());
}

Future test13() {
  f() async {
    return new Future.value(42); // Not awaited.
  }

  ;
  return f().then((v) {
    expect(v, equals(42)); // And not a Future with value 42.
  });
}

Future test14() {
  f() async {
    return new Future.error("err"); // Not awaited.
  }

  return throwsErr(f());
}

Future test15() {
  f(Stream<int> s) async {
    int i = 0;
    await for (int v in s) {
      i += v;
    }
    return i;
  }

  return f(mkStream()).then((v) {
    expect(v, equals(45)); // 0 + 1 + ... + 9
  });
}

Future test16() {
  f(Stream<int> s) async {
    int i = 0;
    await for (int v in s) {
      i += await new Future.value(v);
    }
    return i;
  }

  return f(mkStream()).then((v) {
    expect(v, equals(45)); // 0 + 1 + ... + 9
  });
}

Future test17() {
  f(Stream<int> s) async {
    int v = 0;
    await for (int i in s) {
      v += i;
    }
    return v;
  }

  var s = (new StreamController<int>()..close()).stream;
  return f(s).then((v) {
    expect(v, equals(0));
  });
}

Future test18() {
  f(Stream<int> s) async {
    int i = 0;
    await for (int v in s) {
      i += await new Future.microtask(() => v);
      assert(v < 8);
    }
    return i;
  }

  return f(mkStream()).then((v) {
    fail("assert didn't throw");
  }, onError: (e, s) {
    expect(e is AssertionError, isTrue);
  });
}

Future test19() {
  f() async {
    int v = 0;
    for (int i = 0; i < 10; i++) {
      v += await new Future.value(42);
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(10 * id(42)));
  });
}

Future test20() {
  f() async {
    int v = 0;
    for (int i = 0; i < 10; i++) {
      v += await new Future.value(42);
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(10 * id(42)));
  });
}

Future test21() {
  f() async {
    int v = 0;
    for (int i = await new Future.value(42); i >= 0; i -= 10) {
      v += 10;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(10 * 5));
  });
}

Future test22() {
  f() async {
    int v = 0;
    for (int i = 0; i < 100; i += await new Future.value(42)) {
      v += 10;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(10 * 3));
  });
}

Future test23() {
  f() async {
    int v = 0;
    for (int i = await new Future.error("err"); i >= 0; i -= 10) {
      v += 10;
    }
    return v;
  }

  return throwsErr(f());
}

Future test24() {
  f() async {
    int v = 0;
    for (int i = 0; i < 10; i++) {
      v += await new Future.error("err");
    }
    return v;
  }

  return throwsErr(f());
}

Future test25() {
  f() async {
    int v = 0;
    for (int i = 0; i < await new Future.error("err"); i += 10) {
      v += 10;
    }
    return v;
  }

  return throwsErr(f());
}

Future test26() {
  f() async {
    int v = 0;
    for (int i = 0; i > 0; i += 1) {
      v += await new Future.value(42);
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(0));
  });
}

Future test27() {
  f() async {
    int v = 0;
    for (int i = 0; i < 100; i += await new Future.error("err")) {
      v += 10;
    }
    return v;
  }

  return throwsErr(f());
}

Future test28() {
  f() async {
    int v = 0;
    for (int i = 0; i > 0; i += await new Future.value(1)) {
      v += 1;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(0));
  });
}

Future test29() {
  f() async {
    int v = 0;
    for (int i = 0; i < 10; i += 1) {
      if (i == 2) break;
      v += await new Future.value(42);
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(42 * 2));
  });
}

Future test30() {
  f() async {
    int v = 0;
    for (int i = 0; i < 10; i += await new Future.value(1)) {
      if (i == 2) break;
      v += id(42) as int;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(42 * 2));
  });
}

Future test31() {
  f() async {
    int v = 0;
    for (int i = 0; i < 10; i += 1) {
      if (i == 2) continue;
      v += await new Future.value(42);
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(42 * 9));
  });
}

Future test32() {
  f() async {
    int v = 0;
    for (int i = 0; i < 10; i += 1) {
      var j = await new Future.value(42);
      if (i == 2) continue;
      v += j;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(42 * 9));
  });
}

Future test33() {
  f() async {
    int v = 0;
    int i = 0;
    while (i < 10) {
      v += await new Future.value(42);
      i++;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(10 * id(42)));
  });
}

Future test34() {
  f() async {
    int v = 0;
    int i = 0;
    while (i < await new Future.value(42)) {
      v += 10;
      i += 10;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(10 * 5));
  });
}

Future test35() {
  f() async {
    int v = 0;
    int i = 0;
    while (i < 10) {
      v += await new Future.error("err");
      i++;
    }
    return v;
  }

  return throwsErr(f());
}

Future test36() {
  f() async {
    int v = 0;
    int i = 0;
    while (i < await new Future.error("err")) {
      v += 10;
      i += 10;
    }
    return v;
  }

  return throwsErr(f());
}

Future test37() {
  f() async {
    int v = 0;
    int i = 0;
    while (i < 10) {
      if (i == 2) break;
      v += await new Future.value(42);
      i += 1;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(42 * 2));
  });
}

Future test38() {
  f() async {
    int v = 0;
    int i = 0;
    while (i < 10) {
      v += await new Future.value(42);
      if (i == 2) break;
      i += 1;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(42 * 3));
  });
}

Future test39() {
  f() async {
    int v = 0;
    int i = 0;
    while (i < 10) {
      i += 1;
      if (i == 2) continue;
      v += await new Future.value(42);
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(42 * 9));
  });
}

Future test40() {
  f() async {
    int v = 0;
    int i = 0;
    while (i < 10) {
      i += 1;
      int j = await new Future.value(42);
      if (i == 2) continue;
      v += j;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(42 * 9));
  });
}

Future test41() {
  f() async {
    int v = 0;
    int i = 0;
    do {
      v += await new Future.value(42);
      i++;
    } while (i < 10);
    return v;
  }

  return f().then((v) {
    expect(v, equals(10 * id(42)));
  });
}

Future test42() {
  f() async {
    int v = 0;
    int i = 0;
    do {
      v += 10;
      i += 10;
    } while (i < await new Future.value(42));
    return v;
  }

  return f().then((v) {
    expect(v, equals(10 * 5));
  });
}

Future test43() {
  f() async {
    int v = 0;
    int i = 0;
    do {
      v += await new Future.error("err");
      i++;
    } while (i < 10);
    return v;
  }

  return f().then((v) {
    fail("didn't throw");
  }, onError: (e) {
    expect(e, equals("err"));
  });
}

Future test44() {
  f() async {
    int v = 0;
    int i = 0;
    do {
      v += 10;
      i += 10;
    } while (i < await new Future.error("err"));
    return v;
  }

  return f().then((v) {
    fail("didn't throw");
  }, onError: (e) {
    expect(e, equals("err"));
  });
}

Future test45() {
  f() async {
    int v = 0;
    int i = 0;
    do {
      if (i == 2) break;
      v += await new Future.value(42);
      i += 1;
    } while (i < 10);
    return v;
  }

  return f().then((v) {
    expect(v, equals(42 * 2));
  });
}

Future test46() {
  f() async {
    int v = 0;
    int i = 0;
    do {
      v += await new Future.value(42);
      if (i == 2) break;
      i += 1;
    } while (i < 10);
    return v;
  }

  return f().then((v) {
    expect(v, equals(42 * 3));
  });
}

Future test47() {
  f() async {
    int v = 0;
    int i = 0;
    do {
      i += 1;
      if (i == 2) continue;
      v += await new Future.value(42);
    } while (i < 10);
    return v;
  }

  return f().then((v) {
    expect(v, equals(42 * 9));
  });
}

Future test48() {
  f() async {
    int v = 0;
    int i = 0;
    do {
      i += 1;
      int j = await new Future.value(42);
      if (i == 2) continue;
      v += j;
    } while (i < 10);
    return v;
  }

  return f().then((v) {
    expect(v, equals(42 * 9));
  });
}

Future test49() {
  f() async {
    var v = 0;
    for (var fut in [1, 2, 3].map((v) => new Future.value(v))) {
      v += await fut;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(6));
  });
}

Future test50() {
  f() async {
    var v = 0;
    for (var i in await new Future.value([1, 2, 3])) {
      v += i;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(6));
  });
}

Future test51() {
  f() async {
    int v = 0;
    for (Future<int> fut in (<int>[1, 2, 3].map<Future<int>>(
        (v) => (v != 1) ? Future<int>.value(v) : Future<int>.error("err")))) {
      v += await fut;
    }
    return v;
  }

  return f().then((v) {
    fail("didn't throw");
  }, onError: (e) {
    expect(e, equals("err"));
  });
}

Future test52() {
  f() async {
    int v = 0;
    for (int i in await Future.error("err")) {
      v += i;
    }
    return v;
  }

  return f().then((v) {
    fail("didn't throw");
  }, onError: (e) {
    expect(e, equals("err"));
  });
}

Future test53() {
  f() async {
    var v = 0;
    for (var fut in [1, 2, 3].map((v) => new Future.value(v))) {
      if (v == 3) break;
      v += await fut;
    }
    return v;
  }

  return f().then((v) {
    expect(v, equals(3));
  });
}

Future test54() {
  f() async {
    try {
      return await id(42);
    } catch (e) {
      return 37;
    }
  }

  return expect42(f());
}

Future test55() {
  f() async {
    try {
      await new Future.error(42);
    } catch (e) {
      return e;
    }
  }

  return expect42(f());
}

Future test56() {
  int i = id(0);
  f() async {
    try {
      if (i >= 0) throw id(42);
      return await new Future.value(10);
    } catch (e) {
      return e;
    }
  }

  return expect42(f());
}

Future test57() {
  f() async {
    try {
      throw id(42);
    } catch (e) {
      return await new Future.value(e);
    }
  }

  return expect42(f());
}

Future test58() {
  f() async {
    try {
      throw id(42);
    } catch (e) {
      await new Future.error("err");
    }
  }

  return f().then((v) {
    fail("didn't throw");
  }, onError: (e) {
    expect(e, equals("err"));
  });
}

Future test59() {
  f() async {
    try {
      await new Future.error("err");
    } catch (e) {
      if (e == id(42)) return;
      rethrow;
    }
  }

  return f().then((v) {
    fail("didn't throw");
  }, onError: (e) {
    expect(e, equals("err"));
  });
}

Future test60() {
  f() async {
    try {
      return await new Future.value(42);
    } finally {
      // Don't do anything.
    }
  }

  return expect42(f());
}

Future test61() {
  var x = 0;
  f() async {
    try {
      return id(42);
    } finally {
      x = await new Future.value(37);
    }
  }

  return f().then((v) {
    expect(v, equals(42));
    expect(x, equals(37));
  });
}

Future test62() {
  f() async {
    try {
      return await new Future.error("err");
    } finally {
      // Don't do anything.
    }
  }

  return f().then((v) {
    fail("didn't throw");
  }, onError: (e) {
    expect(e, equals("err"));
  });
}

Future test63() {
  f() async {
    try {
      return id(42);
    } finally {
      await new Future.error("err");
    }
  }

  return f().then((v) {
    fail("didn't throw");
  }, onError: (e) {
    expect(e, equals("err"));
  });
}

Future test64() {
  f() async {
    try {
      await new Future.error("not err");
    } finally {
      await new Future.error("err");
    }
  }

  return f().then((v) {
    fail("didn't throw");
  }, onError: (e) {
    expect(e, equals("err"));
  });
}

test65() {
  f() async {
    try {
      return await new Future.error("err");
    } finally {
      return id(42);
    }
  }

  return expect42(f());
}

test66() {
  f() async {
    label:
    try {
      return await new Future.value(37);
    } finally {
      break label;
    }
    return id(42);
  }

  return expect42(f());
}

test67() {
  var x = 0;
  f() async {
    label:
    try {
      return 87;
    } finally {
      x = await new Future.value(37);
      break label;
    }
    return id(42);
  }

  return f().then((v) {
    expect(v, equals(42));
    expect(x, equals(37));
  });
}

test68() {
  var x = 0;
  f() async {
    label:
    try {
      throw "err";
    } finally {
      x = await new Future.value(37);
      break label;
    }
    return id(42);
  }

  return f().then((v) {
    expect(v, equals(42));
    expect(x, equals(37));
  });
}

test69() {
  f() async {
    label:
    try {
      return await new Future.error("err");
    } finally {
      break label;
    }
    return id(42);
  }

  return expect42(f());
}

test70() {
  f() async {
    for (int i = 0; i < 10; i++) {
      try {
        return await i;
      } finally {
        continue;
      }
    }
    return id(42);
  }

  return expect42(f());
}

test71() {
  f() async {
    int i = 0;
    for (; i < 10; i++) {
      try {
        break;
      } finally {
        await new Future.value(42);
        continue;
      }
    }
    return id(i);
  }

  return f().then((v) {
    expect(v, equals(10));
  });
}

test72() {
  f() async {
    int i = 0;
    for (; i < 10; i++) {
      try {
        continue;
      } finally {
        await new Future.value(42);
        break;
      }
    }
    return id(i);
  }

  return f().then((v) {
    expect(v, equals(0));
  });
}

test73() {
  f() async {
    for (int i = 0; i < 10; i++) {
      try {
        return i;
      } finally {
        if (i >= 0) continue;
        await new Future.value(42);
      }
    }
    return id(42);
  }

  return expect42(f());
}

test74() {
  f() async {
    for (int i = 0; i < 10; i++) {
      try {
        return i;
      } finally {
        await new Future.value(42);
        continue;
      }
    }
    return id(42);
  }

  return expect42(f());
}

test75() {
  var x = 0;
  f() async {
    try {
      try {
        return 42;
      } finally {
        x = await new Future.value(37);
      }
    } finally {
      x += await new Future.value(37);
    }
  }

  return f().then((v) {
    expect(v, equals(42));
    expect(x, equals(74));
  });
}

test76() {
  var x = 0;
  f() async {
    label:
    try {
      try {
        break label;
      } finally {
        x = await new Future.value(37);
      }
    } finally {
      x += await new Future.value(37);
    }
    return 42;
  }

  return f().then((v) {
    expect(v, equals(42));
    expect(x, equals(74));
  });
}

test77() {
  var x = 0;
  f() async {
    label:
    try {
      try {
        break label;
      } finally {
        return await new Future.value(42);
      }
    } finally {
      break label;
    }
    return 42;
  }

  return expect42(f());
}

test78() {
  var x = 0;
  f() async {
    try {
      try {
        throw "err";
      } finally {
        x = await new Future.value(37);
      }
    } finally {
      x += await new Future.value(37);
    }
  }

  return f().then((v) {
    fail("didn't throw");
  }, onError: (e) {
    expect(e, equals("err"));
    expect(x, equals(2 * 37));
  });
}

test79() {
  f() async {
    try {
      return await new Future.value(42);
    } catch (e) {
      throw Future.value(null);
    } finally {
      if (id(42) == id(10)) return 10;
    }
  }

  return expect42(f());
}

test80() {
  f() async {
    try {
      return id(42);
    } catch (e) {
      await new Future.error("err");
    } finally {
      if (id(42) == id(10)) return 10;
    }
  }

  return expect42(f());
}

test81() {
  f() async {
    try {
      return throw id(42);
    } catch (e) {
      return await new Future.value(e);
    } finally {
      if (id(42) == id(10)) return 10;
    }
  }

  return expect42(f());
}

test82() {
  var x = 0;
  f() async {
    try {
      return id(42);
    } catch (e) {
      throw Future.value(null);
    } finally {
      x = await new Future.value(37);
      if (id(42) == id(10)) return 10;
    }
  }

  return f().then((v) {
    expect(v, equals(42));
    expect(x, equals(37));
  });
}

test83() {
  f(v) async {
    switch (await new Future.value(v)) {
      case 1:
        return 1;
      case 2:
        return 42;
      default:
        return 3;
    }
  }

  return expect42(f(2));
}

test84() {
  f(v) async {
    switch (await new Future.error("err")) {
      case 1:
        return 1;
      case 2:
        return 42;
      default:
        return 3;
    }
  }

  return throwsErr(f(2));
}

test85() {
  f(v) async {
    if (await new Future.value(v)) {
      return 42;
    } else {
      return 37;
    }
  }

  return expect42(f(true));
}

test86() {
  f(v) async {
    switch (v) {
      case 1:
        return 1;
      case 2:
        return await new Future.value(42);
      default:
        return 3;
    }
  }

  return expect42(f(2));
}

test87() {
  f(v) async {
    switch (v) {
      case 1:
        return 1;
      case 2:
        return await new Future.error("err");
      default:
        return 3;
    }
  }

  return throwsErr(f(2));
}

test88() {
  f(v) async {
    if (await new Future.error("err")) {
      return 42;
    } else {
      return 37;
    }
  }

  return throwsErr(f(true));
}

test89() {
  f(v) async {
    if (v) {
      return await new Future.value(42);
    }
    return 37;
  }

  return expect42(f(true));
}

test90() {
  f(v) async {
    if (v) {
      return await new Future.error("err");
    }
    return 37;
  }

  return throwsErr(f(true));
}

test91() {
  f(v) async {
    if (v) {
      return await new Future.value(42);
    } else {
      return 87;
    }
  }

  return expect42(f(true));
}

test92() {
  f(v) async {
    if (v) {
      return await new Future.error("err");
    } else {
      return 87;
    }
  }

  return throwsErr(f(true));
}

test93() {
  f(v) async {
    if (v) {
      return 37;
    } else {
      return await new Future.error("err");
    }
  }

  return throwsErr(f(false));
}

test94() {
  f(v) async {
    if (v) {
      return 37;
    } else {
      return await new Future.value(42);
    }
  }

  return expect42(f(false));
}

test95() {
  f(v) async {
    if (v) {
      return 37;
    } else if (!await new Future.value(v)) {
      return 42;
    } else {
      return 37;
    }
  }

  return expect42(f(false));
}

test96() {
  f(v) async {
    if (v) {
      return 37;
    } else if (!v) {
      return await new Future.value(42);
    } else {
      return 37;
    }
  }

  return expect42(f(false));
}

test97() {
  f(v) async {
    return (await new Future.value(v)) ? 42 : 37;
  }

  return expect42(f(true));
}

test98() {
  f(v) async {
    return (await new Future.error("err")) ? 42 : 37;
  }

  return throwsErr(f(true));
}

test99() {
  f() async {
    throw "err";
  }

  return throwsErr(f());
}

test100() {
  f() async {
    await (throw "err"); // Check grammar: Are parentheses necessary?
  }

  return throwsErr(f());
}

test101() {
  f() async {
    await (throw "err"); // Check grammar: Are parentheses necessary?
  }

  return throwsErr(f());
}

test102() {
  f(v) async {
    return v ? (await new Future.value(42)) : 37;
  }

  return expect42(f(true));
}

test103() {
  f(v) async {
    return v ? (await new Future.error("err")) : 37;
  }

  return throwsErr(f(true));
}

test104() {
  f(v) async {
    return v ? 37 : (await new Future.value(42));
  }

  return expect42(f(false));
}

test105() {
  f(v) async {
    return v ? 37 : (await new Future.error("err"));
  }

  return throwsErr(f(false));
}

test106() {
  var f42 = new Future.value(42);
  expect42(topMethod(f42));
  expect42(topArrowMethod(f42));
  expect42(topGetter);
  expect42(topArrowGetter);
  expect42(topLocal(f42));
  expect42(topArrowLocal(f42));
  expect42(topExpression(f42));
  expect42(topArrowExpression(f42));
  expect42(topVarExpression(f42));
  expect42(topVarArrowExpression(f42));
  expect42(Async.staticMethod(f42));
  expect42(Async.staticArrowMethod(f42));
  expect42(Async.staticGetter);
  expect42(Async.staticArrowGetter);
  expect42(Async.staticLocal(f42));
  expect42(Async.staticArrowLocal(f42));
  expect42(Async.staticExpression(f42));
  expect42(Async.staticArrowExpression(f42));
  expect42(Async.staticVarExpression(f42));
  expect42(Async.staticVarArrowExpression(f42));

  // Instance declarations or local declarations in instance functions.
  var async = new Async();
  expect42(async.instanceMethod(f42));
  expect42(async.instanceArrowMethod(f42));
  expect42(async.instanceGetter);
  expect42(async.instanceArrowGetter);
  expect42(async.instanceLocal(f42));
  expect42(async.instanceArrowLocal(f42));
  expect42(async.instanceExpression(f42));
  expect42(async.instanceArrowExpression(f42));
  expect42(async.instanceVarExpression(f42));
  expect42(async.instanceVarArrowExpression(f42));
}

test107() {
  var f42 = new Future.value(42);
  var async = new Async.initializer(f42);
  return expect42(async.initValue);
}

test108() {
  var f42 = new Future.value(42);
  var async = new Async.initializerArrow(f42);
  return expect42(async.initValue);
}

test109() {
  var f42 = new Future.value(42);
  return expect42(asyncInAsync(f42));
}

test110() {
  var f42 = new Future.value(42);
  return expect42(syncInAsync(f42));
}

test111() {
  var f42 = new Future.value(42);
  return expect42(asyncInSync(f42));
}

test112() {
  var f42 = new Future.value(42);
  var async = new Async();
  expect(async.instanceMethod, equals(async.instanceMethod));
  expect(Async.staticMethod, same(Async.staticMethod));
  expect(topMethod, same(topMethod));
}

test113() {
  var l42 = 42;
  f() async {
    return await l42;
  }

  return expect42(f());
}

test114() {
  f(p) async {
    return await p;
  }

  return expect42(f(42));
}

const c42 = 42;
final v42 = 42;

test115() {
  f() async {
    return await v42;
  }

  return expect42(f());
}

test116() {
  f() async {
    return await c42;
  }

  return expect42(f());
}

test117() {
  f() async {
    return -await -42;
  }

  return expect42(f());
}

test118() {
  f() async {
    var v = [42];
    return await v[0];
  }

  return expect42(f());
}

test119() {
  f() async {
    var x = 42;
    return await x++;
  }

  return expect42(f());
}

test120() {
  f() async {
    var v = [42];
    return await v[0]++;
  }

  return expect42(f());
}

test121() {
  f() async {
    var v = [42];
    return await v[await 0]++;
  }

  return expect42(f());
}

test122() {
  f() async {
    var v = [42];
    return await v[await 0]++;
  }

  return expect42(f());
}

test123() {
  f() async {
    var x = 41;
    return await ++x;
  }

  return expect42(f());
}

test124() {
  f() async {
    var v = [41];
    return await ++v[0];
  }

  return expect42(f());
}

test125() {
  f() async {
    var x = 37;
    return await (x = 42);
  }

  return expect42(f());
}

test126() {
  f() async {
    var x = 37;
    return await (x += 5);
  }

  return expect42(f());
}

test127() {
  f() async {
    return await (10 + 11) + await (10 + 11);
  }

  return expect42(f());
}

test128() {
  f(v) async {
    return await ((v == 10) ? new Future.value(42) : 37);
  }

  return expect42(f(10));
}

test129() {
  f() async {
    return await topMethod(42);
  }

  return expect42(f());
}

test130() {
  f() async {
    return await Async.staticMethod(42);
  }

  return expect42(f());
}

test131() {
  f() async {
    var a = new Async();
    return await a.instanceMethod(42);
  }

  return expect42(f());
}

test132() {
  f() async {
    return await topMethod(await 42);
  }

  return expect42(f());
}

test133() {
  f() async {
    return await Async.staticMethod(await 42);
  }

  return expect42(f());
}

test134() {
  f() async {
    var a = new Async();
    return await a.instanceMethod(await 42);
  }

  return expect42(f());
}

test135() {
  f() async {
    return await topGetter;
  }

  return expect42(f());
}

test136() {
  f() async {
    return await Async.staticGetter;
  }

  return expect42(f());
}

test137() {
  f() async {
    var a = new Async();
    return await a.instanceGetter;
  }

  return expect42(f());
}

test138() {
  f() async {
    assert(await new Future.microtask(() => true));
    return 42;
  }

  return expect42(f());
}

test139() {
  //                     //# 03: continued
  f() async {
    //                                         //# 03: continued
    assert(await new Future.microtask(() => false)); //  //# 03: continued
    return 42; //                                        //# 03: continued
  } //                                                   //# 03: continued

  return f().then((_) {
    //                               //# 03: continued
    fail("assert didn't throw"); //                      //# 03: continued
  }, onError: (e, s) {
    //                                //# 03: continued
    expect(e is AssertionError, isTrue); //              //# 03: continued
  }); //                                                 //# 03: continued
}

test140() {
  //         //# 03: continued
  f() async {
    //                                         //# 03: continued
    assert(await new Future.microtask(() => false)); //  //# 03: continued
    return 42; //                                        //# 03: continued
  } //                                                   //# 03: continued

  return f().then((_) {
    //                               //# 03: continued
    fail("assert didn't throw"); //                      //# 03: continued
  }, onError: (e, s) {
    //                                //# 03: continued
    expect(e is AssertionError, isTrue); //              //# 03: continued
  }); //                                                 //# 03: continued
}

test141() {
  // Valid identifiers outside of async function.
  var async = 42;
  expect(async, equals(42));
}

test142() {
  //                        //# 02: ok
  // Valid identifiers outside of async function. //     //# 02: continued
  var await = 42; //                                     //# 02: continued
  expect(await, equals(42)); //                          //# 02: continued
}

test143() {
  // Valid identifiers outside of async function.
  var yield = 42;
  expect(yield, equals(42));
}

expect(value, expectation) {
  if (expectation is bool) {
    assert(value == expectation);
    return;
  }
  if (expectation is List) {
    assert(value == expectation);
    return;
  }
  if (expectation is Function(Object, String)) {
    assert(value == expectation);
    return;
  }
  assert(value == expectation);
}

equals(x) => x;
final isTrue = true;
same(v) => (Object o, String name) => v == o;
fail(message) {
  print("fail $message");
  return message;
}

// End mock.

// Attempt to obfuscates value to avoid too much constant folding.
id(v) {
  try {
    if (v != null) throw v;
  } catch (e) {
    return e;
  }
  return null;
}

// Create a stream for testing "async for-in".
Stream<int> mkStream() {
  StreamController<int> c = StreamController();
  int i = 0;
  next() {
    c.add(i++);
    if (i == 10) {
      c.close();
    } else {
      scheduleMicrotask(next);
    }
  }

  c = new StreamController(onListen: () {
    scheduleMicrotask(next);
  });
  return c.stream;
}

// Check that future contains the error "err".
Future throwsErr(Future future) {
  return future.then((v) {
    fail("didn't throw");
  }, onError: (e) {
    expect(e, equals("err"));
  });
}

// Check that future contains the value 42.
Future expect42(Future future) {
  return future.then((v) {
    expect(v, equals(42));
  });
}

// Various async declarations.

Future topMethod(f) async {
  return await f;
}

Future topArrowMethod(f) async => await f;

Future get topGetter async {
  return await new Future.value(42);
}

Future get topArrowGetter async => await new Future.value(42);

Future topLocal(f) {
  local() async {
    return await f;
  }

  return local();
}

Future topArrowLocal(f) {
  local() async => await f;
  return local();
}

Future topExpression(f) {
  return () async {
    return await f;
  }();
}

Future topArrowExpression(f) {
  return (() async => await f)();
}

DynamicToDynamic topVarExpression = (f) async {
  return await f;
};

var topVarArrowExpression = (f) async => await f;

class Async {
  var initValue;
  Async();

  Async.initializer(f)
      : initValue = (() async {
          return await f;
        }());

  Async.initializerArrow(f) : initValue = ((() async => await f)());

  /* static */
  static Future staticMethod(f) async {
    return await f;
  }

  static Future staticArrowMethod(f) async => await f;

  static Future get staticGetter async {
    return await new Future.value(42);
  }

  static Future get staticArrowGetter async => await new Future.value(42);

  static Future staticLocal(f) {
    local() async {
      return await f;
    }

    return local();
  }

  static Future staticArrowLocal(f) {
    local() async => await f;
    return local();
  }

  static Future staticExpression(f) {
    return () async {
      return await f;
    }();
  }

  static Future staticArrowExpression(f) {
    return (() async => await f)();
  }

  static DynamicToDynamic staticVarExpression = (f) async {
    return await f;
  };

  static var staticVarArrowExpression = (f) async => await f;

  /* instance */
  Future instanceMethod(f) async {
    return await f;
  }

  Future instanceArrowMethod(f) async => await f;

  Future get instanceGetter async {
    return await new Future.value(42);
  }

  Future get instanceArrowGetter async => await new Future.value(42);

  Future instanceLocal(f) {
    local() async {
      return await f;
    }

    return local();
  }

  Future instanceArrowLocal(f) {
    local() async => await f;
    return local();
  }

  Future instanceExpression(f) {
    return () async {
      return await f;
    }();
  }

  Future instanceArrowExpression(f) {
    return (() async => await f)();
  }

  DynamicToDynamic instanceVarExpression = (f) async {
    return await f;
  };

  var instanceVarArrowExpression = (f) async => await f;
}

Future asyncInAsync(f) async {
  inner(f) async {
    return await f;
  }

  return await inner(f);
}

Future asyncInSync(f) {
  inner(f) async {
    return await f;
  }

  return inner(f);
}

Future syncInAsync(f) async {
  inner(f) {
    return f;
  }

  return await inner(f);
}

typedef OnErrorCallback2 = dynamic Function(Object, StackTrace);
typedef OnErrorCallback1 = dynamic Function(Object);
