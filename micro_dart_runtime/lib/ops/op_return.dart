import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpReturn implements Op {
  OpReturn(MicroDartEngine interpreter);

  OpReturn.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  void run(Scope scope) {
    scope.hasReturn = true;
    if (scope.frames.isNotEmpty) {
      scope.returnValue = scope.popFrame();
    } else {
      scope.returnValue = null;
    }
  }

  @override
  String toString() => 'OpReturn()';

  @override
  List<int> get bytes => [Ops.opReturn];
}
