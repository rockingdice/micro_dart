import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetParam implements Op {
  SetParam(MicroDartEngine interpreter) : name = interpreter.readString();

  SetParam.make(this.name);

  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetParam, ...Ops.str(name)];

  @override
  void run(MicroRuntime runtime) {
    var value = runtime.scope.popFrame();
    runtime.scope.setParam(name, value);
  }

  @override
  String toString() => "SetParam($name)";
}
