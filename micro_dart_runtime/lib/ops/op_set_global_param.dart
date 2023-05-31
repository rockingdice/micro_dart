import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetGlobalParam implements Op {
  OpSetGlobalParam(MicroDartEngine interpreter)
      : name = interpreter.readString();

  OpSetGlobalParam.make(this.name);

  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetGlobalParam, ...Ops.str(name)];

  @override
  void run(Scope scope) {
    var value = scope.frames.removeLast();
    scope.engine.setGlobalParam(name, value);
  }

  @override
  String toString() => "SetGlobalParam($name)";
}
