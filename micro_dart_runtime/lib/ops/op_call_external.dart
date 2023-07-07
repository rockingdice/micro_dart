import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class OpCallExternal implements Op {
  OpCallExternal(MicroDartEngine interpreter)
      : kind = interpreter.readUint8(),
        isStatic = interpreter.readUint8() == 1 ? true : false,
        isGetter = interpreter.readUint8() == 1 ? true : false,
        isSetter = interpreter.readUint8() == 1 ? true : false,
        hasReturn = interpreter.readUint8() == 1 ? true : false,
        key = interpreter.readString(),
        libraryUri = interpreter.readString(),
        className = interpreter.readString(),
        name = interpreter.readString(),
        posationalLength = interpreter.readInt32(),
        namedList = interpreter.readStringList();
  final int kind;
  final bool isStatic;
  final bool isGetter;
  final bool isSetter;
  final bool hasReturn;

  final String key;
  final String libraryUri;
  final String className;
  final String name;

  final int posationalLength;
  final List<String> namedList;

  OpCallExternal.make({
    required this.libraryUri,
    required this.key,
    required this.kind,
    required this.isStatic,
    required this.isGetter,
    required this.isSetter,
    required this.hasReturn,
    required this.className,
    required this.name,
    required this.posationalLength,
    required this.namedList,
  });

  @override
  int get opLen =>
      Ops.lenBegin +
      Ops.lenI8 * 5 +
      Ops.lenStr(key) +
      Ops.lenStr(libraryUri) +
      Ops.lenStr(className) +
      Ops.lenStr(name) +
      Ops.lenI32 +
      Ops.lenStrlist(namedList);

  @override
  List<int> get bytes => [
        Ops.opCallExternal,
        ...Ops.i8b(kind),
        ...Ops.i8b(isStatic ? 1 : 0),
        ...Ops.i8b(isGetter ? 1 : 0),
        ...Ops.i8b(isSetter ? 1 : 0),
        ...Ops.i8b(hasReturn ? 1 : 0),
        ...Ops.str(key),
        ...Ops.str(libraryUri),
        ...Ops.str(className),
        ...Ops.str(name),
        ...Ops.i32b(posationalLength),
        ...Ops.strlist(namedList)
      ];

  @override
  void run(Scope scope) {
    final Map<String, dynamic> namedArguments = {};
    List<dynamic> positionalArguments =
        List.filled(posationalLength, null, growable: false);
    var args = scope.popFrame() as List<dynamic>;
    final int namedLength = args.removeLast() as int;
    for (int i = 0; i < namedLength; i++) {
      String key = args.removeLast() as String;
      var value = args.removeLast();
      namedArguments[key] = value;
    }
    int pLength = args.removeLast() as int;
    for (int i = 0; i < pLength; i++) {
      var value = args.removeLast();
      positionalArguments[i] = value;
    }
    //print("call external: $key");
    var function = scope.engine.externalFunctions[key];
    if (function == null) {
      throw Exception("not found external function: $key");
    }
    //表示这是构造函数初始化
    if (kind == 3) {
      //这里需要修改
      var instance = Function.apply(
          function(scope),
          positionalArguments,
          namedArguments.map<Symbol, dynamic>(
              (key, value) => MapEntry(Symbol(key), value)));

      scope.pushFrame(instance);
      return;
    }

    if (isStatic) {
      if (isGetter) {
        scope.pushFrame(function(scope));
        return;
      }
      if (isSetter) {
        Function.apply(function(scope), positionalArguments);
        return;
      }
      final instance = Function.apply(
          function(scope),
          positionalArguments,
          namedArguments.map<Symbol, dynamic>(
              (key, value) => MapEntry(Symbol(key), value)));
      if (hasReturn) {
        scope.pushFrame(instance);
      }
    } else {
      dynamic target = args.removeLast();

      if (target is InstanceBridge) {
        if (target.superGetters[name] != null) {
          function = target.superGetters[name]!;
        }
      }

      if (isGetter) {
        scope.pushFrame(function(scope, target));
        return;
      }
      if (isSetter) {
        Function.apply(
            function(scope, target),
            positionalArguments,
            namedArguments.map<Symbol, dynamic>(
                (key, value) => MapEntry(Symbol(key), value)));
        return;
      }
      final instance = Function.apply(
          function(scope, target),
          positionalArguments,
          namedArguments.map<Symbol, dynamic>(
              (key, value) => MapEntry(Symbol(key), value)));
      if (hasReturn) {
        scope.pushFrame(instance);
      }
    }
  }

  @override
  String toString() =>
      'CallExternal($kind,$isStatic,$isGetter,$isSetter,$key,$libraryUri,$className,$name,$posationalLength,$namedList)';
}
