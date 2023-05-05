import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class Jump implements Op {
  Jump(MicroDartEngine interpreter) : _offset = interpreter.readInt32();

  Jump.make(this._offset);

  final int _offset;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opJump, ...Ops.i32b(_offset)];

  @override
  void run(MicroRuntime runtime) {
    runtime.opPointer = _offset;
  }

  @override
  String toString() => 'Jump(@$_offset)';
}
