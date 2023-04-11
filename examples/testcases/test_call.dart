int main() {
  var i = 3;
  {
    var k = addOne(i);
    i = k;
  }
  return i;
}

int addOne(int n, {int m = 10}) {
  return m;
}
