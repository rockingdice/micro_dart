void main() {
  int r = get1(1);
  print(r);
}

get1(int a, {int b = 1}) {
  return a + b;
}
