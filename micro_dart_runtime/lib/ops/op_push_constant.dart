import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class PushConstant implements Op {
  PushConstant(MicroDartInterpreter runtime) : _const = runtime.readInt32();

  PushConstant.make(this._const);

  final int _const;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opPushConstant, ...Ops.i32b(_const)];

  // Set value at position to constant
  @override
  void run(MicroRuntime runtime) {
    runtime.scope.pushFrame(runtime.interpreter.constants[_const]);
  }

  @override
  String toString() => 'PushConstant($_const)';
}
