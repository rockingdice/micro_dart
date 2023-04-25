import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetScopeParamNull implements Op {
  SetScopeParamNull(MicroDartInterpreter interpreter)
      : location = interpreter.readInt32(),
        name = interpreter.readString();

  SetScopeParamNull.make(this.location, this.name);

  final int location;
  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32 + Ops.lenStr(name);

  @override
  List<int> get bytes =>
      [Ops.opSetScopeParamNull, ...Ops.i32b(location), ...Ops.str(name)];

  @override
  void run(MicroRuntime runtime) {
    runtime.setScopeParam(name, null, location: location);
  }

  @override
  String toString() => "SetScopeParamNull($name)";
}
