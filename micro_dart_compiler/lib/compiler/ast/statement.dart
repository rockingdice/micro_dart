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
  } else if (node is AssertStatement) {
    compileAssertStatement(context, node);
  } else if (node is WhileStatement) {
    compileWhileStatement(context, node);
  } else if (node is DoStatement) {
    compileDoStatement(context, node);
  } else if (node is ForStatement) {
    compileForStatement(context, node);
  } else if (node is ForInStatement) {
    compileForInStatement(context, node);
  } else if (node is ForInStatement) {
    compileForInStatement(context, node);
  } else if (node is IfStatement) {
    compileIfStatement(context, node);
  } else if (node is LabeledStatement) {
    compileLabeledStatement(context, node);
  } else if (node is SwitchStatement) {
    compileSwitchStatement(context, node);
  } else if (node is BreakStatement) {
    compileBreakStatement(context, node);
  } else if (node is TryCatch) {
    compileTryCatch(context, node);
  } else if (node is TryFinally) {
    compileTryFinally(context, node);
  } else if (node is EmptyStatement) {
  } else {
    throw Exception(
        "currently Statement type  ${node.runtimeType.toString()} not support ");
  }
}

void compileTryFinally(MicroCompilerContext context, TryFinally node) {}

void compileTryCatch(MicroCompilerContext context, TryCatch node) {
  final tryOp = context.pushOp(Try.make(-1));
  compileStatement(context, node.body);
  context.pushOp(PopCatch.make());
  final jumpOver = context.pushOp(Jump.make(-1));
  context.rewriteOp(Try.make(context.ops.length), tryOp);

  context.pushOp(SetScopeParam.make("#exception"));
  context.pushOp(SetScopeParam.make("#stackTrace"));
  node.catches.forEach((catchh) {
    context.pushOp(GetParam.make("#exception"));
    context.pushOp(Is.make(
        context.lookupType((catchh.guard as InterfaceType).classNode).key));
    int jumpPos = context.pushOp(JumpIfFalse.make(-1));
    if (catchh.exception != null) {
      compileStatement(context, catchh.exception!);
      context.pushOp(GetParam.make("#exception"));
      context.pushOp(SetScopeParam.make(catchh.exception!.name!));
    }
    if (catchh.stackTrace != null) {
      compileStatement(context, catchh.stackTrace!);
      context.pushOp(GetParam.make("#stackTrace"));
      context.pushOp(SetScopeParam.make(catchh.stackTrace!.name!));
    }
    compileStatement(context, catchh.body);
    context.rewriteOp(JumpIfFalse.make(context.ops.length), jumpPos);
  });
  context.rewriteOp(Jump.make(context.ops.length), jumpOver);
}

void compileBreakStatement(MicroCompilerContext context, BreakStatement node) {
  int pos = context.pushOp(Jump.make(-1));
  context.offsetTracker.setBreakOffset(pos, BreakOffset(node.target));
}

void compileIfStatement(MicroCompilerContext context, IfStatement node) {
  compileExpression(context, node.condition);
  int rewritePos = context.pushOp(JumpIfFalse.make(context.ops.length));
  compileStatement(context, node.then);
  context.rewriteOp(JumpIfFalse.make(context.ops.length), rewritePos);
  if (node.otherwise != null) {
    compileStatement(context, node.otherwise!);
  }
}

void compileLabeledStatement(
    MicroCompilerContext context, LabeledStatement node) {
  context.labeledNamer.setParam(node, "startOpOffset", context.ops.length);
  compileStatement(context, node.body);
  context.labeledNamer.setParam(node, "endOpOffset", context.ops.length);
}

void compileSwitchStatement(
    MicroCompilerContext context, SwitchStatement node) {
  compileExpression(context, node.expression);
  context.pushOp(SetScopeParam.make("#switch_value"));
  final Map<SwitchCase, int> jumpStart = {};
  final Map<SwitchCase, int> jumpEnd = {};
  final Map<SwitchCase, List<int>> rewriteJumpIndex = {};
  node.cases.forEach((element) {
    if (element.isDefault) {
      return;
    }
    int expressionLength = element.expressions.length;
    element.expressions.forEach((element) {
      compileExpression(context, element);
    });
    List<int> rewritePos = [];
    for (int i = 0; i < expressionLength; i++) {
      context.pushOp(GetParam.make("#switch_value"));
      int pos = context.pushOp(JumpIfEqual.make(-1));
      rewritePos.add(pos);
    }

    rewriteJumpIndex[element] = rewritePos;
  });

  node.cases.forEach((element) {
    if (!element.isDefault) {
      return;
    }

    List<int> rewritePos = [];
    int pos = context.pushOp(Jump.make(-1));
    rewritePos.add(pos);
    rewriteJumpIndex[element] = rewritePos;
  });

  node.cases.forEach((casee) {
    jumpStart[casee] = context.ops.length;
    compileStatement(context, casee.body);
    jumpEnd[casee] = context.ops.length;
    if (casee.isDefault) {
      rewriteJumpIndex[casee]?.forEach((index) {
        context.rewriteOp(Jump.make(jumpStart[casee]!), index);
      });
    } else {
      rewriteJumpIndex[casee]?.forEach((index) {
        context.rewriteOp(JumpIfEqual.make(jumpStart[casee]!), index);
      });
    }
  });
}

void compileForInStatement(MicroCompilerContext context, ForInStatement node) {
  compileVariableDeclaration(context, node.variable);
  compileExpression(context, node.iterable);

  context.pushOp(CallExternal.make(
      className: "dart:core@Iterable",
      key: "dart:core@Iterable@iterator",
      isGetter: true,
      isSetter: false,
      isStatic: false,
      libraryUri: "dart:core",
      name: "iterator",
      kind: DeferredOrOffsetKind.Procedure.index,
      namedList: [],
      posationalLength: 0));
  context.pushOp(SetScopeParam.make("#iterator"));
  int jumpStart = context.ops.length;
  context.pushOp(GetParam.make("#iterator"));
  //调用iterator 的moveNext方法
  context.pushOp(CallExternal.make(
      className: "dart:core@Iterator",
      key: "dart:core@Iterator@moveNext",
      isGetter: false,
      isSetter: false,
      isStatic: false,
      libraryUri: "dart:core",
      name: "moveNext",
      kind: DeferredOrOffsetKind.Procedure.index,
      namedList: [],
      posationalLength: 0));
  int rewritePos = context.pushOp(JumpIfFalse.make(-1));
  context.pushOp(GetParam.make("#iterator"));
  //调用iterator的current方法
  context.pushOp(CallExternal.make(
      className: "dart:core@Iterator",
      key: "dart:core@Iterator@current",
      isGetter: true,
      isSetter: false,
      isStatic: false,
      libraryUri: "dart:core",
      name: "current",
      kind: DeferredOrOffsetKind.Procedure.index,
      namedList: [],
      posationalLength: 0));
  context.pushOp(SetScopeParam.make(node.variable.name!));
  compileStatement(context, node.body);
  context.pushOp(Jump.make(jumpStart));
  context.rewriteOp(JumpIfFalse.make(context.ops.length), rewritePos);
}

void compileForStatement(MicroCompilerContext context, ForStatement node) {
  node.variables.forEach((element) {
    compileVariableDeclaration(context, element);
  });
  int jumpStart = context.ops.length;
  int rewritePos = -1;
  if (node.condition != null) {
    compileExpression(context, node.condition!);
    rewritePos = context.pushOp(JumpIfFalse.make(-1));
  }

  compileStatement(context, node.body);
  node.updates.forEach((element) {
    compileExpression(context, element);
  });

  context.pushOp(Jump.make(jumpStart));
  if (rewritePos != -1) {
    context.rewriteOp(JumpIfFalse.make(context.ops.length), rewritePos);
  }
}

void compileDoStatement(MicroCompilerContext context, DoStatement node) {
  int jumpStart = context.ops.length;
  compileStatement(context, node.body);
  compileExpression(context, node.condition);
  context.pushOp(JumpIfTrue.make(jumpStart));
}

void compileWhileStatement(MicroCompilerContext context, WhileStatement node) {
  int jumpStart = context.ops.length;
  compileExpression(context, node.condition);
  int rewritePos = context.pushOp(JumpIfFalse.make(-1));
  compileStatement(context, node.body);
  context.pushOp(Jump.make(jumpStart));
  context.rewriteOp(JumpIfFalse.make(context.ops.length), rewritePos);
}

void compileAssertStatement(
    MicroCompilerContext context, AssertStatement node) {
  if (node.message != null) {
    compileExpression(context, node.message!);
  } else {
    context.pushOp(PushNull.make());
  }
  compileExpression(context, node.condition);
  context.pushOp(Assert.make());
}

void compileAssertBlock(MicroCompilerContext context, AssertBlock node) {
  node.statements.forEach((element) {
    compileStatement(context, element);
  });
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
    {bool createScope = true, bool isAsync = false}) {
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
    name = context.variableNamer.getName(node).text;
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
