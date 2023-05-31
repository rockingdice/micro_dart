import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpJump implements Op {
  OpJump(MicroDartEngine interpreter) : _offset = interpreter.readInt32();

  OpJump.make(this._offset);

  final int _offset;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opJump, ...Ops.i32b(_offset)];

  @override
  void run(Scope scope) {
    scope.opPointer = _offset;
  }

  @override
  String toString() => 'Jump(@$_offset)';
}
