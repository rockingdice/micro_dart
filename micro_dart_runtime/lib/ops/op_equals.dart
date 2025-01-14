import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpEquals implements Op {
  static const OpEquals _instance = OpEquals._();

  const OpEquals._();

  factory OpEquals() => _instance;
  factory OpEquals.make() => _instance;

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opEquals];

  @override
  void run(Scope scope) {
    final left = scope.popFrame();
    final right = scope.popFrame();
    scope.pushFrame(left == right);
  }

  @override
  String toString() => 'OpEquals()';
}
