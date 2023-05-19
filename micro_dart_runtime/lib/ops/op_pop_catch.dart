import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class PopCatch implements Op {
  PopCatch(MicroDartEngine interpreter);

  PopCatch.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opPopCatch];

  @override
  void run(MicroRuntime runtime) {
    runtime.catchStack.last.removeLast();
  }

  @override
  String toString() => 'PopCatch()';
}
