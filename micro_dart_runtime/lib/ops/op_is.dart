import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用方法
class OpIs implements Op {
  OpIs(MicroDartEngine engine) : _ref = ClassRef.fromEngine(engine);

  OpIs.make(this._ref);

  final ClassRef _ref;

  @override
  int get opLen => Ops.lenBegin + ClassRef.byteLen;

  @override
  List<int> bytes(ConstantPool pool) => [Ops.opIs, ..._ref.bytes(pool)];

  @override
  void run(Scope scope) {
    var instance = scope.popFrame();
    bool isType = false;
    if (instance is Instance) {
      var superType = scope.engine.types[_ref];
      if (superType == null) {
        throw Exception("$_ref is null");
      }
      isType = instance.type.isType(superType, scope.engine);
    } else {
      isType = scope.engine
          .callMemberFunctionExternal(_ref, "#is", scope, instance, [], {});
    }

    scope.pushFrame(isType);
  }

  @override
  String toString() => 'Is($_ref)';
}
