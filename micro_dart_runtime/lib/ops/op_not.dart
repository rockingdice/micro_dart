import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpNot implements Op {
  OpNot(MicroDartEngine interpreter);

  OpNot.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opNot];

  @override
  void run(MicroRuntime runtime) {
    var instance = runtime.scope.popFrame() as bool;

    runtime.scope.pushFrame(!instance);
  }

  @override
  String toString() => 'Not()';
}
