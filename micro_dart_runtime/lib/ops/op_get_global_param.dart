import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpGetGlobalParam implements Op {
  OpGetGlobalParam(MicroDartEngine engine)
      : _ref = CallRef.fromEngine(engine),
        _location = engine.readInt32();

  OpGetGlobalParam.make(this._ref, this._location);

  final CallRef _ref;
  final int _location;

  @override
  int get opLen => Ops.lenBegin + CallRef.byteLen + Ops.lenI32;

  @override
  List<int> bytes(ConstantPool pool) =>
      [Ops.opGetGlobalParam, ..._ref.bytes(pool), ...Ops.i32b(_location)];

  @override
  void run(Scope scope) {
    //有可能出现属性没有初始化的情况,这个时候先执行初始化
    if (!scope.engine.hasGlobalParam(_ref)) {
      scope.engine.callPointer(scope, _ref.callName, false, _location);
    } else {
      scope.pushFrame(scope.engine.getGlobalParam(_ref));
    }
  }

  @override
  String toString() => "GetGlobalParam($_ref,$_location)";
}
