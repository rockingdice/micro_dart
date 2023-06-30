int main() {
  var myfunc = (a) {
    return a + 1;
  };

  var myfunc2 = ({a, b}) {
    return a + b + 1;
  };

  return myfunc(1) + myfunc2(a: 4, b: 2);
}
