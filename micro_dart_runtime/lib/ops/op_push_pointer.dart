import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class PushPointer implements Op {
  PushPointer(MicroDartEngine runtime) : _value = runtime.readInt32();

  PushPointer.make(this._value);

  final int _value;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opPushPointer, ...Ops.i32b(_value)];

  // Set value at position to constant
  @override
  void run(MicroRuntime runtime) {
    runtime.scope.pushFrame(_value);
  }

  @override
  String toString() => 'PushPointer($_value)';
}
