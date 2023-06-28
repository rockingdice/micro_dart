String main() {
  var ite = Iterable.generate(5, (i) => i);

  var s = ite.join();
  print(s);
  return s;
}
