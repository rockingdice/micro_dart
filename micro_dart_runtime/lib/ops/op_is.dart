import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class Is implements Op {
  Is(MicroDartEngine interpreter) : type = interpreter.readString();

  Is.make(this.type);

  final String type;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(type);

  @override
  List<int> get bytes => [Ops.opIs, ...Ops.str(type)];

  @override
  void run(MicroRuntime runtime) {
    var instance = runtime.scope.popFrame();
    bool isType = false;
    if (instance is Instance) {
      isType = instance.type.isType(runtime.engine.types[type]!, runtime);
    } else {
      isType = runtime.engine.externalFunctions["$type@#is"]!(instance);
    }

    runtime.scope.pushFrame(isType);
  }

  @override
  String toString() => 'Is($type)';
}
