import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpAs implements Op {
  OpAs(MicroDartEngine engine) : type = ClassRef.fromEngine(engine);

  OpAs.make(this.type);

  final ClassRef type;

  @override
  int get opLen => Ops.lenBegin + ClassRef.byteLen;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opAs, ...type.bytes(pool)];

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
