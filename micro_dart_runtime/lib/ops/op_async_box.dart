import 'dart:async';

import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class AsyncBox implements Op {
  AsyncBox(MicroDartEngine interpreter);

  AsyncBox.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opAsyncBox];

  @override
  void run(MicroRuntime runtime) {
    runtime.scope.setParam("#completer", Completer());
  }

  @override
  String toString() => 'AsyncBox()';
}
