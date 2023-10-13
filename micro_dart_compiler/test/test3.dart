void main() async {
  var a = A();
  var b = A();

  var type1 = a.runtimeType;
  var type2 = b.runtimeType;
  print(type1 == type2);
}

class A {}
