import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///方法调用的开始指令
class OpCallStart implements Op {
  OpCallStart(MicroDartEngine engine) : _ref = CallRef.fromEngine(engine);

  OpCallStart.make(this._ref);

  final CallRef _ref;

  @override
  int get opLen => Ops.lenBegin + CallRef.byteLen;

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opCallStart,
        ..._ref.bytes(pool),
      ];

  @override
  void run(Scope scope) {
    //do nothing
  }

  @override
  String toString() => 'OpCallStart($_ref)';
}
