import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class PushPointer implements Op {
  PushPointer(MicroDartEngine runtime)
      : _value = runtime.readInt32(),
        _isStatic = runtime.readUint8() == 1 ? true : false;

  PushPointer.make(this._value, this._isStatic);

  final int _value;
  final bool _isStatic;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32 + Ops.lenI8;

  @override
  List<int> get bytes => [
        Ops.opPushPointer,
        ...Ops.i32b(_value),
        ...Ops.i8b(_isStatic ? 1 : 0),
      ];

  // Set value at position to constant
  @override
  void run(MicroRuntime runtime) {
    if (_isStatic) {
      runtime.scope.pushFrame(FunctionPointer(null, _isStatic, _value));
    } else {
      var target = runtime.scope.popFrame();
      runtime.scope.pushFrame(FunctionPointer(target, _isStatic, _value));
    }
  }

  @override
  String toString() => 'PushPointer($_value,$_isStatic)';
}
