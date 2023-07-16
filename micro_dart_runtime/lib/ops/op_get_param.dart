import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpGetParam implements Op {
  OpGetParam(MicroDartEngine engine) : _name = engine.readString();

  OpGetParam.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opGetParam, ...Ops.str(_name, pool)];

  @override
  void run(Scope scope) {
    var o = scope.getParam(_name);

    scope.pushFrame(o);
  }

  @override
  String toString() => "GetParam($_name)";
}
