import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpPopArgments implements Op {
  OpPopArgments(MicroDartEngine engine)
      : _posationalNames = engine.readStringList(),
        _isGetter = engine.readUint8() == 1 ? true : false,
        _isStatic = engine.readUint8() == 1 ? true : false;

  OpPopArgments.make(this._posationalNames, this._isGetter, this._isStatic);

  final List<String> _posationalNames;
  final bool _isStatic;
  final bool _isGetter;

  @override
  int get opLen =>
      Ops.lenBegin + Ops.lenStrlist(_posationalNames) + Ops.lenI8 * 2;

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opPopArgments,
        ...Ops.strlist(_posationalNames, pool),
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
    int posationalLength = args.removeLast() as int;

    for (int i = 0; i < posationalLength; i++) {
      var value = args.removeLast();
      scope.setScopeParam(_posationalNames[i], value);
    }

    if (!_isStatic) {
      var value = args.removeLast();
      scope.setScopeParam("#this", value);
    }
  }

  @override
  String toString() => 'OpPopArgments($_isGetter,$_isStatic,$_posationalNames)';
}
