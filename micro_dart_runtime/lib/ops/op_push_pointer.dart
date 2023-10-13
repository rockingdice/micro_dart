import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpPushPointer implements Op {
  OpPushPointer(MicroDartEngine runtime)
      : _value = runtime.readInt32(),
        _isStatic = runtime.readUint8() == 1 ? true : false,
        _isAsync = runtime.readUint8() == 1 ? true : false;

  OpPushPointer.make(this._value, this._isStatic, this._isAsync);

  final int _value;
  final bool _isStatic;
  final bool _isAsync;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32 + Ops.lenI8 * 2;

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opPushPointer,
        ...Ops.i32b(_value),
        ...Ops.i8b(_isStatic ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
      ];

  // Set value at position to constant
  @override
  void run(Scope scope) {
    if (_isStatic) {
      var target = scope.getParam("#this");
      scope.pushFrame(FunctionPointer(target, _isStatic, _isAsync, _value));
    } else {
      var target = scope.popFrame();
      scope.pushFrame(FunctionPointer(target, _isStatic, _isAsync, _value));
    }
  }

  @override
  String toString() => 'OpPushPointer($_value,$_isStatic)';
}
