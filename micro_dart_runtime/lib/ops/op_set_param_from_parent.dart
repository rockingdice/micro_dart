import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetParamFromParent implements Op {
  OpSetParamFromParent(MicroDartEngine interpreter)
      : name = interpreter.readString();

  OpSetParamFromParent.make(this.name);

  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetParamFromParent, ...Ops.str(name)];

  @override
  void run(Scope scope) {
    scope.setScopeParam(name, scope.parent?.popFrame());
  }

  @override
  String toString() => "OpSetParamFromParent($name)";
}
