import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpTry implements Op {
  OpTry(MicroDartEngine interpreter) : _catchOffset = interpreter.readInt32();

  OpTry.make(this._catchOffset);
  final int _catchOffset;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opTry, ...Ops.i32b(_catchOffset)];

  @override
  void run(Scope scope) {
    //scope.catchStack.add(_catchOffset);
  }

  @override
  String toString() => 'Try($_catchOffset)';
}
