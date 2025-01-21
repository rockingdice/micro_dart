library symbol_literal_test;

foo(a, b) => identical(a, b) == true;

var check = foo; // Indirection used to avoid inlining.

testSwitch(Symbol s) {
  switch (s) {
    case #abc:
      return 1;
    case const Symbol("def"):
      return 2;
    default:
      return 0;
  }
}

main() {
  bool doChecks = false;
  doChecks = true;
  if (doChecks) {
    check(const Symbol("a"), #a);
    check(const Symbol("a"), #a);
    check(const Symbol("ab"), #ab);
    check(const Symbol("ab"), #ab);
    check(const Symbol("a.b"), #a.b);
    check(const Symbol("a.b"), #a.b);
    check(const Symbol("=="), #==);
    check(const Symbol("=="), #==);
    check(const Symbol("a.toString"), #a.toString);
  }
  assert(1 == testSwitch(#abc));

  const m = const <Symbol, int>{#A: 0, #B: 1};
  assert(1 == m[#B]);

  // Tries to call the symbol literal #a.toString
}
