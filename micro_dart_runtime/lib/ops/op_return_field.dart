import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpReturnField implements Op {
  OpReturnField(MicroDartEngine engine) : _ref = CallRef.fromEngine(engine);

  OpReturnField.make(this._ref);

  final CallRef _ref;

  @override
  int get opLen => Ops.lenBegin + CallRef.byteLen;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opReturnField, ..._ref.bytes(pool)];

  @override
  void run(Scope scope) {
    scope.hasReturn = true;
    var value = scope.popFrame();
    if (_ref.isStatic) {
      scope.engine.setGlobalParam(_ref, value);
      scope.returnValue = value;
    } else {
      Instance instance = scope.getParam("#this") as Instance;
      instance.setParam(scope, _ref.name, value);
      scope.returnValue = value;
    }
  }

  @override
  String toString() => 'ReturnField($_ref)';
}
