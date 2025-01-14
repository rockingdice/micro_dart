import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpPushNull implements Op {
  static const OpPushNull _instance = OpPushNull._();

  const OpPushNull._();

  factory OpPushNull() => _instance;
  factory OpPushNull.make() => _instance;

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opPushNull];

  // Set value at position to constant
  @override
  void run(Scope scope) {
    scope.pushFrame(null);
  }

  @override
  String toString() => 'OpPushNull()';
}
