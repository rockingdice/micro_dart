String main() {
  dynamic x = 3;
  var h1 = 3.0.hashCode;
  var h2 = x.hashCode;
  var r = "$h1 $h2 ${h1 == h2}";
  print(r);
  return r;
}
