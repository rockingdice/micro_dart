import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpGetObjectProperty implements Op {
  OpGetObjectProperty(MicroDartEngine interpreter)
      : _name = interpreter.readString(),
        _location = interpreter.readInt32();

  OpGetObjectProperty.make(this._name, this._location);

  final String _name;
  final int _location;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(_name);

  @override
  List<int> get bytes =>
      [Ops.opGetObjectProperty, ...Ops.str(_name), ...Ops.i32b(_location)];

  @override
  Future run(Scope scope) async {
    var instance = scope.popFrame() as Instance;

    if (!instance.hasParam(_name)) {
      scope.setScopeParam("#this", instance);
      return scope.engine.callPointer(scope, _name, false, false, _location);
    } else {
      scope.pushFrame(instance.getParam(_name));
    }
  }

  @override
  String toString() => "GetObjectProperty($_name,$_location)";
}
