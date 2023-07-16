import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetScopeParamNull implements Op {
  SetScopeParamNull(MicroDartEngine engine) : _name = engine.readString();

  SetScopeParamNull.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(_name);

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opSetScopeParamNull, ...Ops.str(_name, pool)];

  @override
  void run(Scope scope) {
    scope.setScopeParam(_name, null);
  }

  @override
  String toString() => "SetScopeParamNull($_name)";
}
