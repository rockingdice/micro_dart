part of 'ast.dart';

void compileStatement(MicroCompilerContext context, Statement? node,
    {DartType? returnType}) {
  if (node == null) {
    return;
  }

  if (node is Block) {
    compileBlock(context, node);
  } else if (node is VariableDeclaration) {
    compileVariableDeclaration(context, node);
  } else if (node is ExpressionStatement) {
    compileExpressionStatement(context, node);
  } else if (node is ReturnStatement) {
    compileReturnStatement(context, node);
  }
}

void compileBlock(MicroCompilerContext context, Block node,
    {bool createScope = true}) {
  if (node.statements.isNotEmpty) {
    ReturnStatement? returnStatement;
    if (node.statements.last is ReturnStatement) {
      returnStatement = node.statements.last as ReturnStatement;
    }
    if (createScope) {
      context.addScope("<block>", node.fileOffset);
    }

    node.statements.forEach((element) {
      compileStatement(context, element);
    });
    if (createScope) {
      context.removeScope();
    }
    if (returnStatement != null) {
      compileReturnStatement(context, returnStatement);
    }
  }
}

void compileVariableDeclaration(
    MicroCompilerContext context, VariableDeclaration node) {
  if (node.initializer != null) {
    //有初始值
    compileExpression(context, node.initializer!);
    context.pushOp(SetParam.make(node.name!));
  } else {
    //没有初始值则先填充null
    context.pushOp(SetParamNull.make(node.name!));
  }
}

void compileExpressionStatement(
    MicroCompilerContext context, ExpressionStatement node) {
  compileExpression(context, node.expression);
}

void compileReturnStatement(
    MicroCompilerContext context, ReturnStatement node) {
  if (node.expression != null) {
    int res = compileExpression(context, node.expression!);
    if (res != -1) {
      context.pushOp(Return.make(res));
    }
  }
}
