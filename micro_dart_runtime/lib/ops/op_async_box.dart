import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpAsyncBox implements Op {
  OpAsyncBox(MicroDartEngine interpreter);

  OpAsyncBox.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opAsyncBox];

  @override
  void run(Scope scope) {}

  @override
  String toString() => 'AsyncBox()';
}
