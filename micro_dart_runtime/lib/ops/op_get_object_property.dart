import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class GetObjectProperty implements Op {
  GetObjectProperty(MicroDartEngine interpreter)
      : _name = interpreter.readString(),
        _location = interpreter.readInt32();

  GetObjectProperty.make(this._name, this._location);

  final String _name;
  final int _location;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(_name);

  @override
  List<int> get bytes =>
      [Ops.opGetObjectProperty, ...Ops.str(_name), ...Ops.i32b(_location)];

  @override
  void run(MicroRuntime runtime) {
    var instance = runtime.scope.popFrame() as Instance;

    if (!instance.hasParam(_name)) {
      runtime.callStack.add(runtime.opPointer);
      runtime.catchStack.add([]);
      runtime.scope.setParam("#this", instance);
      runtime.opPointer = _location;
    } else {
      runtime.scope.pushFrame(instance.getParam(_name));
    }
  }

  @override
  String toString() => "GetObjectProperty($_name,$_location)";
}
