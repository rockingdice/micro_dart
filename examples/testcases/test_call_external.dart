int main() {
  var i = 3;
  {
    int c = 3;
    var k = fn1(0, i, c: 2);
    i = k;
    nothing();
  }
  return i;
}

int fn1(int a, int b, {int c = 1, int d = 2, int e = 3}) {
  return a + b + c + d + e;
}

void nothing() {
  print("nothing");
}
