import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class Logical implements Op {
  Logical(MicroDartEngine interpreter) : type = interpreter.readUint8();

  Logical.make(this.type);
  int type;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI8;

  @override
  List<int> get bytes => [Ops.opLogical, ...Ops.i8b(type)];

  @override
  void run(MicroRuntime runtime) {
    var left = runtime.scope.popFrame() as bool;
    var right = runtime.scope.popFrame() as bool;

    if (type == 0) {
      runtime.scope.pushFrame(left && right);
    } else if (type == 1) {
      runtime.scope.pushFrame(left || right);
    }
  }

  @override
  String toString() => 'Logical()';
}
