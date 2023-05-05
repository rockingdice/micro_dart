import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class PushScope implements Op {
  PushScope(MicroDartEngine interpreter)
      : sourceOffset = interpreter.readInt32(),
        frName = interpreter.readString();

  PushScope.make(this.sourceOffset, this.frName);

  final int sourceOffset;
  final String frName;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32 + Ops.lenStr(frName);

  @override
  List<int> get bytes =>
      [Ops.opPushScope, ...Ops.i32b(sourceOffset), ...Ops.str(frName)];

  @override
  void run(MicroRuntime runtime) {
    runtime.addScope(frName);
  }

  @override
  String toString() => "PushScope($frName)";
}
