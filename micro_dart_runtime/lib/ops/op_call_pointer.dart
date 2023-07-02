import 'dart:async';

import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpCallPointerAsync extends OpCallPointer {
  OpCallPointerAsync(MicroDartEngine engine) : super(engine);

  OpCallPointerAsync.make(int argmentLength, String name, bool isAsync)
      : super.make(argmentLength, name, isAsync);

  @override
  List<int> get bytes => [
        Ops.opCallPointerAsync,
        ...Ops.i32b(_argmentLength),
        ...Ops.str(_name),
        ...Ops.i8b(_isAsync ? 1 : 0)
      ];

  @override
  Future run(Scope scope) {
    final pointer = scope.popFrame() as FunctionPointer;
    if (!pointer.isStatic) {
      var args = scope.getFrame() as List<dynamic>;
      args.insert(0, pointer.target);
    }
    return scope.engine
        .callPointerAsync(scope, _name, true, _isAsync, pointer.offset);
  }

  @override
  String toString() => 'OpCallPointerAsync($_argmentLength,$_name,$_isAsync)';
}

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
  void run(Scope scope) {
    final pointer = scope.popFrame() as FunctionPointer;
    if (!pointer.isStatic) {
      var args = scope.getFrame() as List<dynamic>;
      args.insert(0, pointer.target);
    }
    scope.engine.callPointer(scope, _name, true, pointer.offset);
  }

  @override
  String toString() => 'OpCallPointer($_argmentLength,$_name,$_isAsync)';
}
