import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpSymbol implements Op {
  OpSymbol(MicroDartEngine interpreter) : value = interpreter.readString();

  OpSymbol.make(this.value);

  String value;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(value);

  @override
  List<int> get bytes => [Ops.opNot, ...Ops.str(value)];

  @override
  void run(MicroRuntime runtime) {
    runtime.scope.pushFrame(Symbol(value));
  }

  @override
  String toString() => 'Not()';
}
