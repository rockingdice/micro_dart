import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetParamNull implements Op {
  SetParamNull(MicroDartEngine interpreter) : _name = interpreter.readString();

  SetParamNull.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opSetParamNull, ...Ops.i32b(pool.addOrGet(_name))];

  @override
  void run(Scope scope) {
    scope.setExistParam(_name, null);
  }

  @override
  String toString() => "SetParamNull($_name)";
}
