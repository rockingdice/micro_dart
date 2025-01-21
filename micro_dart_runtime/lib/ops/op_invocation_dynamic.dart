import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpCallDynamicInvocationAsync extends OpCallDynamicInvocation {
  OpCallDynamicInvocationAsync(MicroDartEngine engine) : super(engine);

  OpCallDynamicInvocationAsync.make(String name, bool isAsync)
      : super.make(name, isAsync);

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opCallDynamicInvocationAsync,
        ...Ops.i32b(pool.addOrGet(_name)),
        ...Ops.i8b(_isAsync ? 1 : 0)
      ];

  @override
  Future run(Scope scope) async {
    scope.engine.callDynamicFunctionAsync(scope, _name, true);
  }

  @override
  String toString() => 'CallDynamicInvocationAsync($_name,$_isAsync)';
}

///调用外部方法
class OpCallDynamicInvocation implements Op {
  OpCallDynamicInvocation(MicroDartEngine engine)
      : _name = engine.readString(),
        _isAsync = engine.readUint8() == 1 ? true : false;

  final String _name;
  final bool _isAsync;

  OpCallDynamicInvocation.make(this._name, this._isAsync);

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32 + Ops.lenI8;

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opCallDynamicInvocation,
        ...Ops.i32b(pool.addOrGet(_name)),
        ...Ops.i8b(_isAsync ? 1 : 0)
      ];

  @override
  void run(Scope scope) {
    scope.engine.callDynamicFunction(scope, _name, true);
  }

  @override
  String toString() => 'CallDynamicInvocation($_name,$_isAsync)';
}
