import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class Return implements Op {
  Return(MicroDartInterpreter interpreter)
      : _location = interpreter.readInt16();

  Return.make(this._location);

  final int _location;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI16;

  @override
  void run(MicroRuntime runtime) {
    runtime.catchStack.removeLast();
    final prOffset = runtime.callStack.removeLast();

    var oldScope = runtime.removeScope();
    if (oldScope.frames.isNotEmpty) {
      runtime.scope.pushFrame(oldScope.frames.last);
    }
    oldScope.clean();
    if (prOffset == -1) {
      throw ProgramExit(0);
    }
    runtime.opPointer = prOffset;
  }

  @override
  String toString() => 'Return (L:$_location)';

  @override
  List<int> get bytes => [Ops.opReturn, ...Ops.i16b(_location)];
}
