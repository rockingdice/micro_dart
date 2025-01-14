dynamic get d => "hello";

String main() {
  var b1 = d.runtimeType == String;
  var b2 = d?.runtimeType == String;
  var b3 = d?.runtimeType == "hello";
  var b4 = d.hashCode == "hello".hashCode;
  var b5 = d?.hashCode == "hello".hashCode;
  var b6 = d.toString() == "hello";
  var b7 = d?.toString() == "hello";

  var list = [b1, b2, b3, b4, b5, b6, b7];
  var r = list.join();
  print(r);
  return r;
}
