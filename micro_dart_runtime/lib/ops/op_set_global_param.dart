import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetGlobalParam implements Op {
  OpSetGlobalParam(MicroDartEngine engine) : _ref = CallRef.fromEngine(engine);

  OpSetGlobalParam.make(this._ref);

  final CallRef _ref;

  @override
  int get opLen => Ops.lenBegin + CallRef.byteLen;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opSetGlobalParam, ..._ref.bytes(pool)];

  @override
  void run(Scope scope) {
    var value = scope.frames.removeLast();
    scope.engine.setGlobalParam(_ref, value);
  }

  @override
  String toString() => "SetGlobalParam($_ref)";
}
