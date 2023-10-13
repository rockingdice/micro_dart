import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpPushConstantBool implements Op {
  OpPushConstantBool(MicroDartEngine runtime)
      : _value = runtime.readUint8() == 1 ? true : false;

  OpPushConstantBool.make(this._value);

  final bool _value;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI8;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opPushConstantBool, ...Ops.i8b(_value ? 1 : 0)];

  // Set value at position to constant
  @override
  void run(Scope scope) {
    scope.pushFrame(_value);
  }

  @override
  String toString() => 'OpPushConstantBool($_value)';
}
