import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class CallPointer implements Op {
  CallPointer(MicroDartEngine interpreter)
      : posationalLength = interpreter.readInt32();

  CallPointer.make(this.posationalLength);

  final int posationalLength;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opCallPointer, ...Ops.i32b(posationalLength)];

  @override
  void run(MicroRuntime runtime) {
    final pointer = runtime.scope.popFrame() as FunctionPointer;
    if (!pointer.isStatic) {
      final List<Object?> posationals = List.filled(posationalLength, null);
      for (int i = posationalLength - 1; i >= 0; i--) {
        posationals[i] = runtime.scope.popFrame();
      }
      runtime.scope.pushFrame(pointer.target);
      for (int i = 0; i < posationalLength; i++) {
        runtime.scope.pushFrame(posationals[i]);
      }
    }
    //缓存当前操作指向
    runtime.callStack.add(runtime.opPointer);
    //缓存抛出堆栈
    runtime.catchStack.add([]);
    runtime.opPointer = pointer.offset;
  }

  @override
  String toString() => 'CallPointer()';
}
