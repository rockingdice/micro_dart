main() {
  var names = <int>[];

  // Generic type test.
  assert(names is List<int>);

  // Negated generic type test.
  assert(names is! List<String>);

  // Generic type cast.
  assert((names as List<num>).length == 0);

  // Generic type test inside expression.
  assert((names is List<int>));
}
