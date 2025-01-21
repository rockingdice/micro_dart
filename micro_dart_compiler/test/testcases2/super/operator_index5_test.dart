class A {
  var indexField = new List<dynamic>.filled(2, null);
  operator [](index) => indexField[index];

  operator []=(index, value);

  noSuchMethod(Invocation im) {
    if (im.memberName == const Symbol('[]=')) {
      assert(2 == im.positionalArguments.length);
      indexField[im.positionalArguments[0]] = im.positionalArguments[1];
    } else if (im.memberName == const Symbol('[]')) {
      assert(1 == im.positionalArguments.length);
      return indexField[im.positionalArguments[0]];
    } else {
      print('Should not reach here');
    }
  }
}

class B extends A {
  test() {
    super[0] = 42;
    assert(42 == super[0]);
    super[0] += 1;
    assert(43 == super[0]);
    super[0]++;

    assert(44 == super[0]);

    super[0] = 2;
    assert(2 == super[0]);
    super[0] += 1;
    assert(3 == super[0]);
    super[0]++;
    assert(4 == super[0]);
  }
}

main() {
  new B().test();
}
