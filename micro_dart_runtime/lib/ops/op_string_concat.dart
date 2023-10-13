import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class OpStringConcat implements Op {
  OpStringConcat(MicroDartEngine interpreter)
      : _length = interpreter.readInt32();

  final int _length;

  OpStringConcat.make(this._length);

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opStringConcat, ...Ops.i32b(_length)];

  @override
  void run(Scope scope) {
    final List<dynamic> list = List.filled(_length, null);
    for (int i = _length - 1; i >= 0; i--) {
      list[i] = scope.popFrame();
    }
    scope.pushFrame(list.join());
  }

  @override
  String toString() => 'StringConcat($_length)';
}
