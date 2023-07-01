part of 'ast.dart';

void compileStatement(MicroCompilerContext context, Statement node,
    {bool newBlock = true}) {
  context.printCompileNode(node);
  if (node is Block) {
    if (newBlock) {
      compileBlock(context, node);
    } else {
      compileFunctionBlock(context, node);
    }
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

void compileTryFinally(MicroCompilerContext context, TryFinally node) {
  final jumpOver = context.pushOp(OpJump.make(-1));
  int finallyPos = context.callStart("_finally_");
  compileStatement(context, node.finalizer, newBlock: false);
  context.callEnd();
  context.rewriteOp(OpJump.make(context.ops.length), jumpOver);

  var body = node.body;
  if (body is TryCatch) {
    compileTryCatch(context, body, finallyOffset: finallyPos);
  } else {
    final jumpOver = context.pushOp(OpJump.make(-1));
    int tryPos = context.callStart("_try_");
    compileStatement(context, node.body, newBlock: false);
    context.callEnd();
    context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
    context.pushOp(OpTryCatchFinally.make(tryPos, -1, finallyPos));
  }
}

void compileTryCatch(MicroCompilerContext context, TryCatch node,
    {int finallyOffset = -1}) {
  final jumpOver = context.pushOp(OpJump.make(-1));
  int tryPos = context.callStart("_try_");
  compileStatement(context, node.body, newBlock: false);
  context.callEnd();

  int catchPos = context.callStart("_catch_");
  context.pushOp(OpSetParamFromParent.make("#stackTrace"));
  context.pushOp(OpSetParamFromParent.make("#exception"));
  node.catches.forEach((catchh) {
    context.pushOp(OpGetParam.make("#exception"));
    context.pushOp(OpIs.make(
        context.lookupType((catchh.guard as InterfaceType).classNode).key));
    int jumpPos = context.pushOp(OpJumpIfFalse.make(-1));
    if (catchh.exception != null) {
      compileStatement(context, catchh.exception!, newBlock: false);
      context.pushOp(OpGetParam.make("#exception"));
      context.pushOp(OpSetScopeParam.make(catchh.exception!.name!));
    }
    if (catchh.stackTrace != null) {
      compileStatement(context, catchh.stackTrace!, newBlock: false);
      context.pushOp(OpGetParam.make("#stackTrace"));
      context.pushOp(OpSetScopeParam.make(catchh.stackTrace!.name!));
    }
    compileStatement(context, catchh.body, newBlock: false);
    context.rewriteOp(OpJumpIfFalse.make(context.ops.length), jumpPos);
  });
  context.callEnd();

  context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
  context.pushOp(OpTryCatchFinally.make(tryPos, catchPos, finallyOffset));
}

void compileBreakStatement(MicroCompilerContext context, BreakStatement node) {
  int pos = context.pushOp(OpJump.make(-1));
  context.offsetTracker.setBreakOffset(pos, BreakOffset(node.target));
}

void compileIfStatement(MicroCompilerContext context, IfStatement node) {
  compileExpression(context, node.condition);
  int rewritePos = context.pushOp(OpJumpIfFalse.make(context.ops.length));
  compileStatement(context, node.then, newBlock: false);
  context.rewriteOp(OpJumpIfFalse.make(context.ops.length), rewritePos);
  if (node.otherwise != null) {
    compileStatement(context, node.otherwise!, newBlock: false);
  }
}

void compileLabeledStatement(
    MicroCompilerContext context, LabeledStatement node) {
  context.labeledNamer.setParam(node, "startOpOffset", context.ops.length);
  compileStatement(context, node.body, newBlock: false);
  context.labeledNamer.setParam(node, "endOpOffset", context.ops.length);
}

void compilePatternGuard(MicroCompilerContext context, PatternGuard node) {
  var pattern = node.pattern;
  if (pattern is ConstantPattern) {
    compileExpression(context, pattern.expression);
    return;
  }
  throw Exception(
      "currently not support pattern ${node.pattern.runtimeType.toString()}}");
}

void compilePatternSwitchStatement(
    MicroCompilerContext context, PatternSwitchStatement node) {
  compileExpression(context, node.expression);
  context.pushOp(OpSetScopeParam.make("#switch_value"));
  final Map<SwitchCase, int> jumpStart = {};
  final Map<SwitchCase, int> jumpEnd = {};
  final Map<SwitchCase, List<int>> rewriteJumpIndex = {};
  node.cases.forEach((element) {
    if (element.isDefault) {
      return;
    }
    int patternGuardLength = element.patternGuards.length;
    element.patternGuards.forEach((element) {
      compilePatternGuard(context, element);
    });
    List<int> rewritePos = [];
    for (int i = 0; i < patternGuardLength; i++) {
      context.pushOp(OpGetParam.make("#switch_value"));
      int pos = context.pushOp(OpJumpIfEqual.make(-1));
      rewritePos.add(pos);
    }

    rewriteJumpIndex[element] = rewritePos;
  });

  node.cases.forEach((element) {
    if (!element.isDefault) {
      return;
    }

    List<int> rewritePos = [];
    int pos = context.pushOp(OpJump.make(-1));
    rewritePos.add(pos);
    rewriteJumpIndex[element] = rewritePos;
  });

  node.cases.forEach((casee) {
    jumpStart[casee] = context.ops.length;
    compileStatement(context, casee.body, newBlock: false);
    jumpEnd[casee] = context.ops.length;
    if (casee.isDefault) {
      rewriteJumpIndex[casee]?.forEach((index) {
        context.rewriteOp(OpJump.make(jumpStart[casee]!), index);
      });
    } else {
      rewriteJumpIndex[casee]?.forEach((index) {
        context.rewriteOp(OpJumpIfEqual.make(jumpStart[casee]!), index);
      });
    }
  });
}

void compileSwitchStatement(
    MicroCompilerContext context, SwitchStatement node) {
  if (node is PatternSwitchStatement) {
    compilePatternSwitchStatement(context, node);
    return;
  }
  compileExpression(context, node.expression);
  context.pushOp(OpSetScopeParam.make("#switch_value"));
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
      context.pushOp(OpGetParam.make("#switch_value"));
      int pos = context.pushOp(OpJumpIfEqual.make(-1));
      rewritePos.add(pos);
    }

    rewriteJumpIndex[element] = rewritePos;
  });

  node.cases.forEach((element) {
    if (!element.isDefault) {
      return;
    }

    List<int> rewritePos = [];
    int pos = context.pushOp(OpJump.make(-1));
    rewritePos.add(pos);
    rewriteJumpIndex[element] = rewritePos;
  });

  node.cases.forEach((casee) {
    jumpStart[casee] = context.ops.length;
    compileStatement(context, casee.body, newBlock: false);
    jumpEnd[casee] = context.ops.length;
    if (casee.isDefault) {
      rewriteJumpIndex[casee]?.forEach((index) {
        context.rewriteOp(OpJump.make(jumpStart[casee]!), index);
      });
    } else {
      rewriteJumpIndex[casee]?.forEach((index) {
        context.rewriteOp(OpJumpIfEqual.make(jumpStart[casee]!), index);
      });
    }
  });
}

void compileForInStatement(MicroCompilerContext context, ForInStatement node) {
  compileVariableDeclaration(context, node.variable);
  compileExpression(context, node.iterable);
  context.pushOp(OpPushConstantInt.make(0));
  context.pushOp(OpPushConstantInt.make(0));
  context.pushOp(OpPushArgments.make(3));
  context.pushOp(OpCallExternal.make(
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

  context.pushOp(OpSetScopeParam.make("#iterator"));
  int jumpStart = context.ops.length;
  context.pushOp(OpGetParam.make("#iterator"));
  //调用iterator 的moveNext方法
  context.pushOp(OpPushConstantInt.make(0));
  context.pushOp(OpPushConstantInt.make(0));
  context.pushOp(OpPushArgments.make(3));
  context.pushOp(OpCallExternal.make(
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
  int rewritePos = context.pushOp(OpJumpIfFalse.make(-1));
  context.pushOp(OpGetParam.make("#iterator"));
  context.pushOp(OpPushConstantInt.make(0));
  context.pushOp(OpPushConstantInt.make(0));
  context.pushOp(OpPushArgments.make(3));
  //调用iterator的current方法
  context.pushOp(OpCallExternal.make(
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
  context.pushOp(OpSetScopeParam.make(node.variable.name!));
  compileStatement(context, node.body, newBlock: false);
  context.pushOp(OpJump.make(jumpStart));
  context.rewriteOp(OpJumpIfFalse.make(context.ops.length), rewritePos);
}

void compileForStatement(MicroCompilerContext context, ForStatement node) {
  node.variables.forEach((element) {
    compileVariableDeclaration(context, element);
  });
  int jumpStart = context.ops.length;
  int rewritePos = -1;
  if (node.condition != null) {
    compileExpression(context, node.condition!);
    rewritePos = context.pushOp(OpJumpIfFalse.make(-1));
  }

  compileStatement(context, node.body, newBlock: false);
  node.updates.forEach((element) {
    compileExpression(context, element);
  });

  context.pushOp(OpJump.make(jumpStart));
  if (rewritePos != -1) {
    context.rewriteOp(OpJumpIfFalse.make(context.ops.length), rewritePos);
  }
}

void compileDoStatement(MicroCompilerContext context, DoStatement node) {
  int jumpStart = context.ops.length;
  compileStatement(context, node.body, newBlock: false);
  compileExpression(context, node.condition);
  context.pushOp(OpJumpIfTrue.make(jumpStart));
}

void compileWhileStatement(MicroCompilerContext context, WhileStatement node) {
  int jumpStart = context.ops.length;
  compileExpression(context, node.condition);
  int rewritePos = context.pushOp(OpJumpIfFalse.make(-1));
  compileStatement(context, node.body, newBlock: false);
  context.pushOp(OpJump.make(jumpStart));
  context.rewriteOp(OpJumpIfFalse.make(context.ops.length), rewritePos);
}

void compileAssertStatement(
    MicroCompilerContext context, AssertStatement node) {
  if (node.message != null) {
    compileExpression(context, node.message!);
  } else {
    context.pushOp(OpPushNull.make());
  }
  compileExpression(context, node.condition);
  context.pushOp(OpAssert.make());
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

  int jumpOver = context.pushOp(OpJump.make(-1));
  compileFunction(context, node.function, name, false, true);

  context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
}

void compileFunctionBlock(MicroCompilerContext context, Block node) {
  if (node.statements.isNotEmpty) {
    node.statements.forEach((element) {
      compileStatement(context, element);
    });
  }
}

void compileBlock(MicroCompilerContext context, Block node) {
  if (node.statements.isEmpty) {
    return;
  }
  int jumpOver = context.pushOp(OpJump.make(-1));
  int pos = context.callStart("_block_");
  node.statements.forEach((element) {
    compileStatement(context, element);
  });
  context.callEnd();
  context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
  context.pushOp(OpCall.make(pos, "_block_", false, false));
}

void compileVariableDeclaration(
    MicroCompilerContext context, VariableDeclaration node) {
  compileDartType(context, node.type);

  //表示这是一个函数引用
  var name = node.name;
  if (name == null) {
    name = context.variableNamer.getName(node).text;
  }

  if (node.initializer != null) {
    //有初始值
    compileExpression(context, node.initializer!);
    context.pushOp(OpSetScopeParam.make(name));
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
    context.pushOp(OpReturn.make());
  }
}
