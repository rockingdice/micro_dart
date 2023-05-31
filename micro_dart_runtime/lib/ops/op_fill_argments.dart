import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpFillArgments implements Op {
  OpFillArgments(MicroDartEngine engine)
      : _posationalNames = engine.readStringList(),
        _isGetter = engine.readUint8() == 1 ? true : false,
        _isStatic = engine.readUint8() == 1 ? true : false;

  OpFillArgments.make(this._posationalNames, this._isGetter, this._isStatic);

  final List<String> _posationalNames;
  final bool _isStatic;
  final bool _isGetter;

  @override
  int get opLen =>
      Ops.lenBegin + Ops.lenStrlist(_posationalNames) + Ops.lenI8 * 2;

  @override
  List<int> get bytes => [
        Ops.opFillArgments,
        ...Ops.strlist(_posationalNames),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isStatic ? 1 : 0)
      ];

  @override
  void run(Scope scope) {
    if (!_isGetter) {
      int namedLength = scope.parent?.popFrame() as int;
      for (int i = 0; i < namedLength; i++) {
        String key = scope.parent?.popFrame() as String;
        var value = scope.parent?.popFrame();
        scope.setScopeParam(key, value);
      }
      int posationalLength = scope.parent?.popFrame() as int;

      for (int i = 0; i < posationalLength; i++) {
        var value = scope.parent?.popFrame();
        scope.setScopeParam(_posationalNames[i], value);
      }
    }

    if (!_isStatic) {
      var value = scope.parent?.popFrame();
      scope.setScopeParam("#this", value);
    }
  }

  @override
  String toString() =>
      'OpFillArgments($_isGetter,$_isStatic,$_posationalNames)';
}
