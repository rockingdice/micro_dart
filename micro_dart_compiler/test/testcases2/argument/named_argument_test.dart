bool main() {
  var c1 = ({b, a}) => 'a: $a b: $b';
  var c2 = ({a, b}) => 'a: $a b: $b';
  var b1 = 'a: 2 b: 1' == c1(b: 1, a: 2);
  var b2 = 'a: 1 b: 2' == c1(a: 1, b: 2);
  var b3 = 'a: 2 b: 1' == c2(b: 1, a: 2);
  var b4 = 'a: 1 b: 2' == c2(a: 1, b: 2);
  print(b1);
  print(b2);
  print(b3);
  print(b4);
  return b1 && b2 && b3 && b4;
}
