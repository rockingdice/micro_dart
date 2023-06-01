import 'dart:async';

import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpCallPointer implements Op {
  OpCallPointer(MicroDartEngine engine)
      : _argmentLength = engine.readInt32(),
        _name = engine.readString(),
        _isAsync = engine.readUint8() == 1 ? true : false;

  OpCallPointer.make(this._argmentLength, this._name, this._isAsync);

  final int _argmentLength;
  final String _name;
  final bool _isAsync;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32 + Ops.lenStr(_name) + Ops.lenI8;

  @override
  List<int> get bytes => [
        Ops.opCallPointer,
        ...Ops.i32b(_argmentLength),
        ...Ops.str(_name),
        ...Ops.i8b(_isAsync ? 1 : 0)
      ];

  @override
  Future run(Scope scope) {
    final pointer = scope.popFrame() as FunctionPointer;
    if (!pointer.isStatic) {
      var args = scope.getFrame() as List<Object?>;
      args.insert(0, pointer.target);
    }
    return scope.engine
        .callPointer(scope, _name, true, _isAsync, pointer.offset);
  }

  @override
  String toString() => 'CallPointer()';
}
