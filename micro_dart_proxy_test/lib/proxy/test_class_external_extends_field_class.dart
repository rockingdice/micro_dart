import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class ExternalClass {
  static int a = 1;
  String b = 'a';
  void funcExternal() {
    b = 'b';
  }

  static void funcExternalStatic() {
    a = 2;
  }
}

class $ExternalClass extends ExternalClass with InstanceBridge<ExternalClass> {
  @override
  CType get bridgeType =>
      CType(ClassRef("", "ExternalClass"), isExternal: true);

  @override
  // TODO: implement superGetters
  Map<String, Function> get superGetters => throw UnimplementedError();
}
