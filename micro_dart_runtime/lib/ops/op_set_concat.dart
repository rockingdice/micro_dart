import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class SetConcat implements Op {
  SetConcat(MicroDartEngine interpreter) : _length = interpreter.readInt32();

  final int _length;

  SetConcat.make(this._length);

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opSetConcat, ...Ops.i32b(_length)];

  @override
  void run(MicroRuntime runtime) {
    final Set list = {};
    for (int i = _length - 1; i >= 0; i--) {
      list.addAll(runtime.scope.popFrame() as List);
    }
    runtime.scope.pushFrame(list);
  }

  @override
  String toString() => 'StringConcat($_length)';
}
