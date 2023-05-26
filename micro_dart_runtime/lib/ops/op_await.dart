import 'dart:async';

import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class Await implements Op {
  Await(MicroDartEngine interpreter);

  Await.make();

  @override
  int get opLen => Ops.lenBegin;

  @override
  List<int> get bytes => [Ops.opAwait];

  @override
  void run(MicroRuntime runtime) async {
    final instance = runtime.scope.popFrame() as Future;
    runtime.scope.pushFrame(await instance);
    //_suspend(completer, instance);
  }

  void _suspend(Completer completer, dynamic value) async {
    // create an async gap
    await Future.value(null);

    if (!completer.isCompleted) {
      completer.complete(value);
    }
  }

  @override
  String toString() => 'Await()';
}
