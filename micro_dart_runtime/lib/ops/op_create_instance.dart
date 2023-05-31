import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///新建实例
class OpCreateInstance implements Op {
  OpCreateInstance(MicroDartEngine interpreter)
      : _libraryName = interpreter.readString(),
        _className = interpreter.readString();

  OpCreateInstance.make(this._libraryName, this._className);

  final String _libraryName;
  final String _className;

  @override
  int get opLen =>
      Ops.lenBegin + Ops.lenStr(_libraryName) + Ops.lenStr(_className);

  @override
  List<int> get bytes =>
      [Ops.opCreateInstance, ...Ops.str(_libraryName), ...Ops.str(_className)];

  @override
  void run(Scope scope) {
    scope.pushFrame(
        InstanceImpl(scope.engine.getType("$_libraryName@$_className")));
  }

  @override
  String toString() => 'CreateInstance($_libraryName,$_className)';
}
