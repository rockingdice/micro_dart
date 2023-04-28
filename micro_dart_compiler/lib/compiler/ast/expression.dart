part of 'ast.dart';

int compileExpression(MicroCompilerContext context, Expression node) {
  context.printCompileNode(node);
  if (node is IntLiteral) {
    return compileIntLiteral(context, node);
  } else if (node is VariableSet) {
    return compileVariableSet(context, node);
  } else if (node is VariableGet) {
    return compileVariableGet(context, node);
  } else if (node is StaticInvocation) {
    return compileStaticInvocation(context, node);
  } else if (node is ConstantExpression) {
    return compileConstantExpression(context, node);
  } else if (node is StaticGet) {
    return compileStaticGet(context, node);
  } else if (node is StaticSet) {
    return compileStaticSet(context, node);
  } else if (node is ConstructorInvocation) {
    return compileConstructorInvocation(context, node);
  } else if (node is InstanceGet) {
    return compileInstanceGet(context, node);
  } else if (node is StringLiteral) {
    return compileStringLiteral(context, node);
  } else if (node is InstanceInvocation) {
    return compileInstanceInvocation(context, node);
  } else if (node is InstanceGet) {
    return compileInstanceGet(context, node);
  } else if (node is InstanceSet) {
    return compileInstanceSet(context, node);
  } else if (node is ThisExpression) {
    return compileThisExpression(context, node);
  }

  throw Exception("expression type not found : ${node.runtimeType.toString()}");
}

int compileThisExpression(MicroCompilerContext context, ThisExpression node) {
  return context.pushOp(GetParam.make("#this"));
}

int compileStringLiteral(MicroCompilerContext context, StringLiteral node) {
  return context
      .pushOp(PushConstant.make(context.constantPool.addOrGet(node.value)));
}

int compileInstanceGet(MicroCompilerContext context, InstanceGet node) {
  var target = node.interfaceTarget;

  if (target is Procedure) {
    context.addScope("<InstanceGet>", node.fileOffset);
    compileExpression(context, node.receiver);
    int p = compileCallProcedure(context, Arguments([]), target);
    context.removeScope();
    return p;
  } else if (target is Field) {
    compileExpression(context, node.receiver);
    int opOffset =
        context.rumtimeDeclarationOpIndexes[target.getNamedName()] ?? -1;
    return context.pushOp(GetObjectProperty.make(node.name.text, opOffset));
  }

  return -1;
}

int compileInstanceSet(MicroCompilerContext context, InstanceSet node) {
  var target = node.interfaceTarget;
  if (target is Field) {
    compileExpression(context, node.value);
    compileExpression(context, node.receiver);

    return context.pushOp(SetObjectProperty.make(node.name.text));
  } else if (target is Procedure) {
    context.addScope("<InstanceSet>", node.fileOffset);
    int p = compileCallProcedure(context, Arguments([node.value]), target);
    context.removeScope();
    return p;
  }

  return -1;
}

int compileConstructorInvocation(
    MicroCompilerContext context, ConstructorInvocation node) {
  var target = node.target;
  var arguments = node.arguments;
  context.addScope("<ConstructorInvocation>", node.fileOffset);

  int p = compileCallConstructor(context, arguments, target);
  context.removeScope();
  return p;
}

int compileInstanceInvocation(
    MicroCompilerContext context, InstanceInvocation node) {
  var procedure = node.interfaceTarget;
  var arguments = node.arguments;
  context.addScope("<InstanceInvocation>", node.fileOffset);
  compileExpression(context, node.receiver);
  int p = compileCallProcedure(context, arguments, procedure);
  context.removeScope();
  return p;
}

int compileIntLiteral(MicroCompilerContext context, IntLiteral node) {
  return context.pushOp(PushConstantInt.make(node.value));
}

int compileConstantExpression(
    MicroCompilerContext context, ConstantExpression node) {
  var constant = node.constant;
  if (constant is IntConstant) {
    return context.pushOp(PushConstantInt.make(constant.value));
  }
  throw Exception("not support: ${constant.runtimeType.toString()} ");
}

int compileStaticGet(MicroCompilerContext context, StaticGet node) {
  var target = node.target;
  if (target is Field) {
    //有可能还没有初始化
    return context.pushOp(GetGlobalParam.make(target.name.text,
        context.rumtimeDeclarationOpIndexes[target.getNamedName()]!));
  } else if (target is Procedure && target.isGetter) {
    var procedure = target;
    var arguments = Arguments.empty();
    context.addScope("<StaticGet>", node.fileOffset);
    int p = compileCallProcedure(context, arguments, procedure);
    context.removeScope();
    return p;
  }
  return -1;
}

int compileStaticSet(MicroCompilerContext context, StaticSet node) {
  int res = compileExpression(context, node.value);
  var target = node.target;
  if (res != -1) {
    if (target is Field) {
      return context.pushOp(SetGlobalParam.make(node.target.name.text));
    } else if (target is Procedure) {
      context.addScope("<StaticSet>", node.fileOffset);
      int p = compileCallProcedure(context, Arguments([node.value]), target);
      context.removeScope();
      return p;
    }
  }
  return -1;
}

int compileVariableSet(MicroCompilerContext context, VariableSet node) {
  int res = compileExpression(context, node.value);

  var name = node.variable.name;
  if (name != null && res != -1) {
    return context.pushOp(SetParam.make(name));
  }
  return -1;
}

int compileVariableGet(MicroCompilerContext context, VariableGet node) {
  var name = node.variable.name;
  if (name != null) {
    context.pushOp(GetParam.make(name));
  }
  return 0;
}

int compileStaticInvocation(
    MicroCompilerContext context, StaticInvocation node) {
  var procedure = node.target;
  var arguments = node.arguments;
  context.addScope("<StaticInvocation>", node.fileOffset);
  int p = compileCallProcedure(context, arguments, procedure);
  context.removeScope();
  return p;
}
