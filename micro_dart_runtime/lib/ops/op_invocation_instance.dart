import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class OpCallInstanceInvocationAsync extends OpCallInstanceInvocation {
  OpCallInstanceInvocationAsync(MicroDartEngine engine) : super(engine);

  OpCallInstanceInvocationAsync.make(CallRef ref, bool isGetter, bool isSetter,
      bool isAsync, bool isMixinDeclaration, bool hasArgs)
      : super.make(
            ref, isGetter, isSetter, isAsync, isMixinDeclaration, hasArgs);

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opCallInstanceInvocationAsync,
        ..._ref.bytes(pool),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
        ...Ops.i8b(_isMixinDeclaration ? 1 : 0),
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
      'OpCallInstanceInvocationAsync($_ref,$_isGetter,$_isSetter)';
}

class OpCallInstanceInvocation implements Op {
  OpCallInstanceInvocation(MicroDartEngine engine)
      : _ref = CallRef.fromEngine(engine),
        _isGetter = engine.readUint8() == 1 ? true : false,
        _isSetter = engine.readUint8() == 1 ? true : false,
        _isAsync = engine.readUint8() == 1 ? true : false,
        _isMixinDeclaration = engine.readUint8() == 1 ? true : false,
        _hasArgs = engine.readUint8() == 1 ? true : false;

  final CallRef _ref;
  final bool _isGetter;
  final bool _isSetter;
  final bool _isAsync;
  final bool _isMixinDeclaration;
  final bool _hasArgs;

  OpCallInstanceInvocation.make(
    this._ref,
    this._isGetter,
    this._isSetter,
    this._isAsync,
    this._isMixinDeclaration,
    this._hasArgs,
  );

  @override
  int get opLen => Ops.lenBegin + CallRef.byteLen + Ops.lenI8 * 5;

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opCallInstanceInvocation,
        ..._ref.bytes(pool),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
        ...Ops.i8b(_isMixinDeclaration ? 1 : 0),
        ...Ops.i8b(_hasArgs ? 1 : 0)
      ];

  @override
  void run(Scope scope) {
    //这里首先是要找内部方法的。内部方法没找到再找外部方法。
    List<dynamic> args = scope.getFrame() as List<dynamic>;
    dynamic callee = args.first;
    if (callee is Instance) {
      // var superClass = ClassRef(_ref.library, _ref.className);
      var ref = scope.engine
          .getInstanceCallRefRecursively(callee.type, _ref.name, _isSetter);
  
      if (scope.engine.declarations.containsKey(ref)) {
        //表示这是一个内部引用
        int pointer = scope.engine.declarations[ref]!;
        scope.engine.callPointer(scope, ref.name, true, pointer);
        return;
      }
    }

    args = scope.popFrame() as List<dynamic>;
    {
      //没有找到内部引用，尝试外部引用
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

      var function =
          ExternalMirror.findClassMemberGetter(_ref.className, _ref.name)!;

      final instance = Function.apply(
          // isGlobalFunc ? function(scope) :
          function(scope, callee),
          positionalArguments,
          namedArguments.map<Symbol, dynamic>(
              (key, value) => MapEntry(Symbol(key), value)));
      scope.pushFrame(instance);
    }
  }

  @override
  String toString() => 'OpCallInstanceInvocation($_ref,$_isGetter,$_isSetter)';
}
