import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class Call implements Op {
  Call(MicroDartInterpreter interpreter) : _offset = interpreter.readInt32();

  Call.make(this._offset);

  final int _offset;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> get bytes => [Ops.opCall, ...Ops.i32b(_offset)];

  @override
  void run(MicroRuntime runtime) {
    //缓存当前操作指向
    runtime.callStack.add(runtime.opPointer);
    //缓存抛出堆栈
    runtime.catchStack.add([]);
    runtime.opPointer = _offset;
  }

  @override
  String toString() => 'Call (@$_offset)';
}
