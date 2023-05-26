import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class PushMap implements Op {
  PushMap(MicroDartEngine interpreter) : _length = interpreter.readInt32();

  final int _length;

  PushMap.make(this._length);

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opMapConcat, ...Ops.i32b(_length)];

  @override
  void run(MicroRuntime runtime) {
    final Map list = {};
    for (int i = _length - 1; i >= 0; i--) {
      var key = runtime.scope.popFrame();
      var value = runtime.scope.popFrame();
      list[key] = value;
    }
    runtime.scope.pushFrame(list);
  }

  @override
  String toString() => 'MapConcat($_length)';
}
