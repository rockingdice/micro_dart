import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpCallAsync extends OpCall {
  OpCallAsync(MicroDartEngine engine) : super(engine);

  OpCallAsync.make(int location, CallRef ref, bool hasArgs, bool isAsync)
      : super.make(location, ref, hasArgs, isAsync);

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opCallAsync,
        ...Ops.i32b(_location),
        ..._ref.bytes(pool),
        ...Ops.i8b(_hasArgs ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
      ];

  @override
  Future run(Scope scope) {
    return scope.engine
        .callPointerAsync(scope, _ref.callName, _hasArgs, _isAsync, _location);
  }

  @override
  String toString() => 'OpCall($_location, $_ref,$_hasArgs, $_isAsync)';
}

///调用方法
class OpCall implements Op {
  OpCall(MicroDartEngine engine)
      : _location = engine.readInt32(),
        _ref = CallRef.fromEngine(engine),
        _hasArgs = engine.readUint8() == 1 ? true : false,
        _isAsync = engine.readUint8() == 1 ? true : false;

  OpCall.make(this._location, this._ref, this._hasArgs, this._isAsync);

  final int _location;
  final CallRef _ref;
  final bool _isAsync;
  final bool _hasArgs;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32 + CallRef.byteLen + Ops.lenI8 * 2;

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opCall,
        ...Ops.i32b(_location),
        ..._ref.bytes(pool),
        ...Ops.i8b(_hasArgs ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
      ];

  @override
  void run(Scope scope) {
    scope.engine.callPointer(scope, _ref.callName, _hasArgs, _location);
  }

  @override
  String toString() => 'OpCall($_location, $_ref,$_hasArgs, $_isAsync)';
}
