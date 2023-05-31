import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///方法调用的开始指令
class OpCallStart implements Op {
  OpCallStart(MicroDartEngine engine) : _callName = engine.readString();

  OpCallStart.make(this._callName);

  final String _callName;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(_callName);

  @override
  List<int> get bytes => [Ops.opCallStart, ...Ops.str(_callName)];

  @override
  void run(Scope scope) {
    //do nothing
  }

  @override
  String toString() => 'OpCallStart($_callName)';
}
