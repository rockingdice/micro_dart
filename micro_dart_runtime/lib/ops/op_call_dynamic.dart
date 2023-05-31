import 'dart:async';

import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class OpCallDynamic implements Op {
  OpCallDynamic(MicroDartEngine interpreter)
      : _name = interpreter.readString(),
        _isStatic = interpreter.readUint8() == 1 ? true : false,
        _isGetter = interpreter.readUint8() == 1 ? true : false,
        _isSetter = interpreter.readUint8() == 1 ? true : false,
        _isAsync = interpreter.readUint8() == 1 ? true : false,
        _posationalLength = interpreter.readInt32(),
        _namedList = interpreter.readStringList();

  final String _name;
  final int _posationalLength;
  final List<String> _namedList;
  final bool _isGetter;
  final bool _isSetter;
  final bool _isStatic;
  final bool _isAsync;

  OpCallDynamic.make(
    this._name,
    this._isStatic,
    this._isGetter,
    this._isSetter,
    this._isAsync,
    this._posationalLength,
    this._namedList,
  );

  @override
  int get opLen =>
      Ops.lenBegin +
      Ops.lenStr(_name) +
      Ops.lenI8 * 4 +
      Ops.lenI32 +
      Ops.lenStrlist(_namedList);

  @override
  List<int> get bytes => [
        Ops.opCallDynamic,
        ...Ops.str(_name),
        ...Ops.i8b(_isStatic ? 1 : 0),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
        ...Ops.i32b(_posationalLength),
        ...Ops.strlist(_namedList)
      ];

  @override
  void run(Scope scope) {
    String? key = _name;

    //我们不能确定调用的方法一定就是内部的，因为有时候可能是super的方法,调用的是父类的方法，而父类可能是外部的类
    if (!_isStatic) {
      var instance = scope.getFrame(
          posation: scope.frames.length - _posationalLength - 1) as Instance;
      key =
          scope.engine.getKeyByType(instance.type, _name, isSetter: _isSetter);
    }

    if (scope.engine.declarations.containsKey(key)) {
      int pointer = scope.engine.declarations[key]!;
      scope.engine.callPointer(scope, _name, _isAsync, pointer);
    } else {
      throw Exception("currently not support external function ");
    }
  }

  @override
  String toString() =>
      'CallDynamic($_name,$_isStatic,$_isGetter,$_isSetter,$_posationalLength,$_namedList)';
}
