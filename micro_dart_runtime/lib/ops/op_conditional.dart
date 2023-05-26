import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class Conditional implements Op {
  Conditional(MicroDartEngine interpreter);

  Conditional.make();

  @override
  int get opLen => Ops.lenBegin + Ops.lenI8;

  @override
  List<int> get bytes => [Ops.opLogical];

  @override
  void run(MicroRuntime runtime) {
    var condition = runtime.scope.popFrame() as bool;
    var then = runtime.scope.popFrame();
    var otherwise = runtime.scope.popFrame();
    runtime.scope.pushFrame(condition ? then : otherwise);
  }

  @override
  String toString() => 'Conditional()';
}
