part of 'ast.dart';

int compileConstructor(MicroCompilerContext context, Constructor node) {
  var name = node.getNamedName();

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

  //filed初始化
  node.initializers.forEach((element) {
    compileInitializer(context, element);
  });

  //编译body
  var b = node.function.body;
  if (b != null) {
    if (b is Block) {
      compileBlock(context, b, createScope: false);
    } else {
      compileStatement(context, b);
    }
  }
  //将当前的scope赋予Instance
  //context.removeScope();
  return -1;
}

void compileInitializer(MicroCompilerContext context, Initializer initializer) {
  if (initializer is FieldInitializer) {
    compileFieldInitializer(context, initializer);
  } else if (initializer is SuperInitializer) {
    compileSuperInitializer(context, initializer);
  } else if (initializer is RedirectingInitializer) {
    compileRedirectingInitializer(context, initializer);
  } else if (initializer is LocalInitializer) {
    compileLocalInitializer(context, initializer);
  } else if (initializer is AssertInitializer) {
    compileAssertInitializer(context, initializer);
  }
}

void compileFieldInitializer(
    MicroCompilerContext context, FieldInitializer initializer) {
  compileExpression(context, initializer.value);
}

void compileSuperInitializer(
    MicroCompilerContext context, SuperInitializer initializer) {}

void compileRedirectingInitializer(
    MicroCompilerContext context, RedirectingInitializer initializer) {}

void compileLocalInitializer(
    MicroCompilerContext context, LocalInitializer initializer) {}

void compileAssertInitializer(
    MicroCompilerContext context, AssertInitializer initializer) {}
