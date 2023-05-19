import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class Equals implements Op {
  Equals(MicroDartEngine interpreter);

  Equals.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opEquals];

  @override
  void run(MicroRuntime runtime) {
    final left = runtime.scope.popFrame();
    final right = runtime.scope.popFrame();
    runtime.scope.pushFrame(left == right);
  }

  @override
  String toString() => 'Equals()';
}
