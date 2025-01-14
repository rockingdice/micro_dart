import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpPopArguments implements Op {
  OpPopArguments(MicroDartEngine engine)
      : _positionalNames = engine.readStringList(),
        _isGetter = engine.readUint8() == 1 ? true : false,
        _isStatic = engine.readUint8() == 1 ? true : false;

  OpPopArguments.make(this._positionalNames, this._isGetter, this._isStatic);

  final List<String> _positionalNames;
  final bool _isStatic;
  final bool _isGetter;

  @override
  int get opLen =>
      Ops.lenBegin + Ops.lenStrlist(_positionalNames) + Ops.lenI8 * 2;

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opPopArguments,
        ...Ops.strlist(_positionalNames, pool),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isStatic ? 1 : 0)
      ];

  @override
  void run(Scope scope) {
    if (!scope.hasArgs) {
      return;
    }
    var args = scope.popScopeParam("#args") as List<dynamic>;
    int namedLength = args.removeLast() as int;
    for (int i = 0; i < namedLength; i++) {
      String key = args.removeLast() as String;
      var value = args.removeLast();
      scope.setScopeParam(key, value);
    }
    int positionalLength = args.removeLast() as int;

    for (int i = 0; i < positionalLength; i++) {
      var value = args.removeLast();
      scope.setScopeParam(_positionalNames[i], value);
    }

    if (!_isStatic) {
      var value = args.removeLast();
      scope.setScopeParam("#this", value);
    }
  }

  @override
  String toString() =>
      'OpPopArguments($_isGetter,$_isStatic,$_positionalNames)';
}
