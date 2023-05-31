import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpGetGlobalParam implements Op {
  OpGetGlobalParam(MicroDartEngine interpreter)
      : _name = interpreter.readString(),
        _location = interpreter.readInt32();

  OpGetGlobalParam.make(this._name, this._location);

  final String _name;
  final int _location;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(_name) + Ops.lenI32;

  @override
  List<int> get bytes =>
      [Ops.opGetGlobalParam, ...Ops.str(_name), ...Ops.i32b(_location)];

  @override
  void run(Scope scope) {
    //有可能出现属性没有初始化的情况,这个时候先执行初始化
    if (!scope.engine.hasGlobalParam(_name)) {
      scope.engine.callPointer(scope, _name, false, _location);
    } else {
      scope.pushFrame(scope.engine.getGlobalParam(_name));
    }
  }

  @override
  String toString() => "GetGlobalParam($_name,$_location)";
}
