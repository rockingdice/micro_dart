class AssignOpTest {
  AssignOpTest() {}

  static var f;
  var instf;

  static testMain() {
    var b = 0;
    b += 1;
    assert(1 == b);
    b *= 5;
    assert(5 == b);
    b -= 1;
    assert(4 == b);
    b ~/= 2;
    assert(2 == b);

    f = 0;
    f += 1;
    assert(1 == f);
    f *= 5;
    assert(5 == f);
    f -= 1;
    assert(4 == f);
    f ~/= 2;
    assert(2 == f);
    f /= 4;
    assert(.5 == f);

    AssignOpTest.f = 0;
    AssignOpTest.f += 1;
    assert(1 == AssignOpTest.f);
    AssignOpTest.f *= 5;
    assert(5 == AssignOpTest.f);
    AssignOpTest.f -= 1;
    assert(4 == AssignOpTest.f);
    AssignOpTest.f ~/= 2;
    assert(2 == AssignOpTest.f);
    AssignOpTest.f /= 4;
    assert(.5 == AssignOpTest.f);

    var o = new AssignOpTest();
    o.instf = 0;
    o.instf += 1;
    assert(1 == o.instf);
    o.instf *= 5;
    assert(5 == o.instf);
    o.instf -= 1;
    assert(4 == o.instf);
    o.instf ~/= 2;
    assert(2 == o.instf);
    o.instf /= 4;
    assert(0.5 == o.instf);

    var x = 0xFF;
    x >>= 3;
    assert(0x1F == x);
    x <<= 3;
    assert(0xF8 == x);
    x |= 0xF00;
    assert(0xFF8 == x);
    x &= 0xF0;
    assert(0xF0 == x);
    x ^= 0x11;
    assert(0xE1 == x);

    var y = 100;
    y += 1 << 3;
    assert(108 == y);
    y *= 2 + 1;
    assert(324 == y);
    y -= 3 - 2;
    assert(323 == y);
    y += 3 * 4;
    assert(335 == y);

    var a = [1, 2, 3];
    var ix = 0;
    a[ix] |= 12;
    assert(13 == a[ix]);
  }
}

main() {
  AssignOpTest.testMain();
}
