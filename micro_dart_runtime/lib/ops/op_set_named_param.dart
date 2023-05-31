import 'package:micro_dart_runtime/micro_dart_runtime.dart';

@Deprecated("Deprecated use OpFillArguements")
class SetNamedParam implements Op {
  SetNamedParam(MicroDartEngine interpreter) : name = interpreter.readString();

  SetNamedParam.make(this.name);
  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetNamedParam, ...Ops.str(name)];

  @override
  void run(Scope scope) {
    if (scope.parent?.hasParam(name) ?? false) {
      scope.setScopeParam(name, scope.parent?.getParam(name));
    }
  }

  @override
  String toString() => "SetNamedParam($name)";
}
