import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class PushConstantInt implements Op {
  PushConstantInt(MicroDartInterpreter runtime) : _value = runtime.readInt32();

  PushConstantInt.make(this._value);

  final int _value;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opPushConstantInt, ...Ops.i32b(_value)];

  // Set value at position to constant
  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] = _value;
  }

  @override
  String toString() => 'PushConstantInt ($_value)';
}
