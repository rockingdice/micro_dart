import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpCallStaticInvocationAsync extends OpCallStaticInvocation {
  OpCallStaticInvocationAsync(MicroDartEngine engine) : super(engine);

  OpCallStaticInvocationAsync.make(
      CallRef ref, bool isGetter, bool isSetter, bool isAsync, bool hasArgs)
      : super.make(ref, isGetter, isSetter, isAsync, hasArgs);

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opCallStaticInvocationAsync,
        ..._ref.bytes(pool),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
        ...Ops.i8b(_hasArgs ? 1 : 0)
      ];

  @override
  Future run(Scope scope) {
    throw Exception("currently not support external function ");
    var ref = _ref;

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
      'OpCallStaticInvocationAsync($_ref,$_isGetter,$_isSetter)';
}

class OpCallStaticInvocation implements Op {
  OpCallStaticInvocation(MicroDartEngine engine)
      : _ref = CallRef.fromEngine(engine),
        _isGetter = engine.readUint8() == 1 ? true : false,
        _isSetter = engine.readUint8() == 1 ? true : false,
        _isAsync = engine.readUint8() == 1 ? true : false,
        _hasArgs = engine.readUint8() == 1 ? true : false;

  final CallRef _ref;
  final bool _isGetter;
  final bool _isSetter;
  final bool _isAsync;
  final bool _hasArgs;

  OpCallStaticInvocation.make(
    this._ref,
    this._isGetter,
    this._isSetter,
    this._isAsync,
    this._hasArgs,
  );

  @override
  int get opLen => Ops.lenBegin + CallRef.byteLen + Ops.lenI8 * 4;

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opCallStaticInvocation,
        ..._ref.bytes(pool),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
        ...Ops.i8b(_hasArgs ? 1 : 0)
      ];

  @override
  void run(Scope scope) {
    //这里首先是要找内部方法的。内部方法没找到再找外部方法。
    if (scope.engine.declarations.containsKey(_ref)) {
      int pointer = scope.engine.declarations[_ref]!;
      scope.engine.callPointer(scope, _ref.callName, _hasArgs, pointer);
      return;
    }

    List<dynamic> args = scope.popFrame() as List<dynamic>;
    //没有找到内部引用，尝试外部引用
    {
      dynamic callee = args.first;

      final Map<String, dynamic> namedArguments = {};

      final int namedLength = args.removeLast() as int;
      for (int i = 0; i < namedLength; i++) {
        String key = args.removeLast() as String;
        var value = args.removeLast();
        namedArguments[key] = value;
      }
      int posationalLength = args.removeLast() as int;
      final List<dynamic> positionalArguments =
          List.filled(posationalLength, null, growable: false);
      for (int i = 0; i < posationalLength; i++) {
        var value = args.removeLast();
        positionalArguments[i] = value;
      }
      var function = ExternalMirror.findStaticGetter(_ref.name);
      if (function == null) {
        throw Exception(
            "not found external function: ${_ref.name} for type: ${_ref.className}");
      }
      final instance = Function.apply(
          function(scope),
          positionalArguments,
          namedArguments.map<Symbol, dynamic>(
              (key, value) => MapEntry(Symbol(key), value)));
      scope.pushFrame(instance); 
    }
  }

  @override
  String toString() => 'OpCallStaticInvocation($_ref,$_isGetter,$_isSetter)';
}
