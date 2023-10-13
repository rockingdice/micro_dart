import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetParam implements Op {
  SetParam(MicroDartEngine engine) : _name = engine.readString();

  SetParam.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opSetParam, ...Ops.i32b(pool.addOrGet(_name))];

  @override
  void run(Scope scope) {
    var value = scope.popFrame();
    scope.setExistParam(_name, value);
  }

  @override
  String toString() => "SetParam($_name)";
}
