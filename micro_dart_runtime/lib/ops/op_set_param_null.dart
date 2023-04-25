import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetParamNull implements Op {
  SetParamNull(MicroDartInterpreter interpreter)
      : name = interpreter.readString();

  SetParamNull.make(this.name);

  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetParamNull, ...Ops.str(name)];

  @override
  void run(MicroRuntime runtime) {
    runtime.setParam(name, null);
  }

  @override
  String toString() => "SetParamNull($name)";
}
