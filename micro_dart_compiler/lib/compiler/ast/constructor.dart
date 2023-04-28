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

  //context.removeScope();
  context.pushOp(CreateInstance.make());
  context.pushOp(SetParam.make("#this"));

  //filed初始化
  node.initializers.forEach((element) {
    compileInitializer(context, element);
  });
  //编译body

  var b = node.function.body;
  if (b != null) {
    context.addScope("<ConstructorBlock>", node.fileOffset);
    if (b is Block) {
      compileBlock(context, b, createScope: false);
    } else {
      compileStatement(context, b);
    }
    context.removeScope();
  }
  context.pushOp(GetParam.make("#this"));
  context.pushOp(Return.make());
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
  context.pushOp(SetThisProperty.make(initializer.field.name.text));
}

void compileSuperInitializer(
    MicroCompilerContext context, SuperInitializer initializer) {}

void compileRedirectingInitializer(
    MicroCompilerContext context, RedirectingInitializer initializer) {}

void compileLocalInitializer(
    MicroCompilerContext context, LocalInitializer initializer) {}

void compileAssertInitializer(
    MicroCompilerContext context, AssertInitializer initializer) {}

int compileCallConstructor(MicroCompilerContext context, Arguments arguments,
    Constructor constructor) {
  var name = constructor.getNamedName();
  //将参数压入当前作用域
  compileArguments(context, arguments);

  //获取调用方法的起始位置,如果没有则证明该方法还没有开始编译,那么就先创建一个虚拟节点,后续补全
  int opOffset = context.rumtimeDeclarationOpIndexes[name] ?? -1;
  //调用Call方法,并且返回位置
  int location = context.pushOp(Call.make(opOffset));
  //如果为-1则表示该call的方法还没有被编译,先缓存,后续统一编译
  if (opOffset == -1) {
    context.offsetTracker.setOffset(
        location,
        DeferredOrOffset(
            offset: opOffset,
            kind: DeferredOrOffsetKind.Constructor,
            node: constructor,
            namedList: arguments.named.map((e) => e.name).toList(),
            posationalLengh: arguments.positional.length));
  }

  //调用方法结束之后
  //删除一个作用域
  //context.removeScope();
  return location;
}
