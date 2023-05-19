int main() {
  var i = 3;
  {
    var k = 2;
    i = k;
    if (i > 2) {
      return i;
    }
  }
  return i;
}
