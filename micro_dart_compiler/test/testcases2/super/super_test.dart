int i = 0;

// Tests super calls and constructors.
main() {
  Sub sub = new Sub(1, 2);
  assert(1 == sub.x);
  assert(2 == sub.y);
  assert(3 == sub.z);
  assert(1 == sub.v);
  assert(2 == sub.w);
  assert(3 == sub.u);

  sub = new Sub.stat();
  assert(2 == sub.x);
  assert(3 == sub.y);
  assert(0 == sub.v);
  assert(1 == sub.w);
  assert(4 == sub.z);
  assert(5 == sub.u);
}

class Sup {
  var x, y, z;

  Sup(a, b)
      : this.x = a,
        this.y = b {
    z = a + b;
  }

  Sup.stat()
      : this.x = i++,
        this.y = i++ {
    z = i++;
  }
}

class Sub extends Sup {
  var u, v, w;

  Sub(a, b)
      : this.v = a,
        this.w = b,
        super(a, b) {
    u = a + b;
  }

  Sub.stat()
      : this.v = i++,
        this.w = i++,
        super.stat() {
    u = i++;
  }
}
