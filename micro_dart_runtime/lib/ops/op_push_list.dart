import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class PushList implements Op {
  PushList(MicroDartEngine runtime) : _length = runtime.readInt32();

  PushList.make(this._length);

  final int _length;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opPushList, ...Ops.i32b(_length)];

  // Set value at position to constant
  @override
  void run(MicroRuntime runtime) {
    final list = List.empty(growable: true);
    for (int i = 0; i < _length; i++) {
      list.add(runtime.scope.popFrame());
    }
    runtime.scope.pushFrame(list);
  }

  @override
  String toString() => 'PushList($_length)';
}
