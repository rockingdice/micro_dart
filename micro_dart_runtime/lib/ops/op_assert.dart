import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpAssert implements Op {
  static const OpAssert _instance = OpAssert._();

  const OpAssert._();

  factory OpAssert() => _instance;
  factory OpAssert.make() => _instance;

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opAssert];

  @override
  void run(Scope scope) {
    final condition = scope.popFrame() as bool;
    final message = scope.popFrame();
    assert(condition, message);
  }

  @override
  String toString() => 'Assert()';
}
