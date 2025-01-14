import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpThrow implements Op {
  static const OpThrow _instance = OpThrow._();

  const OpThrow._();

  factory OpThrow() => _instance;
  factory OpThrow.make() => _instance;

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opThrow];

  @override
  void run(Scope scope) {
    throw scope.popFrame()!;
  }

  @override
  String toString() => 'Throw()';
}
