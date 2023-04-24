part of 'ops.dart';

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
  CallExternal(MicroDartInterpreter interpreter)
      : kind = interpreter.readInt16(),
        isStatic = interpreter.readInt16() == 1 ? true : false,
        isGetter = interpreter.readInt16() == 1 ? true : false,
        isSetter = interpreter.readInt16() == 1 ? true : false,
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
      Ops.BASE_OPLEN +
      Ops.I16_LEN * 4 +
      Ops.istr_len(key) +
      Ops.istr_len(libraryUri) +
      Ops.istr_len(className) +
      Ops.istr_len(name) +
      Ops.I32_LEN +
      Ops.istrlist_len(namedList);

  @override
  List<int> get bytes => [
        Ops.OP_CALL_EXTERNAL,
        ...Ops.i16b(kind),
        ...Ops.i16b(isStatic ? 1 : 0),
        ...Ops.i16b(isGetter ? 1 : 0),
        ...Ops.i16b(isSetter ? 1 : 0),
        ...Ops.istr(key),
        ...Ops.istr(libraryUri),
        ...Ops.istr(className),
        ...Ops.istr(name),
        ...Ops.i32b(posationalLengh),
        ...Ops.istrlist(namedList)
      ];

  @override
  void run(MicroRuntime runtime) {
    List<Object?> positionalArguments = List.empty(growable: true);
    for (int i = 0; i < posationalLengh; i++) {
      positionalArguments.add(runtime.scope.popFrame());
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
        runtime.scope.pushFrame(runtime.interpreter.externalFunctions[key]!(
            target, positionalArguments.first));
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
      'CallExternal ($kind,$isStatic,$isGetter,$isSetter,$key,$libraryUri,$className,$name)';
}
