import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class JumpIfFalse implements Op {
  JumpIfFalse(MicroDartEngine interpreter) : _offset = interpreter.readInt32();

  JumpIfFalse.make(this._offset);

  final int _offset;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opJumpIfFalse, ...Ops.i32b(_offset)];

  @override
  void run(MicroRuntime runtime) {
    final condition = runtime.scope.popFrame() as bool;
    if (!condition) {
      runtime.opPointer = _offset;
    }
  }

  @override
  String toString() => 'JumpIfFalse($_offset)';
}
