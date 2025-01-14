import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpPushArguments implements Op {
  OpPushArguments(MicroDartEngine engine)
      : _argumentLength = engine.readInt32();

  OpPushArguments.make(this._argumentLength);

  final int _argumentLength;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opPushArguments, ...Ops.i32b(_argumentLength)];

  @override
  void run(Scope scope) {
    scope.pushFrame(scope.popFrameList(_argumentLength));
  }

  @override
  String toString() => 'OpPushArguments($_argumentLength)';
}
