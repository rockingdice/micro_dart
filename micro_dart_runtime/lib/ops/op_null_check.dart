import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpNullCheck implements Op {
  static const OpNullCheck _instance = OpNullCheck._();

  const OpNullCheck._();

  factory OpNullCheck() => _instance;
  factory OpNullCheck.make() => _instance;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI8;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opNullCheck];

  @override
  void run(Scope scope) {
    var instance = scope.popFrame();
    scope.pushFrame(instance!);
  }

  @override
  String toString() => 'OpNullCheck()';
}
