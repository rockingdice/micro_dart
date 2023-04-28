import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetObjectProperty implements Op {
  SetObjectProperty(MicroDartInterpreter interpreter)
      : name = interpreter.readString();

  SetObjectProperty.make(this.name);

  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetObjectProperty, ...Ops.str(name)];

  @override
  void run(MicroRuntime runtime) {
    var instance = runtime.scope.popFrame() as Instance;
    var val = runtime.scope.popFrame();

    instance.params[name] = val;
  }

  @override
  String toString() => "SetObjectProperty($name)";
}
