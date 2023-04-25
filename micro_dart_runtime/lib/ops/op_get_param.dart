import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class GetParam implements Op {
  GetParam(MicroDartInterpreter interpreter) : name = interpreter.readString();

  GetParam.make(this.name);

  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opGetParam, ...Ops.str(name)];

  @override
  void run(MicroRuntime runtime) {
    runtime.scope.pushFrame(runtime.getParam(name));
  }

  @override
  String toString() => "GetParam($name)";
}
