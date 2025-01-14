abstract class Iface<K, V> {}

class M1<K, V> implements Iface<K, V> {}

class M2<K> implements Iface<K, dynamic> {}

class M3 implements Iface<String, dynamic> {}

typedef dynamic F1<T>(dynamic x, T y);

class HasFieldDynamic {
  HasFieldDynamic() : dynamic = "dynamic" {}
  var dynamic;
}

class HasMethodDynamic {
  dynamic() => "dynamic";
}

bool test1() {
  return dynamic is Type;
}

bool test2() {
  return dynamic == dynamic;
}

bool test3() {
  M1<dynamic, dynamic> m1 = M1<dynamic, dynamic>();
  return m1 is Iface<dynamic, num>;
}

bool test4() {
  M1<dynamic, dynamic> m1 = M1<dynamic, dynamic>();
  return m1 is Iface<String, dynamic>;
}

bool test5() {
  M1<dynamic, dynamic> m1 = M1<dynamic, dynamic>();
  return m1 is Iface<String, num>;
}

bool test6() {
  M1<dynamic, dynamic> m1 = M1<dynamic, dynamic>();
  return m1 is Iface<num, String>;
}

bool test7() {
  M2<dynamic> m2 = new M2<dynamic>();
  return m2 is Iface<dynamic, num>;
}

bool test8() {
  M2<dynamic> m2 = new M2<dynamic>();
  return m2 is Iface<String, dynamic>;
}

bool test9() {
  M2<dynamic> m2 = new M2<dynamic>();
  return m2 is Iface<String, num>;
}

bool test10() {
  M2<dynamic> m2 = new M2<dynamic>();
  return m2 is Iface<num, String>;
}

bool test11() {
  M2<dynamic> m2 = new M2<dynamic>();
  return m2 is Iface<num, String>;
}

String main() {
  // dynamic is a top-type, equivalent to Object at runtime.

  var b1 = dynamic is Type;
  var b2 = dynamic == dynamic;

  // dynamic is not a subtype of num or String.
  M1<dynamic, dynamic> m1 = new M1<dynamic, dynamic>();

  var b3 = m1 is Iface<dynamic, num>;
  var b4 = m1 is Iface<String, dynamic>;
  var b5 = m1 is Iface<String, num>;
  var b6 = m1 is Iface<num, String>;

  M2<dynamic> m2 = new M2<dynamic>(); // is Iface<dynamic, dynamic>.
  var b7 = m2 is Iface<dynamic, num>;
  var b8 = m2 is Iface<String, dynamic>;
  var b9 = m2 is Iface<String, num>;
  var b10 = m2 is Iface<num, String>;

  M3 m3 = new M3(); // is IFace<String, dynamic>.

  var b11 = m3 is Iface<dynamic, num>;
  var b12 = m3 is Iface<String, dynamic>;
  var b13 = m3 is Iface<String, num>;
  var b14 = m3 is! Iface<num, String>;

  F1<int> f1 = (dynamic s, int i) => s[i]; // is dynamic Function(dynamic, int).

  var b15 = f1 is F1<int>;

  // "dynamic" is not a reserved word or built-in identifier.

  HasFieldDynamic has_field = new HasFieldDynamic();

  var b16 = "dynamic" == has_field.dynamic;

  HasMethodDynamic has_method = new HasMethodDynamic();

  var b17 = "dynamic" == has_method.dynamic();

  var list = [
    b1,
    b2,
    b3,
    b4,
    b5,
    b6,
    b7,
    b8,
    b9,
    b10,
    b11,
    b12,
    b13,
    b14,
    b15,
    b16,
    b17
  ];
  print(list);
  var r = list.join();
  print(r);
  return list.join();
}
