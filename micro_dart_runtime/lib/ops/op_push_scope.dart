import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class PushScope implements Op {
  PushScope(MicroDartInterpreter interpreter)
      : libraryIndex = interpreter.readInt32(),
        sourceOffset = interpreter.readInt32(),
        frName = interpreter.readString();

  PushScope.make(this.libraryIndex, this.sourceOffset, this.frName);

  final int libraryIndex;
  final int sourceOffset;
  final String frName;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32 * 2 + Ops.lenStr(frName);

  @override
  List<int> get bytes => [
        Ops.opPushScope,
        ...Ops.i32b(libraryIndex),
        ...Ops.i32b(sourceOffset),
        ...Ops.str(frName)
      ];

  @override
  void run(MicroRuntime runtime) {
    runtime.addScope(frName);
  }

  @override
  String toString() =>
      "PushScope (L:$libraryIndex, S:$sourceOffset, '$frName')";
}
