import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class JumpIfEqual implements Op {
  JumpIfEqual(MicroDartEngine interpreter) : _offset = interpreter.readInt32();

  JumpIfEqual.make(this._offset);

  final int _offset;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opJumpIfEqual, ...Ops.i32b(_offset)];

  @override
  void run(MicroRuntime runtime) {
    final first = runtime.scope.popFrame();
    final second = runtime.scope.popFrame();
    if (first == second) {
      runtime.opPointer = _offset;
    }
  }

  @override
  String toString() => 'JumpIfEqual($_offset)';
}
