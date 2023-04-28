import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class PushNull implements Op {
  PushNull(MicroDartInterpreter exec);

  PushNull.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opPushNull];

  // Set value at position to constant
  @override
  void run(MicroRuntime runtime) {
    runtime.scope[runtime.scope.framePointer++] = null;
  }

  @override
  String toString() => 'PushNull()';
}
