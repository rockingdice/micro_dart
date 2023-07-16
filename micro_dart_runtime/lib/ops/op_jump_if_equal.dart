import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpJumpIfEqual implements Op {
  OpJumpIfEqual(MicroDartEngine interpreter)
      : _offset = interpreter.readInt32();

  OpJumpIfEqual.make(this._offset);

  final int _offset;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opJumpIfEqual, ...Ops.i32b(_offset)];

  @override
  void run(Scope scope) {
    final first = scope.popFrame();
    final second = scope.popFrame();
    if (first == second) {
      scope.opPointer = _offset;
    }
  }

  @override
  String toString() => 'JumpIfEqual($_offset)';
}
