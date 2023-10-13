import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpPushConstantDouble implements Op {
  OpPushConstantDouble(MicroDartEngine runtime)
      : _value = runtime.readFloat64();

  OpPushConstantDouble.make(this._value);

  final double _value;

  @override
  int get opLen => Ops.lenBegin + Ops.lenF64;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opPushConstantDouble, ...Ops.f64b(_value)];

  // Set value at position to constant
  @override
  void run(Scope scope) {
    scope.pushFrame(_value);
  }

  @override
  String toString() => 'OpPushConstantDouble($_value)';
}
