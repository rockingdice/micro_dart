part of 'ast.dart';

int compileProcedure(MicroCompilerContext context, Procedure node) {
  compileDartType(context, node.function.returnType);
  var name = node.getNamedName();
  //表示该方法已经编译过了,直接返回
  if (context.rumtimeDeclarationOpIndexes[name] != null) {
    return context.rumtimeDeclarationOpIndexes[name]!;
  }
  return compileFunction(
      context, node.function, name, node.isGetter, node.isStatic);
}

int compileFunction(MicroCompilerContext context, FunctionNode function,
    String name, bool isGetter, bool isStatic) {
  //开启一个作用域
  int pos = context.callStart(name);
  context.rumtimeDeclarationOpIndexes[name] = pos;

  List<String> posationalNames = [];

  //参数初始化
  function.positionalParameters.forEach((element) {
    compileStatement(context, element);
    posationalNames.add(element.name!);
  });
  function.namedParameters.forEach((element) {
    compileStatement(context, element);
  });

  context.pushOp(OpPopArgments.make(posationalNames, isGetter, isStatic));
  var b = function.body;

  //编译body
  if (b != null) {
    compileStatement(context, b, newBlock: false);
  }
  context.callEnd();
  return pos;
}

int compileCallProcedure(MicroCompilerContext context, Arguments arguments,
    Procedure procedure, bool isStatic) {
  var name = procedure.getNamedName();

  compileArguments(context, arguments, isStatic);

  Op? op;

  if (context.compileDeclarationIndexes.containsKey(name)) {
    bool isAsync = (procedure.function.asyncMarker == AsyncMarker.Async);

    //这是一个内部方法
    if (isAsync) {
      op = OpCallDynamicAsync.make(
          name,
          true,
          false,
          false,
          isAsync,
          true,
          arguments.positional.length,
          arguments.named.map((e) => e.name).toList());
    } else {
      op = OpCallDynamic.make(
          name,
          true,
          false,
          false,
          isAsync,
          true,
          arguments.positional.length,
          arguments.named.map((e) => e.name).toList());
    }
  } else {
    op = OpCallExternal.make(
      className: procedure.stringClassName ?? "",
      key: name,
      isGetter: procedure.isGetter,
      isSetter: procedure.isSetter,
      isStatic: procedure.isStatic,
      libraryUri: procedure.stringLibraryUri,
      name: procedure.name.text,
      kind: DeferredOrOffsetKind.Procedure.index,
      posationalLength: arguments.positional.length,
      namedList: arguments.named.map((e) => e.name).toList(),
    );
  }

  return context.pushOp(op);
}

int compileCallLocalFunction(
    MicroCompilerContext context, Arguments arguments, String key,
    {DeferredOrOffsetKind kind = DeferredOrOffsetKind.Procedure,
    int posationalLengh = 0,
    List<String> namedList = const [],
    required String className,
    required String libraryUri,
    required String name,
    bool isGetter = false,
    bool isSetter = false,
    bool isStatic = false,
    bool isAsync = false}) {
  //将参数压入当前作用域
  compileArguments(context, arguments, isStatic);

  return context.pushOp(OpCallDynamic.make(
      key,
      isStatic,
      isGetter,
      isSetter,
      isAsync,
      true,
      arguments.positional.length,
      arguments.named.map((e) => e.name).toList()));
}
