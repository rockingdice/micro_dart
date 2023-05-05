import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetGlobalParam implements Op {
  SetGlobalParam(MicroDartEngine interpreter) : name = interpreter.readString();

  SetGlobalParam.make(this.name);

  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetGlobalParam, ...Ops.str(name)];

  @override
  void run(MicroRuntime runtime) {
    var value = runtime.scope.frames.removeLast();
    runtime.scope.framePointer--;
    runtime.setGlobalParam(name, value);
  }

  @override
  String toString() => "SetGlobalParam($name)";
}
