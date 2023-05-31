import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///方法调用的开始指令
class OpCallEnd implements Op {
  OpCallEnd(MicroDartEngine engine);

  OpCallEnd.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opCallEnd];

  @override
  void run(Scope scope) {
    throw ProgramExit(0);
  }

  @override
  String toString() => 'OpCallEnd()';
}
