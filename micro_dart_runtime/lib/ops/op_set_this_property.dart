import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetThisProperty implements Op {
  SetThisProperty(MicroDartEngine interpreter)
      : _name = interpreter.readString();

  SetThisProperty.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(_name);

  @override
  List<int> get bytes => [Ops.opSetThisProperty, ...Ops.str(_name)];

  @override
  void run(MicroRuntime runtime) {
    var val = runtime.scope.popFrame();
    var instance = runtime.getParam("#this") as Instance;
    instance.setParam(_name, val);
  }

  @override
  String toString() => "SetThisProperty($_name)";
}
