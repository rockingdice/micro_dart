part of 'ast.dart';

int compileField(MicroCompilerContext context, Field node) {
  if (node.isStatic) {
    return compileStaticField(context, node);
  } else {
    return compileClassField(context, node);
  }
}

int compileStaticField(MicroCompilerContext context, Field node) {
  var name = node.getNamedName();
  //表示该方法已经编译过了,直接返回
  if (context.rumtimeDeclarationOpIndexes[name] != null) {
    return context.rumtimeDeclarationOpIndexes[name]!;
  }

  //开启一个作用域
  int pos = context.addScope(name, node.fileOffset);
  context.rumtimeDeclarationOpIndexes[name] = pos;

  if (node.initializer != null) {
    compileExpression(context, node.initializer!);
  } else {
    context.pushOp(PushNull.make());
  }
  context.pushOp(ReturnField.make(node.isStatic, node.name.text));

  return pos;
}

int compileClassField(MicroCompilerContext context, Field node) {
  var name = node.getNamedName();
  //表示该方法已经编译过了,直接返回
  if (context.rumtimeDeclarationOpIndexes[name] != null) {
    return context.rumtimeDeclarationOpIndexes[name]!;
  }

  //开启一个作用域
  int pos = context.addScope(name, node.fileOffset);
  context.rumtimeDeclarationOpIndexes[name] = pos;

  if (node.initializer != null) {
    compileExpression(context, node.initializer!);
  } else {
    context.pushOp(PushNull.make());
  }
  context.pushOp(Return.make());

  return pos;
}

int compileCallField(MicroCompilerContext context, Field field) {
  var name = field.getNamedName();

  //将参数压入当前作用域
  //compileArguments(context, arguments);

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
            kind: DeferredOrOffsetKind.Field,
            node: field,
            namedList: [],
            posationalLengh: 0));
  }

  //调用方法结束之后
  //删除一个作用域
  //context.removeScope();
  return -1;
}
