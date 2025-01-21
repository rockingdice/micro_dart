import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpGetInstance implements Op {
  OpGetInstance(MicroDartEngine engine)
      : _ref = CallRef.fromEngine(engine),
        _isMixinDeclaration = engine.readUint8() == 1 ? true : false;

  final CallRef _ref;
  final bool _isMixinDeclaration;

  OpGetInstance.make(this._ref, this._isMixinDeclaration);

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32 + Ops.lenI8;

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opGetInstance,
        ..._ref.bytes(pool),
        ...Ops.i8b(_isMixinDeclaration ? 1 : 0),
      ];

  @override
  void run(Scope scope) {
    var o = scope.popFrame() as Instance;
    if (o.hasField(scope, _ref.name)) {
      scope.pushFrame(o.getField(scope, _ref.name));
    } else {
      var ref = scope.engine.getInstanceCallRefRecursively(
          o.type, _ref.name, false);
      // var ref = o.type.getCallRef(_ref.name, false, false);
      scope.engine.callPointer(
          scope, _ref.name, false, scope.engine.declarations[ref]!,
          thiz: o);
    }
  }

  @override
  String toString() => "GetInstance(${_ref.name})";
}
