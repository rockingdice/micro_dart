import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class PopScope implements Op {
  PopScope(MicroDartInterpreter interpreter);

  PopScope.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opPopScope];

  @override
  void run(MicroRuntime runtime) {
    var scope = runtime.removeScope();

    if (scope.frames.isNotEmpty) {
      runtime.scope.pushFrame(scope.frames.last);
    }
    scope.clean();
  }

  @override
  String toString() => 'PopScope()';
}
