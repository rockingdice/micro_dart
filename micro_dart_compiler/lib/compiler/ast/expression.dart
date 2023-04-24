part of 'ast.dart';

int compileExpression(MicroCompilerContext context, Expression node) {
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
  }

  throw Exception("expression type not found : ${node.runtimeType.toString()}");
}

int compileStringLiteral(MicroCompilerContext context, StringLiteral node) {
  return context
      .pushOp(PushConstant.make(context.constantPool.addOrGet(node.value)));
}

int compileInstanceGet(MicroCompilerContext context, InstanceGet node) {
  return -1;
}

int compileConstructorInvocation(
    MicroCompilerContext context, ConstructorInvocation node) {
  return -1;
}

int compileInstanceInvocation(
    MicroCompilerContext context, InstanceInvocation node) {
  var procedure = node.interfaceTarget;
  var arguments = node.arguments;
  compileExpression(context, node.receiver);
  return compileCallProcedure(context, arguments, procedure);
}

int compileIntLiteral(MicroCompilerContext context, IntLiteral node) {
  return context.pushOp(PushConstantInt.make(node.value));
}

int compileConstantExpression(
    MicroCompilerContext context, ConstantExpression node) {
  return compileConstant(context, node.constant);
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
    return compileCallProcedure(context, arguments, procedure);
    //context.pushOp(GetGlobalParam.make(target.name.text));
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
      return compileCallProcedure(context, Arguments.empty(), target);
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

  return compileCallProcedure(context, arguments, procedure);
}

int compileCallProcedure(
    MicroCompilerContext context, Arguments arguments, Procedure procedure) {
  var name = procedure.getNamedName();

  //新增一个作用域
  //context.addScope("<StaticInvocation>", node.fileOffset);

  //将参数压入当前作用域
  compileArguments(context, arguments);

  //如果不是静态方法则将instance加入栈
  //if (!procedure.isStatic) {
  //  context.pushOp(GetParam.make(name));
  //}

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
            kind: DeferredOrOffsetKind.Procedure,
            node: procedure,
            namedList: arguments.named.map((e) => e.name).toList(),
            posationalLengh: arguments.positional.length));
  }

  //调用方法结束之后
  //删除一个作用域
  //context.removeScope();
  return location;
}
