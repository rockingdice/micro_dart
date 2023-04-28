import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class SetThisProperty implements Op {
  SetThisProperty(MicroDartInterpreter interpreter)
      : name = interpreter.readString();

  SetThisProperty.make(this.name);

  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opSetThisProperty, ...Ops.str(name)];

  @override
  void run(MicroRuntime runtime) {
    var val = runtime.scope.popFrame();
    var instance = runtime.getParam("#this") as Instance;
    instance.params[name] = val;
  }

  @override
  String toString() => "SetThisProperty($name)";
}
