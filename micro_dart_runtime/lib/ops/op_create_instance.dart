import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class CreateInstance implements Op {
  CreateInstance(MicroDartInterpreter interpreter);

  CreateInstance.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opCreateInstance];

  @override
  void run(MicroRuntime runtime) {
    runtime.scope.pushFrame(Instance());
  }

  @override
  String toString() => 'CreateInstance()';
}
