import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class OpPushSet implements Op {
  OpPushSet(MicroDartEngine interpreter) : _length = interpreter.readInt32();

  final int _length;

  OpPushSet.make(this._length);

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opPushSet, ...Ops.i32b(_length)];

  @override
  void run(Scope scope) {
    final Set list = {};
    for (int i = _length - 1; i >= 0; i--) {
      list.add(scope.popFrame());
    }
    scope.pushFrame(list);
  }

  @override
  String toString() => 'ListConcat($_length)';
}
