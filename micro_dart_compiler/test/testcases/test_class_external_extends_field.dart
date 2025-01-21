import 'package:micro_dart_proxy_test/proxy/test_class_external_extends_field_class.dart';

class InternalClass extends ExternalClass {
  int c = 3;
  static String d = 'c';
  bool? notInit;
  void funcInternal() {
    c = 4;
  }

  void funcExternal() {
    b = 'd';
  }

  static void funcInternalStatic() {
    d = 'e';
  }

  static void funcExternalStatic() {
    ExternalClass.a = 5;
  }
}

class InternalSubClass extends InternalClass {
  void funcInternal() {
    c = 6;
  }

  static void funcInternalStatic() {
    InternalClass.d = 'f';
  }

  static void funcExternalStatic() {
    ExternalClass.a = 7;
  }

  void funcExternal() {
    b = 'g';
  }
}

String main() {
  String output = '';
  InternalClass c1 = InternalClass();
  InternalSubClass c2 = InternalSubClass();

  output += ExternalClass.a.toString();

  ExternalClass.funcExternalStatic();
  output += ExternalClass.a.toString();

  InternalClass.funcExternalStatic();
  output += ExternalClass.a.toString();

  InternalSubClass.funcExternalStatic();
  output += ExternalClass.a.toString();

  output += c1.b.toString();

  c1.funcExternal();
  output += c1.b.toString();

  c2.funcExternal();
  output += c2.b.toString();

  output += c1.c.toString();
  output += InternalClass.d.toString();
  c1.funcInternal();
  output += c1.c.toString();

  InternalClass.funcInternalStatic();
  output += InternalClass.d.toString();

  c2.funcInternal();
  output += c2.c.toString();

  InternalSubClass.funcInternalStatic();
  output += InternalClass.d.toString();

  print(output);
  return output;
}
