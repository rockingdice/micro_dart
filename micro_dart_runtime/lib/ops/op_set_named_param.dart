import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetNamedParam implements Op {
  SetNamedParam(MicroDartInterpreter interpreter)
      : name = interpreter.readString();

  SetNamedParam.make(this.name);
  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetNamedParam, ...Ops.str(name)];

  @override
  void run(MicroRuntime runtime) {
    if (runtime.parentScope.hasParam(name)) {
      runtime.setParam(name, runtime.parentScope.getParam(name));
    }
  }

  @override
  String toString() => "SetNamedParam($name)";
}
