class Bar {}

checkIt(f) {
  f.i = 'hi';
  print(f.i);
  print(f.i());
}

main() {
  checkIt(Bar());
}
