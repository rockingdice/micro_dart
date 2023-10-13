import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpCallDynamicAsync extends OpCallDynamic {
  OpCallDynamicAsync(MicroDartEngine engine) : super(engine);

  OpCallDynamicAsync.make(CallRef ref, bool isStatic, bool isGetter,
      bool isSetter, bool isAsync, bool hasArgs)
      : super.make(ref, isStatic, isGetter, isSetter, isAsync, hasArgs);

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opCallDynamicAsync,
        ..._ref.bytes(pool),
        ...Ops.i8b(_isStatic ? 1 : 0),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
        ...Ops.i8b(_hasArgs ? 1 : 0)
      ];

  @override
  Future run(Scope scope) {
    var ref = _getKey(scope) ?? _ref;

    if (scope.engine.declarations.containsKey(ref)) {
      int pointer = scope.engine.declarations[ref]!;
      return scope.engine
          .callPointerAsync(scope, ref.callName, _hasArgs, _isAsync, pointer);
    } else {
      throw Exception("currently not support external function ");
    }
  }

  @override
  String toString() =>
      'OpCallDynamicAsync($_ref,$_isStatic,$_isGetter,$_isSetter)';
}

///调用外部方法
class OpCallDynamic implements Op {
  OpCallDynamic(MicroDartEngine engine)
      : _ref = CallRef.fromEngine(engine),
        _isStatic = engine.readUint8() == 1 ? true : false,
        _isGetter = engine.readUint8() == 1 ? true : false,
        _isSetter = engine.readUint8() == 1 ? true : false,
        _isAsync = engine.readUint8() == 1 ? true : false,
        _hasArgs = engine.readUint8() == 1 ? true : false;

  final CallRef _ref;
  final bool _isGetter;
  final bool _isSetter;
  final bool _isStatic;
  final bool _isAsync;
  final bool _hasArgs;

  OpCallDynamic.make(
    this._ref,
    this._isStatic,
    this._isGetter,
    this._isSetter,
    this._isAsync,
    this._hasArgs,
  );

  @override
  int get opLen => Ops.lenBegin + CallRef.byteLen + Ops.lenI8 * 5;

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opCallDynamic,
        ..._ref.bytes(pool),
        ...Ops.i8b(_isStatic ? 1 : 0),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
        ...Ops.i8b(_hasArgs ? 1 : 0)
      ];

  @override
  void run(Scope scope) {
    if (!_isStatic) {
      var args = scope.getFrame() as List<dynamic>;
      var instance = args.first as Instance;
      var ref = scope.engine
          .getCallRefByType(instance.type, _ref.name, _isSetter, _isStatic);
      int pointer = scope.engine.declarations[ref]!;
      scope.engine.callPointer(scope, ref!.callName, _hasArgs, pointer);
      return;
    }

    if (scope.engine.declarations.containsKey(_ref)) {
      int pointer = scope.engine.declarations[_ref]!;
      scope.engine.callPointer(scope, _ref.callName, _hasArgs, pointer);
    } else {
      throw Exception("currently not support external function $_ref");
    }
  }

  CallRef? _getKey(Scope scope) {
    //我们不能确定调用的方法一定就是内部的，因为有时候可能是super的方法,调用的是父类的方法，而父类可能是外部的类
    if (!_isStatic) {
      var args = scope.getFrame() as List<dynamic>;
      var instance = args.first as Instance;
      return scope.engine
          .getCallRefByType(instance.type, _ref.name, _isSetter, _isStatic);
    }
    return null;
  }

  @override
  String toString() => 'CallDynamic($_ref,$_isStatic,$_isGetter,$_isSetter)';
}
