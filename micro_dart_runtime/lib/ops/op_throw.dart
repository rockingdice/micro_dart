import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class ThrowReturn implements Op {
  ThrowReturn(MicroDartEngine interpreter);

  ThrowReturn.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opThrow];

  @override
  void run(MicroRuntime runtime) {
    var exception = runtime.scope.popFrame();
    while (true) {
      final catchFrame = runtime.catchStack.last;
      if (catchFrame.isNotEmpty) {
        break;
      }
      runtime.removeScope();

      runtime.catchStack.removeLast();
      if (runtime.callStack.removeLast() == -1) {
        throw exception is WrappedException
            ? exception
            : WrappedException(exception!);
      }
    }
    final catchOffset = runtime.catchStack.last.removeLast();
    runtime.scope.pushFrame(StackTrace.fromString("stackTrance"));
    runtime.scope.pushFrame(exception);
    runtime.opPointer = catchOffset;
  }

  @override
  String toString() => 'Throw()';
}
