import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetScopeParam implements Op {
  OpSetScopeParam(MicroDartEngine interpreter)
      : name = interpreter.readString();

  OpSetScopeParam.make(this.name);
  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetScopeParam, ...Ops.str(name)];

  @override
  void run(Scope scope) {
    var value = scope.popFrame();
    scope.setScopeParam(name, value);
  }

  @override
  String toString() => "OpSetScopeParam($name)";
}
