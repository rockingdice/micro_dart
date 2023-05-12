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
  } else if (node is ListLiteral) {
    return compileListLiteral(context, node);
  } else if (node is SuperMethodInvocation) {
    return compileSuperMethodInvocation(context, node);
  } else if (node is SuperPropertyGet) {
    return compileSuperPropertyGet(context, node);
  } else if (node is FunctionExpression) {
    return compileFunctionExpression(context, node);
  } else if (node is LocalFunctionInvocation) {
    return compileLocalFunctionInvocation(context, node);
  } else if (node is FunctionInvocation) {
    return compileFunctionInvocation(context, node);
  } else if (node is AsExpression) {
    return compileAsExpression(context, node);
  } else if (node is DynamicInvocation) {
    return compileDynamicInvocation(context, node);
  } else if (node is DynamicGet) {
    return compileDynamicGet(context, node);
  } else if (node is DynamicSet) {
    return compileDynamicSet(context, node);
  }

  throw Exception("expression type not found : ${node.runtimeType.toString()}");
}

int compileDynamicSet(MicroCompilerContext context, DynamicSet node) {
  context.addScope("<DynamicSet>", node.fileOffset);
  compileExpression(context, node.receiver);
  compileExpression(context, node.value);

  int pos =
      context.pushOp(CallDynamic.make(node.name.text, false, true, 1, []));
  context.removeScope();
  return pos;
}

int compileDynamicGet(MicroCompilerContext context, DynamicGet node) {
  context.addScope("<DynamicGet>", node.fileOffset);
  compileExpression(context, node.receiver);

  int pos =
      context.pushOp(CallDynamic.make(node.name.text, true, false, 0, []));
  context.removeScope();
  return pos;
}

int compileDynamicInvocation(
    MicroCompilerContext context, DynamicInvocation node) {
  context.addScope("<DynamicInvocation>", node.fileOffset);
  compileExpression(context, node.receiver);
  compileArguments(context, node.arguments);

  int pos = context.pushOp(CallDynamic.make(
      node.name.text,
      false,
      false,
      node.arguments.positional.length,
      node.arguments.named.map((e) => e.name).toList()));
  context.removeScope();
  return pos;
}

int compileAsExpression(MicroCompilerContext context, AsExpression node) {
  int pos = compileExpression(context, node.operand);
  final type = node.type;
  if (type is InterfaceType) {
    //这里表示它是一个外部类
    if (!context.compileDeclarations.contains(type.classNode)) {
      return context.pushOp(CallExternal.make(
          className: type.classNode.stringClassName!,
          key: "${type.classNode.getNamedName()}@#as",
          isGetter: false,
          isSetter: false,
          isStatic: false,
          libraryUri: type.classNode.stringLibraryUri,
          name: "#as",
          kind: DeferredOrOffsetKind.Procedure.index,
          namedList: [],
          posationalLength: 0));
    }
  } else {
    throw Exception(" type not support : ${type.runtimeType.toString()}");
  }
  return pos;
}

int compileFunctionInvocation(
    MicroCompilerContext context, FunctionInvocation node) {
  var arguments = node.arguments;
  context.addScope("<FunctionInvocation>", node.fileOffset);
  compileArguments(context, arguments);
  compileExpression(context, node.receiver);
  int pos = context.pushOp(CallPointer.make());
  context.removeScope();
  return pos;
}

int compileLocalFunctionInvocation(
    MicroCompilerContext context, LocalFunctionInvocation node) {
  var arguments = node.arguments;
  context.addScope("<LocalFunctionInvocation>", node.fileOffset);
  int p = compileCall(
    context,
    arguments,
    node.localFunction.getNamedName(),
    className: node.localFunction.stringClassName ?? "",
    libraryUri: node.localFunction.stringLibraryUri,
    name: node.localFunction.stringName,
  );
  context.removeScope();
  return p;
}

int compileFunctionExpression(
    MicroCompilerContext context, FunctionExpression node) {
  int jumpOver = context.pushOp(Jump.make(-1));
  //开启一个作用域
  int pos = context.addScope("FunctionExpression", node.fileOffset);

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

  return context.pushOp(PushPointer.make(pos));
}

int compileSuperPropertyGet(
    MicroCompilerContext context, SuperPropertyGet node) {
  var target = node.interfaceTarget;
  context.pushOp(GetParam.make("#this"));
  if (target is Procedure) {
    int p = compileCallProcedure(context, Arguments([]), target);
    return p;
  } else if (target is Field) {
    int opOffset =
        context.rumtimeDeclarationOpIndexes[target.getNamedName()] ?? -1;
    if (opOffset == -1) {
      print("object ${target.getNamedName()} not found ");
      return -1;
    }
    return context.pushOp(GetObjectProperty.make(node.name.text, opOffset));
  }

  return -1;
}

int compileSuperMethodInvocation(
    MicroCompilerContext context, SuperMethodInvocation node) {
  var procedure = node.interfaceTarget;
  var arguments = node.arguments;

  context.addScope("<SuperMethodInvocation>", node.fileOffset);
  context.pushOp(GetParam.make("#this"));
  int p = compileCallProcedure(context, arguments, procedure);
  context.removeScope();
  return p;
}

int compileThisExpression(MicroCompilerContext context, ThisExpression node) {
  return context.pushOp(GetParam.make("#this"));
}

int compileStringLiteral(MicroCompilerContext context, StringLiteral node) {
  return context
      .pushOp(PushConstant.make(context.constantPool.addOrGet(node.value)));
}

int compileListLiteral(MicroCompilerContext context, ListLiteral node) {
  node.expressions.forEach((element) {
    compileExpression(context, element);
  });
  context.pushOp(PushList.make(node.expressions.length));
  return -1;
}

int compileInstanceGet(MicroCompilerContext context, InstanceGet node) {
  var target = node.interfaceTarget;

  if (target is Procedure) {
    compileExpression(context, node.receiver);
    int p = compileCallProcedure(context, Arguments([]), target);
    return p;
  } else if (target is Field) {
    compileExpression(context, node.receiver);
    int opOffset =
        context.rumtimeDeclarationOpIndexes[target.getNamedName()] ?? -1;
    if (opOffset == -1) {
      print("object ${target.getNamedName()} not found ");
      return -1;
    }
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
    int p = compileCallProcedure(context, Arguments([node.value]), target);
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
  return context.pushOp(PushBoxInt.make(node.value));
}

int compileConstantExpression(
    MicroCompilerContext context, ConstantExpression node) {
  var constant = node.constant;
  if (constant is IntConstant) {
    return context.pushOp(PushBoxInt.make(constant.value));
  } else if (constant is StaticTearOffConstant) {
    if (context.compileDeclarations.contains(constant.target)) {
      String key = constant.target.getNamedName();
      int opOffset = context.rumtimeDeclarationOpIndexes[key] ?? -1;
      int pos = context.pushOp(PushPointer.make(opOffset));
      if (opOffset == -1) {
        context.offsetTracker.setCallPointerOffset(pos, key);
      }
      return pos;
    } else {
      throw Exception("currently not support external static tearoff");
    }
  } else if (constant is NullConstant) {
    return context.pushOp(PushNull.make());
  } else if (constant is ConstructorTearOffConstant) {
    var target = constant.target;
    if (target is Constructor) {
      return compileCallConstructor(context, Arguments.empty(), target);
    } else if (target is Procedure) {
      return compileCallProcedure(context, Arguments.empty(), target);
    }
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
    //context.addScope("<StaticGet>", node.fileOffset);
    int p = compileCallProcedure(context, arguments, procedure);
    //context.removeScope();
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
      int p = compileCallProcedure(context, Arguments([node.value]), target);
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
