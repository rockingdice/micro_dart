import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpNot implements Op {
  static const OpNot _instance = OpNot._();

  const OpNot._();

  factory OpNot() => _instance;
  factory OpNot.make() => _instance;

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opNot];

  @override
  void run(Scope scope) {
    var instance = scope.popFrame() as bool;

    scope.pushFrame(!instance);
  }

  @override
  String toString() => 'Not()';
}
