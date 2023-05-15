import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class StringConcat implements Op {
  StringConcat(MicroDartEngine interpreter) : _length = interpreter.readInt32();

  final int _length;

  StringConcat.make(this._length);

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opStringConcat, ...Ops.i32b(_length)];

  @override
  void run(MicroRuntime runtime) {
    final List<Object?> list = List.filled(_length, null);
    for (int i = _length - 1; i >= 0; i--) {
      list[i] = runtime.scope.popFrame();
    }
    runtime.scope.pushFrame(list.join());
  }

  @override
  String toString() => 'StringConcat($_length)';
}
