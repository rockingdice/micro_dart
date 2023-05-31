import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpPopCatch implements Op {
  OpPopCatch(MicroDartEngine interpreter);

  OpPopCatch.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opPopCatch];

  @override
  void run(Scope scope) {
    //scope.catchStack.removeLast();
  }

  @override
  String toString() => 'PopCatch()';
}
