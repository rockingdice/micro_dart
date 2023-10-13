import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///方法调用的开始指令
class OpCallEndAsync extends OpCallEnd {
  OpCallEndAsync(MicroDartEngine engine) : super(engine);

  OpCallEndAsync.make() : super.make();

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
  OpCallEnd(MicroDartEngine engine);

  OpCallEnd.make();

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
