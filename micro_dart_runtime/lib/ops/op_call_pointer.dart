import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class CallPointer implements Op {
  CallPointer(MicroDartEngine interpreter);

  CallPointer.make();

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opCallPointer];

  @override
  void run(MicroRuntime runtime) {
    final offset = runtime.scope.popFrame() as int;
    //缓存当前操作指向
    runtime.callStack.add(runtime.opPointer);
    //缓存抛出堆栈
    runtime.catchStack.add([]);
    runtime.opPointer = offset;
  }

  @override
  String toString() => 'CallPointer()';
}
