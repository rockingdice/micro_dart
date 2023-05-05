import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetScopeParam implements Op {
  SetScopeParam(MicroDartEngine interpreter) : name = interpreter.readString();

  SetScopeParam.make(this.name);
  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetScopeParam, ...Ops.str(name)];

  @override
  void run(MicroRuntime runtime) {
    var value = runtime.scope.popFrame();
    runtime.setScopeParam(name, value);
  }

  @override
  String toString() => "SetScopeParam($name)";
}
