import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class PushBoxInt implements Op {
  PushBoxInt(MicroDartEngine runtime) : _value = runtime.readInt32();

  PushBoxInt.make(this._value);

  final int _value;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opPushBoxInt, ...Ops.i32b(_value)];

  // Set value at position to constant
  @override
  void run(MicroRuntime runtime) {
    runtime.scope
        .pushFrame(InstanceBridge(runtime.engine, _value, Types.intType));
  }

  @override
  String toString() => 'PushBoxInt($_value)';
}
