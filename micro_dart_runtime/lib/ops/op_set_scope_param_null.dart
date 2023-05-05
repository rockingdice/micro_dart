import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetScopeParamNull implements Op {
  SetScopeParamNull(MicroDartEngine interpreter)
      : name = interpreter.readString();

  SetScopeParamNull.make(this.name);

  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetScopeParamNull, ...Ops.str(name)];

  @override
  void run(MicroRuntime runtime) {
    runtime.setScopeParam(name, null);
  }

  @override
  String toString() => "SetScopeParamNull($name)";
}
