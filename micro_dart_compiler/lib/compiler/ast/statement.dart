part of 'ast.dart';

void compileStatement(
  MicroCompilerContext context,
  Statement node,
) {
  context.printCompileNode(node);
  if (node is Block) {
    compileBlock(context, node);
  } else if (node is VariableDeclaration) {
    compileVariableDeclaration(context, node);
  } else if (node is ExpressionStatement) {
    compileExpressionStatement(context, node);
  } else if (node is ReturnStatement) {
    compileReturnStatement(context, node);
  } else if (node is FunctionDeclaration) {
    compileFunctionDeclaration(context, node);
  }
}

void compileFunctionDeclaration(
    MicroCompilerContext context, FunctionDeclaration node) {
  var name = node.getNamedName();
  //表示该方法已经编译过了,直接返回
  if (context.rumtimeDeclarationOpIndexes[name] != null) {
    return;
  }

  int jumpOver = context.pushOp(Jump.make(-1));
  //开启一个作用域
  int pos = context.addScope(name, node.fileOffset);
  context.rumtimeDeclarationOpIndexes[name] = pos;

  //参数初始化
  node.function.positionalParameters.forEach((element) {
    compileStatement(context, element);
    //将上个作用域中的参数copy到这个作用域
    context.pushOp(SetPosationalParam.make(element.name!));
  });
  node.function.namedParameters.forEach((element) {
    compileStatement(context, element);
    context.pushOp(SetNamedParam.make(element.name!));
  });
  var b = node.function.body;
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

  context.rewriteOp(Jump.make(context.ops.length), jumpOver);
}

void compileBlock(MicroCompilerContext context, Block node,
    {bool createScope = true}) {
  if (node.statements.isNotEmpty) {
    if (createScope) {
      context.addScope("<block>", node.fileOffset);
    }

    node.statements.forEach((element) {
      compileStatement(context, element);
    });
    if (createScope) {
      context.removeScope();
    }
  }
}

void compileVariableDeclaration(
    MicroCompilerContext context, VariableDeclaration node) {
  var type = node.type;

  compileDartType(context, node.type);

  //表示这是一个函数引用
  var name = node.name;
  if (name == null) {
    name = context.variableNamer.getName(node);
  }

  if (node.initializer != null) {
    //有初始值
    compileExpression(context, node.initializer!);

    // if (type is InterfaceType) {
    // } else if (type is FunctionType) {}

    context.pushOp(SetScopeParam.make(name));
  } else {
    //没有初始值则先填充null
    context.pushOp(SetScopeParamNull.make(name));
  }
}

void compileExpressionStatement(
    MicroCompilerContext context, ExpressionStatement node) {
  compileExpression(context, node.expression);
}

void compileReturnStatement(
    MicroCompilerContext context, ReturnStatement node) {
  if (node.expression != null) {
    compileExpression(context, node.expression!);
    context.pushOp(Return.make());
  }
}
