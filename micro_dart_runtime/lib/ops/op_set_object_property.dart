import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetObjectProperty implements Op {
  OpSetObjectProperty(MicroDartEngine engine) : _name = engine.readString();

  OpSetObjectProperty.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opSetObjectProperty, ...Ops.i32b(pool.addOrGet(_name))];

  @override
  void run(Scope scope) {
    var instance = scope.popFrame() as Instance;
    var val = scope.popFrame();
    instance.setField(scope, _name, val);
  }

  @override
  String toString() => "SetObjectProperty($_name)";
}
