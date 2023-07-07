import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpAs implements Op {
  OpAs(MicroDartEngine interpreter) : type = interpreter.readString();

  OpAs.make(this.type);

  final String type;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(type);

  @override
  List<int> get bytes => [Ops.opAs, ...Ops.str(type)];

  @override
  void run(Scope scope) {
    var instance = scope.getFrame();
    if (instance is InstanceImpl) {
      instance.type = scope.engine.types[type]!;
    } else {
      throw Exception("not support external class");
    }
  }

  @override
  String toString() => 'OpAs($type)';
}
