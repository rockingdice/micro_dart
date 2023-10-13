import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class OpCallExternal implements Op {
  OpCallExternal(MicroDartEngine engine)
      : _ref = CallRef.fromEngine(engine),
        _hasReturn = engine.readUint8() == 1 ? true : false,
        classTypes = engine.readStringList(),
        callTypes = engine.readStringList();

  final CallRef _ref;
  final bool _hasReturn;
  final List<String> classTypes;
  final List<String> callTypes;

  OpCallExternal.make(
      this._ref, this._hasReturn, this.classTypes, this.callTypes);

  @override
  int get opLen =>
      Ops.lenBegin +
      CallRef.byteLen +
      Ops.lenI8 * 2 +
      Ops.lenStrlist(classTypes) +
      Ops.lenStrlist(callTypes);

  @override
  List<int> bytes(ConstantPool pool) => [
        Ops.opCallExternal,
        ..._ref.bytes(pool),
        ...Ops.i8b(_hasReturn ? 1 : 0),
        ...Ops.strlist(classTypes, pool),
        ...Ops.strlist(callTypes, pool)
      ];

  @override
  void run(Scope scope) {
    final Map<String, dynamic> namedArguments = {};

    var args = scope.popFrame() as List<dynamic>;
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
        scope.engine.getExternalFunction(_ref, classTypes, callTypes);
    if (function == null) {
      throw Exception("not found external function: $_ref");
    }

    if (_ref.isStatic) {
      if (_ref.isSetter) {
        Function.apply(function, positionalArguments);
        return;
      }

      try {
        final instance = Function.apply(
            function(scope),
            positionalArguments,
            namedArguments.map<Symbol, dynamic>(
                (key, value) => MapEntry(Symbol(key), value)));
        if (_hasReturn) {
          scope.pushFrame(instance);
        }
      } catch (e, s) {
        print("call error:$_ref ");
        rethrow;
      }
    } else {
      dynamic target = args.removeLast();

      if (target is InstanceBridge) {
        if (target.superGetters[_ref.name] != null) {
          function = target.superGetters[_ref.name]!;
        }
      }

      if (_ref.isSetter) {
        Function.apply(
            function(scope, target),
            positionalArguments,
            namedArguments.map<Symbol, dynamic>(
                (key, value) => MapEntry(Symbol(key), value)));
        return;
      }
      try {
        final instance = Function.apply(
            function(scope, target),
            positionalArguments,
            namedArguments.map<Symbol, dynamic>(
                (key, value) => MapEntry(Symbol(key), value)));
        if (_hasReturn) {
          scope.pushFrame(instance);
        }
      } catch (e, s) {
        print("call error:$_ref ");
        rethrow;
      }
    }
  }

  @override
  String toString() => 'CallExternal($_ref,$_hasReturn)';
}
