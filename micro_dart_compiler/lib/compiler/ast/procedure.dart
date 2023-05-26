part of 'ast.dart';

int compileProcedure(MicroCompilerContext context, Procedure node) {
  compileDartType(context, node.function.returnType);
  if (node.isStatic) {
    return compileStaticProcedure(context, node);
  } else {
    return compileClassProcedure(context, node);
  }
}

int compileClassProcedure(MicroCompilerContext context, Procedure node) {
  var name = node.getNamedName();
  //表示该方法已经编译过了,直接返回
  if (context.rumtimeDeclarationOpIndexes[name] != null) {
    return context.rumtimeDeclarationOpIndexes[name]!;
  }

  //开启一个作用域
  int pos = context.addScope(name, node.fileOffset);
  context.rumtimeDeclarationOpIndexes[name] = pos;

  //参数初始化
  node.function.positionalParameters.forEach((element) {
    compileVariableDeclaration(context, element);
    //将上个作用域中的参数copy到这个作用域
    context.pushOp(SetPosationalParam.make(element.name!));
  });
  node.function.namedParameters.forEach((element) {
    compileVariableDeclaration(context, element);
    context.pushOp(SetNamedParam.make(element.name!));
  });
  var b = node.function.body;
  context.pushOp(SetPosationalParam.make("#this"));
  //编译body
  if (b != null) {
    if (b is Block) {
      compileBlock(context, b, createScope: false);
      if (b.statements.isNotEmpty && !(b.statements.last is ReturnStatement)) {
        context.pushOp(Return.make());
      }
    } else {
      compileStatement(context, b);
      if (!(b is ReturnStatement)) {
        context.pushOp(Return.make());
      }
    }
  } else {
    context.pushOp(Return.make());
  }

  return pos;
}

int compileStaticProcedure(MicroCompilerContext context, Procedure node) {
  var name = node.getNamedName();
  //表示该方法已经编译过了,直接返回
  if (context.rumtimeDeclarationOpIndexes[name] != null) {
    return context.rumtimeDeclarationOpIndexes[name]!;
  }

  //开启一个作用域
  int pos = context.addScope(name, node.fileOffset);
  context.rumtimeDeclarationOpIndexes[name] = pos;

  //参数初始化
  node.function.positionalParameters.forEach((element) {
    compileVariableDeclaration(context, element);
    //将上个作用域中的参数copy到这个作用域
    context.pushOp(SetPosationalParam.make(element.name!));
  });
  node.function.namedParameters.forEach((element) {
    compileVariableDeclaration(context, element);
    context.pushOp(SetNamedParam.make(element.name!));
  });
  var b = node.function.body;
  bool isAsync = false;
  if (node.function.asyncMarker == AsyncMarker.Async) {
    isAsync = true;
  }
  if (isAsync) {
    context.pushOp(AsyncBox.make());
  }

  //编译body
  if (b != null) {
    if (b is Block) {
      compileBlock(context, b, createScope: false, isAsync: isAsync);
      if (b.statements.isNotEmpty && !(b.statements.last is ReturnStatement)) {
        context.pushOp(Return.make());
      }
    } else {
      compileStatement(context, b);
      if (!(b is ReturnStatement)) {
        context.pushOp(Return.make());
      }
    }
  } else {
    context.pushOp(Return.make());
  }

  return pos;
}

int compileCallProcedure(
    MicroCompilerContext context, Arguments arguments, Procedure procedure) {
  var name = procedure.getNamedName();
  //将参数压入当前作用域
  compileArguments(context, arguments);

  Op? op;

  if (context.compileDeclarationIndexes.containsKey(name)) {
    op = CallDynamic.make(name, true, false, false, arguments.positional.length,
        arguments.named.map((e) => e.name).toList());
  } else {
    op = CallExternal.make(
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
    bool isStatic = false}) {
  //将参数压入当前作用域
  compileArguments(context, arguments);

  return context.pushOp(CallDynamic.make(
      key,
      isStatic,
      isGetter,
      isSetter,
      arguments.positional.length,
      arguments.named.map((e) => e.name).toList()));
}
