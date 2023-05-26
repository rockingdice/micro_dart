import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpNullCheck implements Op {
  OpNullCheck(MicroDartEngine interpreter);

  OpNullCheck.make();

  @override
  int get opLen => Ops.lenBegin + Ops.lenI8;

  @override
  List<int> get bytes => [Ops.opNullCheck];

  @override
  void run(MicroRuntime runtime) {
    var instance = runtime.scope.popFrame();
    runtime.scope.pushFrame(instance!);
  }

  @override
  String toString() => 'NullCheck()';
}
