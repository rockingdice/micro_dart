import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpSetStatic implements Op {
  OpSetStatic(MicroDartEngine engine) : _ref = CallRef.fromEngine(engine);

  OpSetStatic.make(this._ref);

  final CallRef _ref;

  @override
  int get opLen => Ops.lenBegin + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opSetStatic, ..._ref.bytes(pool)];

  @override
  void run(Scope scope) {
    var value = scope.popFrame();
    if (scope.engine.declarations.containsKey(_ref)) {
      //内部setter
      scope.engine.setGlobalParam(_ref, value);
    } else {
      //外部getter
      var function = ExternalMirror.findStaticSetter(_ref.name);
      if (function == null) {
        throw Exception(
            "not found external function: ${_ref.className} ${_ref.name}");
      }

      Function.apply(function(scope), [value], <Symbol, dynamic>{});
    }
  }

  @override
  String toString() => "SetStatic(${_ref.name})";
}
