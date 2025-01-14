import 'dart:async';

topLevelFunction() async {}

Future<int> topLevelWithParameter(int a) async {
  return 7 + a;
}

topLevelWithParameterWrongType(int a) async {
  return 7 + a;
}

var what = 'async getter';
Future<String> get topLevelGetter async {
  return 'I want to be an ${what}';
}

class A {
  static int staticVar = 1;

  static staticMethod(int param) async => staticVar + param;
  static get staticGetter async => staticVar + 3;

  int _x;
  A(this._x);

  operator +(A other) async {
    return new A(_x + other._x);
  }

  get value => _x;
}

class B {
  final _y;
  const B._internal(this._y);

  B() : _y = null;
}

Future<bool> main() async {
  Future asyncReturn;

  asyncReturn = topLevelFunction();

  asyncReturn = topLevelWithParameter(4);

  bool b1 = await asyncReturn.then((result) {
    return result == 11;
  });

  asyncReturn = topLevelGetter;

  bool b2 = await asyncReturn.then((result) {
    return result == 'I want to be an async getter';
  });

  asyncReturn = A.staticMethod(2);

  bool b3 = await asyncReturn.then((result) {
    return result == 3;
  });

  asyncReturn = A.staticGetter;

  bool b4 = await asyncReturn.then((result) {
    return result == 4;
  });

  A a = A(13);

  var b = A(9);
  asyncReturn = a + b;

  bool b5 = await asyncReturn.then((result) {
    return (result as A).value == 22;
  });

  var foo = 17;
  bar(int p1, p2) async {
    var z = 8;
    return p2 + z + foo;
  }

  asyncReturn = bar(1, 2);

  bool b6 = await asyncReturn.then((result) {
    return result == 27;
  });

  var moreNesting = (int shadowP1, String p2, num p3) {
    var z = 3;
    aa(int shadowP1) async {
      return foo + z + p3 + shadowP1;
    }

    return aa(6);
  };
  asyncReturn = moreNesting(1, "ignore", 2);

  bool b7 = await asyncReturn.then((result) {
    return result == 28;
  });

  var checkAsync = (someFunc) {
    var toTest = someFunc();

    return toTest.then((int result) {
      return result == 4;
    });
  };
  bool b8 = await checkAsync(() async => 4);
  var list = [b1, b2, b3, b4, b5, b6, b7, b8];
  print(list);
  return b1 && b2 && b3 && b4 && b5 && b6 && b7 && b8;
}
