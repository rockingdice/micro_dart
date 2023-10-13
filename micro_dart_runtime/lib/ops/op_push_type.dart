import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpPushType implements Op {
  OpPushType(MicroDartEngine engine) : _ref = ClassRef.fromEngine(engine);

  OpPushType.make(this._ref);

  final ClassRef _ref;

  @override
  int get opLen => Ops.lenBegin + ClassRef.byteLen;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opPushType, ..._ref.bytes(pool)];

  @override
  void run(Scope scope) {
    scope.pushFrame(scope.engine.types[_ref]);
  }

  @override
  String toString() => 'OpPushType($_ref)';
}
