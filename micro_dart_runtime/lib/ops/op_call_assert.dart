import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class Assert implements Op {
  Assert(MicroDartEngine interpreter);

  Assert.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opAssert];

  @override
  void run(MicroRuntime runtime) {
    final condition = runtime.scope.popFrame() as bool;
    final message = runtime.scope.popFrame();
    assert(condition, message);
  }

  @override
  String toString() => 'Assert()';
}
