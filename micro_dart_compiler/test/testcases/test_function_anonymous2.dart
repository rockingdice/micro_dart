int g1 = 1;

int main() {
  var fn1 = (int i, int j) {
    return j - i;
  };

  var fn2 = gFun;

  int d = 7;

  int add(int a, int b, {int c = 0}) {
    return a + b + c + d;
  }

  int r = add(fn2()(), fn1(4, 5), c: 6);
  print(r);
  return r;
}

Function gFun() {
  return () {
    return 2 + g1;
  };
}
