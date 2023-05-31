import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpConditional implements Op {
  OpConditional(MicroDartEngine interpreter);

  OpConditional.make();

  @override
  int get opLen => Ops.lenBegin + Ops.lenI8;

  @override
  List<int> get bytes => [Ops.opLogical];

  @override
  void run(Scope scope) {
    var condition = scope.popFrame() as bool;
    var then = scope.popFrame();
    var otherwise = scope.popFrame();
    scope.pushFrame(condition ? then : otherwise);
  }

  @override
  String toString() => 'Conditional()';
}
