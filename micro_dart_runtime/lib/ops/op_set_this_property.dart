import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetThisProperty implements Op {
  OpSetThisProperty(MicroDartEngine interpreter)
      : _name = interpreter.readString();

  OpSetThisProperty.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(_name);

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opSetThisProperty, ...Ops.str(_name, pool)];

  @override
  void run(Scope scope) {
    var val = scope.popFrame();
    var instance = scope.getParam("#this") as Instance;
    instance.setField(scope, _name, val);
  }

  @override
  String toString() => "SetThisProperty($_name)";
}
