import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetDynamic implements Op {
  OpSetDynamic(MicroDartEngine engine) : _name = engine.readString();

  OpSetDynamic.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opSetDynamic, ...Ops.str(_name, pool)];

  @override
  void run(Scope scope) {
    var value = scope.popFrame();
    var o = scope.popFrame() as InstanceImpl;
    o.setField(scope, _name, value);
  }

  @override
  String toString() => "SetDynamic($_name)";
}
