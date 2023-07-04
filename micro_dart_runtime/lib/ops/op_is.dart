import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpIs implements Op {
  OpIs(MicroDartEngine interpreter) : type = interpreter.readString();

  OpIs.make(this.type);

  final String type;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(type);

  @override
  List<int> get bytes => [Ops.opIs, ...Ops.str(type)];

  @override
  void run(Scope scope) {
    var instance = scope.popFrame();
    bool isType = false;
    if (instance is InstanceImpl) {
      isType = instance.type.isType(scope.engine.types[type]!, scope.engine);
    } else {
      isType = scope.engine.externalFunctions["$type@#is"]!(instance);
    }

    scope.pushFrame(isType);
  }

  @override
  String toString() => 'Is($type)';
}
