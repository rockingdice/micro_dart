import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetScopeParam implements Op {
  OpSetScopeParam(MicroDartEngine engine) : _name = engine.readString();

  OpSetScopeParam.make(this._name);
  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(_name);

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opSetScopeParam, ...Ops.str(_name, pool)];

  @override
  void run(Scope scope) {
    var value = scope.popFrame();
    scope.setScopeParam(_name, value);
  }

  @override
  String toString() => "OpSetScopeParam($_name)";
}
