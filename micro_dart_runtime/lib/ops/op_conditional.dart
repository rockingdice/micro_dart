import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpConditional implements Op {
  static const OpConditional _instance = OpConditional._();

  const OpConditional._();

  factory OpConditional() => _instance;
  factory OpConditional.make() => _instance;

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opConditional];

  @override
  void run(Scope scope) {
    var condition = scope.popFrame() as bool;
    var then = scope.popFrame();
    var otherwise = scope.popFrame();
    scope.pushFrame(condition ? then : otherwise);
  }

  @override
  String toString() => 'OpConditional()';
}
