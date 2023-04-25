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
  context.pushOp(Return.make(-1));

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
  context.pushOp(Return.make(-1));

  return pos;
}
