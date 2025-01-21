import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetInstance implements Op {
  OpSetInstance(MicroDartEngine engine)
      : _ref = CallRef.fromEngine(engine),
        _isMixinDeclaration = engine.readUint8() == 1 ? true : false;

  final CallRef _ref;
  final bool _isMixinDeclaration;

  OpSetInstance.make(this._ref, this._isMixinDeclaration);

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32 + Ops.lenI8;

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opSetInstance,
        ..._ref.bytes(pool),
        ...Ops.i8b(_isMixinDeclaration ? 1 : 0),
      ];

  @override
  void run(Scope scope) {
    var instance = scope.popFrame() as Instance;
    var val = scope.popFrame();
    instance.setField(scope, _ref.name, val); 
  }

  @override
  String toString() => "SetInstance(${_ref.name})";
}
