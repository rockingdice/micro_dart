import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpLogical implements Op {
  OpLogical(MicroDartEngine interpreter) : type = interpreter.readUint8();

  OpLogical.make(this.type);
  int type;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI8;

  @override
  List<int> get bytes => [Ops.opLogical, ...Ops.i8b(type)];

  @override
  void run(Scope scope) {
    var left = scope.popFrame() as bool;
    var right = scope.popFrame() as bool;

    if (type == 0) {
      scope.pushFrame(left && right);
    } else if (type == 1) {
      scope.pushFrame(left || right);
    }
  }

  @override
  String toString() => 'Logical()';
}
