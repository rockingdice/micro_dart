import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpCall implements Op {
  OpCall(MicroDartEngine engine)
      : _location = engine.readInt32(),
        _name = engine.readString(),
        _hasArgs = engine.readUint8() == 1 ? true : false,
        _isAsync = engine.readUint8() == 1 ? true : false;

  OpCall.make(this._location, this._name, this._hasArgs, this._isAsync);

  final int _location;
  final String _name;
  final bool _isAsync;
  final bool _hasArgs;

  @override
  int get opLen =>
      Ops.lenBegin + Ops.lenI32 + Ops.lenStr(_name) + Ops.lenI8 * 2;

  @override
  List<int> get bytes => [
        Ops.opCall,
        ...Ops.i32b(_location),
        ...Ops.str(_name),
        ...Ops.i8b(_hasArgs ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
      ];

  @override
  Future run(Scope scope) {
    return scope.engine
        .callPointer(scope, _name, _hasArgs, _isAsync, _location);
  }

  @override
  String toString() => 'OpCall($_location, $_name,$_hasArgs, $_isAsync)';
}
