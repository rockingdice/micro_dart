import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpCallDynamicAsync extends OpCallDynamic {
  OpCallDynamicAsync(MicroDartEngine engine) : super(engine);

  OpCallDynamicAsync.make(String name, bool isStatic, bool isGetter,
      bool isSetter, bool isAsync, bool hasArgs)
      : super.make(name, isStatic, isGetter, isSetter, isAsync, hasArgs);

  @override
  List<int> get bytes => [
        Ops.opCallDynamicAsync,
        ...Ops.str(_name),
        ...Ops.i8b(_isStatic ? 1 : 0),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
        ...Ops.i8b(_hasArgs ? 1 : 0)
      ];

  @override
  Future run(Scope scope) {
    String key = _getKey(scope) ?? _name;

    if (scope.engine.declarations.containsKey(key)) {
      int pointer = scope.engine.declarations[key]!;
      return scope.engine
          .callPointerAsync(scope, _name, _hasArgs, _isAsync, pointer);
    } else {
      throw Exception("currently not support external function ");
    }
  }

  @override
  String toString() =>
      'OpCallDynamicAsync($_name,$_isStatic,$_isGetter,$_isSetter)';
}

///调用外部方法
class OpCallDynamic implements Op {
  OpCallDynamic(MicroDartEngine interpreter)
      : _name = interpreter.readString(),
        _isStatic = interpreter.readUint8() == 1 ? true : false,
        _isGetter = interpreter.readUint8() == 1 ? true : false,
        _isSetter = interpreter.readUint8() == 1 ? true : false,
        _isAsync = interpreter.readUint8() == 1 ? true : false,
        _hasArgs = interpreter.readUint8() == 1 ? true : false;

  final String _name;
  final bool _isGetter;
  final bool _isSetter;
  final bool _isStatic;
  final bool _isAsync;
  final bool _hasArgs;

  OpCallDynamic.make(
    this._name,
    this._isStatic,
    this._isGetter,
    this._isSetter,
    this._isAsync,
    this._hasArgs,
  );

  @override
  int get opLen => Ops.lenBegin + Ops.lenStr(_name) + Ops.lenI8 * 5;

  @override
  List<int> get bytes => [
        Ops.opCallDynamic,
        ...Ops.str(_name),
        ...Ops.i8b(_isStatic ? 1 : 0),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
        ...Ops.i8b(_hasArgs ? 1 : 0)
      ];

  @override
  void run(Scope scope) {
    String key = _getKey(scope) ?? _name;

    if (scope.engine.declarations.containsKey(key)) {
      int pointer = scope.engine.declarations[key]!;
      scope.engine.callPointer(scope, _name, _hasArgs, pointer);
    } else {
      throw Exception("currently not support external function ");
    }
  }

  String? _getKey(Scope scope) {
    //我们不能确定调用的方法一定就是内部的，因为有时候可能是super的方法,调用的是父类的方法，而父类可能是外部的类
    if (!_isStatic) {
      var args = scope.getFrame() as List<dynamic>;
      var instance = args.first as Instance;
      return scope.engine
          .getKeyByType(instance.type, _name, isSetter: _isSetter);
    }
    return null;
  }

  @override
  String toString() => 'CallDynamic($_name,$_isStatic,$_isGetter,$_isSetter)';
}
