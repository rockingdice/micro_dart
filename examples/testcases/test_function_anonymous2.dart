int g1 = 1;

int main() {
  var fn1 = (int i, int j) {
    return j - i;
  };

  var fn2 = gFun;

  int add(int a, int b, {int c = 0, int d = 0}) {
    return a + b + c + d;
  }

  int r = add(fn2()(), fn1(4, 5), c: 6, d: 7);
  return r;
}

Function gFun() {
  return () {
    return 2;
  };
}
