import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpPushArgments implements Op {
  OpPushArgments(MicroDartEngine engine) : _argmentLength = engine.readInt32();

  OpPushArgments.make(this._argmentLength);

  final int _argmentLength;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opPushArgments, ...Ops.i32b(_argmentLength)];

  @override
  void run(Scope scope) {
    scope.pushFrame(scope.popFrameList(_argmentLength));
  }

  @override
  String toString() => 'OpPushArgments($_argmentLength)';
}
