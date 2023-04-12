int main() {
  var i = 3;
  {
    var k = fn1(0, i);
    i = k;
    nothing();
  }
  return i;
}

int fn1(int a, int b, {int c = 11, int d = 12, int e = 13}) {
  return b;
}

void nothing() {
  fn1(1, 3);
}
