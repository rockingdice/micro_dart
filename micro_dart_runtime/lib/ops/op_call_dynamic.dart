import 'package:micro_dart_runtime/flags.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpCallDynamicAsync extends OpCallDynamic {
  OpCallDynamicAsync(MicroDartEngine engine) : super(engine);

  OpCallDynamicAsync.make(CallRef ref, bool isStatic, bool isGetter,
      bool isSetter, bool isAsync, bool hasArgs)
      : super.make(ref, isStatic, isGetter, isSetter, isAsync, hasArgs);

  @override
  int get opIndex => Ops.opCallDynamicAsync;

  @override
  Future run(Scope scope) {
    var ref = _getKey(scope) ?? _ref;

    if (scope.engine.declarations.containsKey(ref)) {
      int pointer = scope.engine.declarations[ref]!;
      return scope.engine
          .callPointerAsync(scope, ref.callName, hasArgs, isAsync, pointer);
    } else {
      throw Exception("currently not support external function ");
    }
  }

  @override
  String toString() => 'OpCallAsync($_ref,$isStatic,$isGetter,$isSetter)';
}

///调用外部方法
class OpCallDynamic implements Op {
  final int _flags;
  final CallRef _ref;
  OpCallDynamic(MicroDartEngine engine)
      : _ref = CallRef.fromEngine(engine),
        _flags = engine.readInt32();

  bool get isGetter => Flags.isGetter(_flags);
  bool get isSetter => Flags.isSetter(_flags);
  bool get isStatic => Flags.isStatic(_flags);
  bool get isAsync => Flags.isAsync(_flags);
  bool get hasArgs => Flags.hasArgs(_flags);

  OpCallDynamic.make(
    this._ref,
    bool _isStatic,
    bool _isGetter,
    bool _isSetter,
    bool _isAsync,
    bool _hasArgs,
  ) : _flags = Flags.generateFlags(
            isStatic: _isStatic,
            isGetter: _isGetter,
            isSetter: _isSetter,
            isAsync: _isAsync,
            hasArgs: _hasArgs);

  @override
  int get opLen => Ops.lenBegin + CallRef.byteLen + Ops.lenU32;

  int get opIndex => Ops.opCallDynamic;

  @override
  List<int> bytes(ConstantPool pool) =>
      [opIndex, ..._ref.bytes(pool), ...Ops.i32b(_flags)];

  @override
  void run(Scope scope) {
    if (!isStatic) {
      var args = scope.getFrame() as List<dynamic>;
      var instance = args.first as Instance;
      var ref = scope.engine
          .getCallRefByType(instance.type, _ref.name, isSetter, isStatic);
      int pointer = scope.engine.declarations[ref]!;
      scope.engine.callPointer(scope, ref!.callName, hasArgs, pointer);
      return;
    }

    if (scope.engine.declarations.containsKey(_ref)) {
      int pointer = scope.engine.declarations[_ref]!;
      scope.engine.callPointer(scope, _ref.callName, hasArgs, pointer);
    } else {
      throw Exception("currently not support external function $_ref");
    }
  }

  CallRef? _getKey(Scope scope) {
    //我们不能确定调用的方法一定就是内部的，因为有时候可能是super的方法,调用的是父类的方法，而父类可能是外部的类
    if (!isStatic) {
      var args = scope.getFrame() as List<dynamic>;
      var instance = args.first as Instance;
      return scope.engine
          .getCallRefByType(instance.type, _ref.name, isSetter, isStatic);
    }
    return null;
  }

  @override
  String toString() => 'OpCall($_ref,$isStatic,$isGetter,$isSetter,$hasArgs)';
}
