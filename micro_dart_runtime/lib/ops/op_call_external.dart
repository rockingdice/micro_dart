import 'package:micro_dart_runtime/micro_dart_runtime.dart';

///调用外部方法
class OpCallExternal implements Op {
  OpCallExternal(MicroDartEngine interpreter)
      : kind = interpreter.readUint8(),
        isStatic = interpreter.readUint8() == 1 ? true : false,
        isGetter = interpreter.readUint8() == 1 ? true : false,
        isSetter = interpreter.readUint8() == 1 ? true : false,
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
    required this.className,
    required this.name,
    required this.posationalLength,
    required this.namedList,
  });

  @override
  int get opLen =>
      Ops.lenBegin +
      Ops.lenI8 * 4 +
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
        ...Ops.str(key),
        ...Ops.str(libraryUri),
        ...Ops.str(className),
        ...Ops.str(name),
        ...Ops.i32b(posationalLength),
        ...Ops.strlist(namedList)
      ];

  @override
  void run(Scope scope) {
    final Map<Symbol, dynamic> namedArguments = {};
    List<Object?> positionalArguments =
        List.filled(posationalLength, null, growable: false);

    if (!isGetter) {
      final int namedLength = scope.popFrame() as int;
      for (int i = 0; i < namedLength; i++) {
        String key = scope.popFrame() as String;
        var value = scope.popFrame();
        namedArguments[Symbol(key)] = value;
      }
      int pLength = scope.popFrame() as int;
      for (int i = 0; i < pLength; i++) {
        var value = scope.popFrame();
        positionalArguments[i] = value;
      }
    }

    //表示这是构造函数初始化
    if (kind == 3) {
      var function = scope.engine.externalFunctions[key];
      Map<String, dynamic> namedArguments = {};
      for (var element in namedList) {
        namedArguments[element] = scope.getParam(element);
      }
      //这里需要修改

      var instance = InstanceBridge(
          scope.engine,
          function!(positionalArguments, namedArguments),
          scope.engine.getType("$libraryUri@$className"));

      scope.pushFrame(instance);
      return;
    }

    if (isStatic) {
      if (isGetter) {
        scope.pushFrame(scope.engine.externalFunctions[key]!);
        return;
      } else if (isSetter) {
        scope.engine.externalFunctions[key]!(positionalArguments.first);
        return;
      }
      var result = Function.apply(
          scope.engine.externalFunctions[key]!(), positionalArguments);
      scope.pushFrame(result);
    } else {
      dynamic target = scope.popFrame();
      if (target is InstanceBridge) {
        target = target.target;
      }

      if (isGetter) {
        scope.pushFrame(scope.engine.externalFunctions[key]!(target));
        return;
      } else if (isSetter) {
        scope.engine.externalFunctions[key]!(target, positionalArguments.first);
        return;
      }

      if (operator1.contains(name)) {
        scope.pushFrame(scope.engine.externalFunctions[key]!(target));
        return;
      } else if (operator2.contains(name)) {
        var function = scope.engine.externalFunctions[key];
        dynamic other = positionalArguments.first;
        if (other is InstanceBridge) {
          other = other.target;
        }
        scope.pushFrame(function!(target, other));
        return;
      } else if (operator3.contains(name)) {
        dynamic first = positionalArguments.first;
        if (first is InstanceBridge) {
          first = first.target;
        }
        dynamic second = positionalArguments[1];
        if (second is InstanceBridge) {
          second = first.target;
        }
        scope.pushFrame(
            scope.engine.externalFunctions[key]!(target, first, second));
        return;
      }

      scope.pushFrame(Function.apply(
          scope.engine.externalFunctions[key]!(target),
          positionalArguments,
          namedArguments));
    }
  }

  @override
  String toString() =>
      'CallExternal($kind,$isStatic,$isGetter,$isSetter,$key,$libraryUri,$className,$name,$posationalLength,$namedList)';
}
