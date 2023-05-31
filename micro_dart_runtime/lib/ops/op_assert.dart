import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpAssert implements Op {
  OpAssert(MicroDartEngine interpreter);

  OpAssert.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opAssert];

  @override
  void run(Scope scope) {
    final condition = scope.popFrame() as bool;
    final message = scope.popFrame();
    assert(condition, message);
  }

  @override
  String toString() => 'Assert()';
}
