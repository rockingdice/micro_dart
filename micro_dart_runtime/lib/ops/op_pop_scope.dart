import 'package:micro_dart_runtime/micro_dart_runtime.dart';

@Deprecated("Deprecated")
class OpPopScope implements Op {
  OpPopScope(MicroDartEngine interpreter);

  OpPopScope.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opPopScope];

  @override
  void run(Scope scope) {
    if (scope.frames.isNotEmpty) {
      scope.parent?.pushFrame(scope.frames.last);
    }
    scope.pop();
  }

  @override
  String toString() => 'PopScope()';
}
