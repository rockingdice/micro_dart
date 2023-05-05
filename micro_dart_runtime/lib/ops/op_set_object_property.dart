import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetObjectProperty implements Op {
  SetObjectProperty(MicroDartEngine interpreter)
      : _name = interpreter.readString();

  SetObjectProperty.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(_name);

  @override
  List<int> get bytes => [Ops.opSetObjectProperty, ...Ops.str(_name)];

  @override
  void run(MicroRuntime runtime) {
    var instance = runtime.scope.popFrame() as Instance;
    var val = runtime.scope.popFrame();
    instance.setParam(_name, val);
  }

  @override
  String toString() => "SetObjectProperty($_name)";
}
