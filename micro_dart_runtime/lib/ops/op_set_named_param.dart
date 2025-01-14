import 'package:micro_dart_runtime/micro_dart_runtime.dart';

@Deprecated("Deprecated use OpFillArguments")
class SetNamedParam implements Op {
  SetNamedParam(MicroDartEngine engine) : _name = engine.readString();

  SetNamedParam.make(this._name);
  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opSetNamedParam, ...Ops.i32b(pool.addOrGet(_name))];

  @override
  void run(Scope scope) {
    if (scope.parent?.hasParam(_name) ?? false) {
      scope.setScopeParam(_name, scope.parent?.getParam(_name));
    }
  }

  @override
  String toString() => "SetNamedParam($_name)";
}
