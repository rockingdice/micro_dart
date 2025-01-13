import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpGetDynamic implements Op {
  OpGetDynamic(MicroDartEngine engine) : _name = engine.readString();

  OpGetDynamic.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opGetDynamic, ...Ops.str(_name, pool)];

  @override
  void run(Scope scope) {
    var o = scope.popFrame() as InstanceImpl;
    var v = o.getParam(scope, _name);
    scope.pushFrame(v);
  }

  @override
  String toString() => "GetDynamic($_name)";
}
