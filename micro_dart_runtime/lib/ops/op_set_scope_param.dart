import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetScopeParam implements Op {
  SetScopeParam(MicroDartInterpreter interpreter)
      : location = interpreter.readInt32(),
        name = interpreter.readString();

  SetScopeParam.make(this.location, this.name);

  final int location;
  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32 + Ops.lenStr(name);

  @override
  List<int> get bytes =>
      [Ops.opSetScopeParam, ...Ops.i32b(location), ...Ops.str(name)];

  @override
  void run(MicroRuntime runtime) {
    var value = runtime.scope.popFrame();
    runtime.setScopeParam(name, value, location: location);
  }

  @override
  String toString() => "SetScopeParam($name)";
}
