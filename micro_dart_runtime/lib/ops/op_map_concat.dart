import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class OpMapConcat implements Op {
  OpMapConcat(MicroDartEngine interpreter) : _length = interpreter.readInt32();

  final int _length;

  OpMapConcat.make(this._length);

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opMapConcat, ...Ops.i32b(_length)];

  @override
  void run(Scope scope) {
    final Map list = {};
    for (int i = _length - 1; i >= 0; i--) {
      list.addAll(scope.popFrame() as Map);
    }
    scope.pushFrame(list);
  }

  @override
  String toString() => 'MapConcat($_length)';
}
