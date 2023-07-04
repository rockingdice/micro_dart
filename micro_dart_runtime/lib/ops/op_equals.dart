import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpEquals implements Op {
  OpEquals(MicroDartEngine interpreter);

  OpEquals.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opEquals];

  @override
  void run(Scope scope) {
    final left = scope.popFrame();
    final right = scope.popFrame();
    scope.pushFrame(left == right);
  }

  @override
  String toString() => 'OpEquals()';
}
