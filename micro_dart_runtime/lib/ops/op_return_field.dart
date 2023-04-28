import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class ReturnField implements Op {
  ReturnField(MicroDartInterpreter interpreter)
      : _isStatic = interpreter.readUint8() == 1 ? true : false,
        _name = interpreter.readString();

  ReturnField.make(this._isStatic, this._name);

  final bool _isStatic;
  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI8 + Ops.lenStr(_name);

  @override
  List<int> get bytes =>
      [Ops.opReturnField, ...Ops.i8b(_isStatic ? 1 : 0), ...Ops.str(_name)];

  @override
  void run(MicroRuntime runtime) {
    runtime.catchStack.removeLast();
    final prOffset = runtime.callStack.removeLast();

    var oldScope = runtime.removeScope();
    if (_isStatic) {
      runtime.setGlobalParam(_name, oldScope.frames.last);
      runtime.scope.pushFrame(oldScope.frames.last);
    } else {
      var instance = runtime.getParam("#this") as Instance;
      instance.params[_name] = oldScope.frames.last;
      runtime.scope.pushFrame(oldScope.frames.last);
    }

    oldScope.clean();
    if (prOffset == -1) {
      throw ProgramExit(0);
    }
    runtime.opPointer = prOffset;
  }

  @override
  String toString() => 'ReturnField($_isStatic,$_name)';
}
