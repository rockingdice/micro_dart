import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///方法调用的开始指令
class OpCallEndAsync extends OpCallEnd {
  static const OpCallEndAsync _instance = OpCallEndAsync._();

  const OpCallEndAsync._() : super._();

  factory OpCallEndAsync() => _instance;
  factory OpCallEndAsync.make() => _instance;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opCallEndAsync];

  @override
  Future run(Scope scope) async {
    throw ProgramExit(0);
  }

  @override
  String toString() => 'OpCallEndAsync()';
}

class OpCallEnd implements Op {
  static const OpCallEnd _instance = OpCallEnd._();

  const OpCallEnd._();

  factory OpCallEnd() => _instance;
  factory OpCallEnd.make() => _instance;

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opCallEnd];

  @override
  void run(Scope scope) {
    throw ProgramExit(0);
  }

  @override
  String toString() => 'OpCallEnd()';
}
