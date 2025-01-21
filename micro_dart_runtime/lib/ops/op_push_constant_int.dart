import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpPushConstantInt implements Op {
  OpPushConstantInt(MicroDartEngine runtime) : _value = runtime.readInt64();

  OpPushConstantInt.make(this._value);

  final int _value;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI64;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opPushConstantInt, ...Ops.i64b(_value)];

  // Set value at position to constant
  @override
  void run(Scope scope) {
    scope.pushFrame(_value);
  }

  @override
  String toString() => 'PushConstantInt($_value)';
}
