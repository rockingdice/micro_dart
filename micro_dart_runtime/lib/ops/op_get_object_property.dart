import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpGetObjectPropertyAsync extends OpGetObjectProperty {
  OpGetObjectPropertyAsync(MicroDartEngine engine) : super(engine);

  OpGetObjectPropertyAsync.make(String name, int location)
      : super.make(name, location);

  @override
  List<int> get bytes =>
      [Ops.opGetObjectPropertyAsync, ...Ops.str(_name), ...Ops.i32b(_location)];

  @override
  Future run(Scope scope) async {
    var instance = scope.popFrame() as Instance;

    if (!instance.hasParam(_name)) {
      scope.setScopeParam("#this", instance);
      return scope.engine
          .callPointerAsync(scope, _name, false, false, _location);
    } else {
      scope.pushFrame(instance.getParam(_name));
    }
  }

  @override
  String toString() => "OpGetObjectPropertyAsync($_name,$_location)";
}

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
  void run(Scope scope) {
    var instance = scope.popFrame() as Instance;

    if (!instance.hasParam(_name)) {
      scope.setScopeParam("#this", instance);
      scope.engine.callPointer(scope, _name, false, _location);
    } else {
      scope.pushFrame(instance.getParam(_name));
    }
  }

  @override
  String toString() => "GetObjectProperty($_name,$_location)";
}
