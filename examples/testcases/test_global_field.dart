const g1 = 1;

var g2 = fn2;
var _fn2 = 2;

int main() {
  {
    var k = fn1(fn2, 100);
    fn2 = k;
  }
  return _fn2;
}

int fn1(int p1, int p2, {int n1 = 11, int n2 = 12, int n3 = 13}) {
  return p2;
}

int get fn2 {
  return _fn2;
}

set fn2(int i) {
  _fn2 = i;
}
