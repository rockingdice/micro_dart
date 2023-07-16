import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///新建实例
class OpCreateInstance implements Op {
  OpCreateInstance(MicroDartEngine engine) : _ref = ClassRef.fromEngine(engine);

  OpCreateInstance.make(this._ref);

  final ClassRef _ref;

  @override
  int get opLen => Ops.lenBegin + ClassRef.byteLen;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opCreateInstance, ..._ref.bytes(pool)];

  @override
  void run(Scope scope) {
    scope.pushFrame(InstanceImpl(scope.engine, scope.engine.getType(_ref)));
  }

  @override
  String toString() => 'CreateInstance($_ref)';
}
