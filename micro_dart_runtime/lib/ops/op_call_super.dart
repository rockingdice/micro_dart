import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class OpCallSuperAsync extends OpCallSuper {
  OpCallSuperAsync(MicroDartEngine engine) : super(engine);

  OpCallSuperAsync.make(
    String key,
    String name,
    bool isGetter,
    bool isSetter,
    bool isAsync,
    int posationalLength,
    List<String> namedList,
  ) : super.make(key, name, isGetter, isSetter, isAsync, posationalLength,
            namedList);

  @override
  List<int> get bytes => [
        Ops.opCallSuperAsync,
        ...Ops.str(_key),
        ...Ops.str(_name),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
        ...Ops.i32b(_posationalLength),
        ...Ops.strlist(_namedList)
      ];

  @override
  Future run(Scope scope) async {
    var args = scope.getFrame() as List<dynamic>;
    var instance = args.first as Instance;
    var key = scope.engine
        .getKeyBySuperType(instance.type, _key, _name, isSetter: _isSetter);

    if (scope.engine.declarations.containsKey(key)) {
      //表示这是一个内部引用
      int pointer = scope.engine.declarations[key]!;
      return scope.engine
          .callPointerAsync(scope, _name, true, _isAsync, pointer);
    } else {
      _callExternal(scope, key, _name);
    }
  }

  @override
  String toString() =>
      'OpCallSuperAsync($_key,$_name,$_isGetter,$_isSetter,$_posationalLength,$_namedList)';
}

///调用外部方法
class OpCallSuper implements Op {
  OpCallSuper(MicroDartEngine interpreter)
      : _key = interpreter.readString(),
        _name = interpreter.readString(),
        _isGetter = interpreter.readUint8() == 1 ? true : false,
        _isSetter = interpreter.readUint8() == 1 ? true : false,
        _isAsync = interpreter.readUint8() == 1 ? true : false,
        _posationalLength = interpreter.readInt32(),
        _namedList = interpreter.readStringList();

  final String _key;
  final String _name;
  final int _posationalLength;
  final List<String> _namedList;
  final bool _isGetter;
  final bool _isSetter;
  final bool _isAsync;

  OpCallSuper.make(
    this._key,
    this._name,
    this._isGetter,
    this._isSetter,
    this._isAsync,
    this._posationalLength,
    this._namedList,
  );

  @override
  int get opLen =>
      Ops.lenBegin +
      Ops.lenStr(_key) +
      Ops.lenStr(_name) +
      Ops.lenI8 * 3 +
      Ops.lenI32 +
      Ops.lenStrlist(_namedList);

  @override
  List<int> get bytes => [
        Ops.opCallSuper,
        ...Ops.str(_key),
        ...Ops.str(_name),
        ...Ops.i8b(_isGetter ? 1 : 0),
        ...Ops.i8b(_isSetter ? 1 : 0),
        ...Ops.i8b(_isAsync ? 1 : 0),
        ...Ops.i32b(_posationalLength),
        ...Ops.strlist(_namedList)
      ];

  @override
  void run(Scope scope) {
    var args = scope.getFrame() as List<dynamic>;
    var instance = args.first as Instance;
    var key = scope.engine
        .getKeyBySuperType(instance.type, _key, _name, isSetter: _isSetter);

    if (scope.engine.declarations.containsKey(key)) {
      //表示这是一个内部引用
      int pointer = scope.engine.declarations[key]!;
      scope.engine.callPointer(scope, _name, true, pointer);
    } else {
      //表示这是一个外部调用
      _callExternal(scope, key, _name);
    }
  }

  void _callExternal(Scope scope, String? key, String name) {
    //表示这是一个外部调用
    final List<dynamic> positionalArguments =
        List.filled(_posationalLength, null);
    for (int i = 0; i < _posationalLength; i++) {
      positionalArguments[i] = scope.popFrame();
    }
    final Map<Symbol, dynamic> namedArguments = {};
    for (var element in _namedList) {
      namedArguments[Symbol(element)] = scope.getParam(element);
    }

    dynamic target = scope.popFrame();

    late Function function;
    if (target is InstanceBridge) {
      function = target.superGetters[name]!;
    } else {
      function = scope.engine.externalFunctions[key]!;
    }

    if (_isGetter) {
      scope.pushFrame(function(target));
      return;
    } else if (_isSetter) {
      function(target, positionalArguments.first);
      return;
    }

    if (operator1.contains(_name)) {
      scope.pushFrame(function(target));
      return;
    } else if (operator2.contains(_name)) {
      var other = positionalArguments.first;
      scope.pushFrame(function(target, other));
      return;
    } else if (operator3.contains(_name)) {
      var first = positionalArguments.first;
      var second = positionalArguments[1];
      scope.pushFrame(function(target, first, second));
      return;
    }

    scope.pushFrame(
        Function.apply(function(target), positionalArguments, namedArguments));
  }

  @override
  String toString() =>
      'CallSuper($_key,$_name,$_isGetter,$_isSetter,$_posationalLength,$_namedList)';
}
