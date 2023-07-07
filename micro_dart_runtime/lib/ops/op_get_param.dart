import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpGetParam implements Op {
  OpGetParam(MicroDartEngine interpreter) : name = interpreter.readString();

  OpGetParam.make(this.name);

  final String name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(name);

  @override
  List<int> get bytes => [Ops.opGetParam, ...Ops.str(name)];

  @override
  void run(Scope scope) {
    var o = scope.getParam(name);

    scope.pushFrame(o);
  }

  @override
  String toString() => "GetParam($name)";
}
