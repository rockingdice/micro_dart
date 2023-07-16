import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetParamFromParent implements Op {
  OpSetParamFromParent(MicroDartEngine engine) : _name = engine.readString();

  OpSetParamFromParent.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opSetParamFromParent, ...Ops.i32b(pool.addOrGet(_name))];

  @override
  void run(Scope scope) {
    scope.setScopeParam(_name, scope.parent?.popFrame());
  }

  @override
  String toString() => "OpSetParamFromParent($_name)";
}
