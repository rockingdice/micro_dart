import 'package:micro_dart_runtime/micro_dart_runtime.dart';

const List<String> _operatorFunctions1 = ["unary-", "unary+", "~"];
const List<String> _operatorFunctions2 = [
  "&",
  "|",
  "^",
  "==",
  "+",
  "-",
  "*",
  "~/",
  "<",
  ">",
  "<=",
  ">=",
  "/",
  "%",
  "<<",
  ">>",
  ">>>",
  "[]"
];
const List<String> _operatorFunctions3 = ["[]="];

///调用外部方法
class CallExternal implements Op {
  CallExternal(MicroDartEngine interpreter)
      : kind = interpreter.readUint8(),
        isStatic = interpreter.readUint8() == 1 ? true : false,
        isGetter = interpreter.readUint8() == 1 ? true : false,
        isSetter = interpreter.readUint8() == 1 ? true : false,
        key = interpreter.readString(),
        libraryUri = interpreter.readString(),
        className = interpreter.readString(),
        name = interpreter.readString(),
        posationalLengh = interpreter.readInt32(),
        namedList = interpreter.readStringList();
  final int kind;
  final bool isStatic;
  final bool isGetter;
  final bool isSetter;

  final String key;
  final String libraryUri;
  final String className;
  final String name;

  final int posationalLengh;
  final List<String> namedList;

  CallExternal.make({
    required this.libraryUri,
    required this.key,
    required this.kind,
    required this.isStatic,
    required this.isGetter,
    required this.isSetter,
    required this.className,
    required this.name,
    required this.posationalLengh,
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
        ...Ops.i32b(posationalLengh),
        ...Ops.strlist(namedList)
      ];

  @override
  void run(MicroRuntime runtime) {
    List<Object?> positionalArguments = List.empty(growable: true);
    for (int i = 0; i < posationalLengh; i++) {
      positionalArguments.add(runtime.scope.popFrame());
    }

    //表示这是构造函数初始化
    if (kind == 3) {
      var function = runtime.interpreter.externalFunctions[key];
      Map<String, dynamic> namedArguments = {};
      for (var element in namedList) {
        namedArguments[element] = runtime.getParam(element);
      }
      //这里需要修改
      var instance = InstanceBridge(
        runtime.interpreter,
        function!(positionalArguments, namedArguments),
        libraryUri,
        className,
      );
      runtime.scope.pushFrame(instance);
      return;
    }

    Map<Symbol, dynamic> namedArguments = {};
    for (var element in namedList) {
      namedArguments[Symbol(element)] = runtime.getParam(element);
    }

    if (isStatic) {
      if (isGetter) {
        runtime.scope.pushFrame(runtime.interpreter.externalFunctions[key]!);
        return;
      } else if (isSetter) {
        runtime.interpreter.externalFunctions[key]!(positionalArguments.first);
        return;
      }

      Function.apply(
          runtime.interpreter.externalFunctions[key]!(), positionalArguments);
    } else {
      var target = runtime.scope.popFrame();

      if (isSetter) {
        runtime.scope
            .pushFrame(runtime.interpreter.externalFunctions[key]!(target));
        return;
      } else if (isSetter) {
        runtime.interpreter.externalFunctions[key]!(
            target, positionalArguments.first);
        return;
      }

      if (_operatorFunctions1.contains(name)) {
        runtime.scope
            .pushFrame(runtime.interpreter.externalFunctions[key]!(target));
        return;
      } else if (_operatorFunctions2.contains(name)) {
        var function = runtime.interpreter.externalFunctions[key];
        runtime.scope.pushFrame(function!(target, positionalArguments.first));
        return;
      } else if (_operatorFunctions3.contains(name)) {
        runtime.scope.pushFrame(runtime.interpreter.externalFunctions[key]!(
            target, positionalArguments.first, positionalArguments[1]));
        return;
      }

      runtime.scope.pushFrame(Function.apply(
          runtime.interpreter.externalFunctions[key]!(target),
          positionalArguments,
          namedArguments));
    }
  }

  @override
  String toString() =>
      'CallExternal($kind,$isStatic,$isGetter,$isSetter,$key,$libraryUri,$className,$name,$posationalLengh,$namedList)';
}
