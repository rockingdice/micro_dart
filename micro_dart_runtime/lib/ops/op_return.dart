import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpReturn implements Op {
  static const OpReturn _instance = OpReturn._();

  const OpReturn._();

  factory OpReturn() => _instance;
  factory OpReturn.make() => _instance;

  @override
  int get opLen => Ops.lenBegin;

  @override
  void run(Scope scope) {
    scope.hasReturn = true;
    if (scope.frames.isNotEmpty) {
      var value = scope.popFrame();
      if (scope.isAsync) {
        if (value is Future) {
          scope.returnValue = value;
        } else {
          scope.returnValue = Future.value(value);
        }
      } else {
        scope.returnValue = value;
      }
    } else {
      scope.returnValue = null;
    }
    throw ProgramExit(0);
  }

  @override
  String toString() => 'OpReturn()';

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opReturn];
}
