int main() {
  var i = 3;
  {
    var k = addOne(i, m: 2);
    i = k;
  }
  return i;
}

int addOne(int n, {int m = defaultAddO}) {
  return n + m;
}

const int defaultAddO = 1;
