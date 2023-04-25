import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetPosationalParam implements Op {
  SetPosationalParam(MicroDartInterpreter interpreter)
      : name = interpreter.readString();

  SetPosationalParam.make(this.name);

  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI16 + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetPosationalParam, ...Ops.str(name)];

  @override
  void run(MicroRuntime runtime) {
    runtime.setParam(name, runtime.parentScope.frames.removeLast());
  }

  @override
  String toString() => "SetPosationalParam($name)";
}
