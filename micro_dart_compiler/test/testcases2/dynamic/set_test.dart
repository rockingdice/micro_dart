class C {
  var x = "hello";
  get y => ", ";
  m() => "world!";
}

String main() {
  dynamic c = C();

  var b1 = c.x + c.y + c.m() == "hello, world!";

  c.x = '1';

  var b2 = c.x + c.y + c.m() == "hello, world!";

  var list = [b1, b2];
  var r = list.join();
  print(r);
  return r;
}
