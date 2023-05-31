import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpPushConstant implements Op {
  OpPushConstant(MicroDartEngine runtime) : _const = runtime.readInt32();

  OpPushConstant.make(this._const);

  final int _const;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opPushConstant, ...Ops.i32b(_const)];

  @override
  void run(Scope scope) {
    scope.pushFrame(scope.engine.constants[_const]);
  }

  @override
  String toString() => 'PushConstant($_const)';
}
