import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpReturnField implements Op {
  OpReturnField(MicroDartEngine interpreter)
      : _libraryName = interpreter.readString(),
        _className = interpreter.readString(),
        _isStatic = interpreter.readUint8() == 1 ? true : false,
        _name = interpreter.readString();

  OpReturnField.make(
      this._libraryName, this._className, this._isStatic, this._name);

  final bool _isStatic;
  final String _name;
  final String _libraryName;
  final String _className;

  @override
  int get opLen =>
      Ops.lenBegin +
      Ops.lenStr(_libraryName) +
      Ops.lenStr(_className) +
      Ops.lenI8 +
      Ops.lenStr(_name);

  @override
  List<int> get bytes => [
        Ops.opReturnField,
        ...Ops.str(_libraryName),
        ...Ops.str(_className),
        ...Ops.i8b(_isStatic ? 1 : 0),
        ...Ops.str(_name)
      ];

  @override
  void run(Scope scope) {
    scope.hasReturn = true;
    var value = scope.popFrame();
    if (_isStatic) {
      scope.engine.setGlobalParam(_name, value);
      scope.returnValue = value;
    } else {
      Instance instance = scope.getParam("#this") as Instance;
      instance.setParam(scope, _name, value);
      scope.returnValue = value;
    }
  }

  @override
  String toString() => 'ReturnField($_isStatic,$_name)';
}
