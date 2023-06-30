import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpPushSymbol implements Op {
  OpPushSymbol(MicroDartEngine runtime) : _name = runtime.readString();

  OpPushSymbol.make(this._name);

  final String _name;

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(_name);

  @override
  List<int> get bytes => [Ops.opPushSymbol, ...Ops.str(_name)];

  // Set value at position to constant
  @override
  void run(Scope scope) {
    scope.pushFrame(Symbol(_name));
  }

  @override
  String toString() => 'OpPushSymbol($_name)';
}
