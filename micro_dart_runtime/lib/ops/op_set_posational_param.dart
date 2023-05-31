import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetPosationalParam implements Op {
  OpSetPosationalParam(MicroDartEngine interpreter)
      : name = interpreter.readString();

  OpSetPosationalParam.make(this.name);

  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetPosationalParam, ...Ops.str(name)];

  @override
  void run(Scope scope) {
    scope.setScopeParam(name, scope.parent?.popFrame());
  }

  @override
  String toString() => "OpSetPosationalParam($name)";
}
