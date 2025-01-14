part of 'ast.dart';

int compileProcedure(MicroCompilerContext context, Procedure node) {
  compileDartType(context, node.function.returnType);
  var ref = node.getCallRef();
  //表示该方法已经编译过了,直接返回
  if (context.runtimeDeclarationOpIndexes[ref] != null) {
    return context.runtimeDeclarationOpIndexes[ref]!;
  }
  return compileFunction(
      context, node.function, ref, node.isGetter, node.isStatic);
}

int compileFunction(MicroCompilerContext context, FunctionNode function,
    CallRef ref, bool isGetter, bool isStatic) {
  //开启一个作用域
  int pos = context.callStart(ref);
  context.runtimeDeclarationOpIndexes[ref] = pos;

  List<String> positionalNames = [];

  //参数初始化
  function.positionalParameters.forEach((element) {
    compileStatement(context, element);
    positionalNames.add(element.name!);
  });
  function.namedParameters.forEach((element) {
    compileStatement(context, element);
  });

  context.pushOp(OpPopArguments.make(positionalNames, isGetter, isStatic));
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
  var ref = procedure.getCallRef();

  compileArguments(context, arguments, isStatic);

  Op? op;

  if (context.compileDeclarationIndexes.containsKey(ref)) {
    bool isAsync = (procedure.function.asyncMarker == AsyncMarker.Async);

    //这是一个内部方法
    if (isAsync) {
      op = OpCallDynamicAsync.make(ref, true, false, false, isAsync, true);
    } else {
      op = OpCallDynamic.make(ref, true, false, false, isAsync, true);
    }
  } else {
    bool hasReturn = true;
    if (procedure.function.returnType is VoidType) {
      hasReturn = false;
    }
    var callTypeStrings = arguments.types
        .map((e) => compileDartType(context, e))
        .map((e) => e?.ref.className ?? "")
        .toList();
    context.externalCallMethods.add(ref);
    op = OpCallExternal.make(
      ref,
      hasReturn,
      [],
      callTypeStrings,
    );
  }

  return context.pushOp(op);
}

int compileCallLocalFunction(
    MicroCompilerContext context, Arguments arguments, CallRef ref,
    {DeferredOrOffsetKind kind = DeferredOrOffsetKind.Procedure,
    int positionalLength = 0,
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

  return context.pushOp(
      OpCallDynamic.make(ref, isStatic, isGetter, isSetter, isAsync, true));
}
