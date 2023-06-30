String main() {
  return test(#a, #a);
}

String test(Symbol a, Symbol b) {
  print(a);
  print(b);
  return a.toString();
}
