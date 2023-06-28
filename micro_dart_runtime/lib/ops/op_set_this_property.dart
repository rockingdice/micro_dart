import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetThisProperty implements Op {
  OpSetThisProperty(MicroDartEngine interpreter)
      : _name = interpreter.readString();

  OpSetThisProperty.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(_name);

  @override
  List<int> get bytes => [Ops.opSetThisProperty, ...Ops.str(_name)];

  @override
  void run(Scope scope) {
    var val = scope.popFrame();
    var instance = scope.getParam("#this") as Instance;
    instance.setParam(scope, _name, val);
  }

  @override
  String toString() => "SetThisProperty($_name)";
}
