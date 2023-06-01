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
  } else if (node is SuperPropertySet) {
    //return compileSuperPropertySet(context, node);
  } else if (node is SuperPropertyGet) {
    return compileSuperPropertyGet(context, node);
  } else if (node is AbstractSuperPropertyGet) {
    //return compileAbstractSuperPropertyGet(context, node);
  } else if (node is AbstractSuperPropertySet) {
    //return compileAbstractSuperPropertySet(context, node);
  } else if (node is FunctionExpression) {
    return compileFunctionExpression(context, node);
  } else if (node is LocalFunctionInvocation) {
    return compileLocalFunctionInvocation(context, node);
  } else if (node is FunctionInvocation) {
    return compileFunctionInvocation(context, node);
  } else if (node is AsExpression) {
    return compileAsExpression(context, node);
  } else if (node is StringConcatenation) {
    return compileStringConcatenation(context, node);
  } else if (node is InstanceTearOff) {
    return compileInstanceTearOff(context, node);
  } else if (node is Let) {
    return compileLet(context, node);
  } else if (node is EqualsCall) {
    return compileEqualsCall(context, node);
  } else if (node is EqualsNull) {
    return compileEqualsNull(context, node);
  } else if (node is Throw) {
    return compileThrow(context, node);
  } else if (node is Rethrow) {
    return compileRethrow(context, node);
  } else if (node is IsExpression) {
    return compileIsExpression(context, node);
  } else if (node is FunctionTearOff) {
    //return compileFunctionTearOff(context, node);
  } else if (node is AbstractSuperPropertySet) {
    //return compileAbstractSuperPropertySet(context, node);
  } else if (node is StaticTearOff) {
    // return compileStaticTearOff(context, node);
  } else if (node is InstanceInvocationExpression) {
    //return compileInstanceInvocationExpression(context, node);
  } else if (node is InstanceGetterInvocation) {
    //return compileInstanceGetterInvocation(context, node);
  } else if (node is Instantiation) {
    //return compileInstantiation(context, node);
  } else if (node is Not) {
    return compileNot(context, node);
  } else if (node is LogicalExpression) {
    return compileLogicalExpression(context, node);
  } else if (node is ConditionalExpression) {
    return compileConditionalExpression(context, node);
  } else if (node is ListConcatenation) {
    return compileListConcatenation(context, node);
  } else if (node is SetConcatenation) {
    return compileSetConcatenation(context, node);
  } else if (node is MapConcatenation) {
    return compileMapConcatenation(context, node);
  } else if (node is InstanceCreation) {
    //return compileInstanceCreation(context, node);
  } else if (node is FileUriExpression) {
    //return compileFileUriExpression(context, node);
  } else if (node is NullCheck) {
    return compileNullCheck(context, node);
  } else if (node is SymbolLiteral) {
    return compileSymbolLiteral(context, node);
  } else if (node is TypeLiteral) {
    //return compileTypeLiteral(context, node);
  } else if (node is SetLiteral) {
    return compileSetLiteral(context, node);
  } else if (node is MapLiteral) {
    return compileMapLiteral(context, node);
  } else if (node is AwaitExpression) {
    return compileAwaitExpression(context, node);
  } else if (node is LoadLibrary) {
    //return compileLoadLibrary(context, node);
  } else if (node is CheckLibraryIsLoaded) {
    //return compileCheckLibraryIsLoaded(context, node);
  } else if (node is RedirectingFactoryTearOff) {
    //return compileRedirectingFactoryTearOff(context, node);
  } else if (node is TypedefTearOff) {
    //return compileTypedefTearOff(context, node);
  }
  // not support dynamic currently
  else if (node is DynamicInvocation) {
    //return compileDynamicInvocation(context, node);
  } else if (node is DynamicGet) {
    //return compileDynamicGet(context, node);
  } else if (node is DynamicSet) {
    //return compileDynamicSet(context, node);
  }
  //this means has an error
  else if (node is InvalidExpression) {
    //return compileInvalidExpression(context, node);
  }
  //

  throw Exception(
      "currently expression type  ${node.runtimeType.toString()} not support ");
}

int compileAwaitExpression(MicroCompilerContext context, AwaitExpression node) {
  compileExpression(context, node.operand);
  return context.pushOp(OpAwait.make());
}

int compileMapLiteral(MicroCompilerContext context, MapLiteral node) {
  node.entries.forEach((element) {
    compileExpression(context, element.value);
    compileExpression(context, element.key);
  });
  return context.pushOp(OpPushMap.make(node.entries.length));
}

int compileSetLiteral(MicroCompilerContext context, SetLiteral node) {
  for (int i = 0; i < node.expressions.length; i++) {
    compileExpression(context, node.expressions[i]);
  }
  return context.pushOp(OpPushSet.make(node.expressions.length));
}

int compileSymbolLiteral(MicroCompilerContext context, SymbolLiteral node) {
  return context.pushOp(OpSymbol.make(node.value));
}

int compileNullCheck(MicroCompilerContext context, NullCheck node) {
  compileExpression(context, node.operand);
  return context.pushOp(OpNullCheck.make());
}

int compileMapConcatenation(
    MicroCompilerContext context, MapConcatenation node) {
  for (int i = 0; i < node.maps.length; i++) {
    compileExpression(context, node.maps[i]);
  }
  return context.pushOp(OpSetConcat.make(node.maps.length));
}

int compileSetConcatenation(
    MicroCompilerContext context, SetConcatenation node) {
  for (int i = 0; i < node.sets.length; i++) {
    compileExpression(context, node.sets[i]);
  }
  return context.pushOp(OpSetConcat.make(node.sets.length));
}

int compileListConcatenation(
    MicroCompilerContext context, ListConcatenation node) {
  for (int i = 0; i < node.lists.length; i++) {
    compileExpression(context, node.lists[i]);
  }
  return context.pushOp(OpListConcat.make(node.lists.length));
}

int compileConditionalExpression(
    MicroCompilerContext context, ConditionalExpression node) {
  compileExpression(context, node.otherwise);
  compileExpression(context, node.then);
  compileExpression(context, node.condition);

  return context.pushOp(OpConditional.make());
}

int compileLogicalExpression(
    MicroCompilerContext context, LogicalExpression node) {
  compileExpression(context, node.right);
  compileExpression(context, node.left);

  return context.pushOp(OpLogical.make(node.operatorEnum.index));
}

int compileNot(MicroCompilerContext context, Not node) {
  compileExpression(context, node.operand);
  return context.pushOp(OpNot.make());
}

int compileRethrow(MicroCompilerContext context, Rethrow node) {
  context.pushOp(OpGetParam.make("#exception"));
  return context.pushOp(OpThrow.make());
}

int compileIsExpression(MicroCompilerContext context, IsExpression node) {
  int pos = compileExpression(context, node.operand);
  final type = node.type;
  if (type is InterfaceType) {
    context.lookupType(type.classNode);
    //这里表示它是一个外部类
    if (context.compileDeclarations.contains(type.classNode)) {
      throw Exception(
          "Currently IsExpression not support internal type  : ${type.runtimeType.toString()}");
    } else {
      return context.pushOp(OpCallExternal.make(
          className: type.classNode.stringClassName!,
          key: "${type.classNode.getNamedName()}@#is",
          isGetter: false,
          isSetter: false,
          isStatic: false,
          libraryUri: type.classNode.stringLibraryUri,
          name: "#is",
          kind: DeferredOrOffsetKind.Procedure.index,
          namedList: [],
          posationalLength: 0));
    }
  } else {
    throw Exception(
        "IsExpression type not support : ${type.runtimeType.toString()}");
  }
  return pos;
}

int compileThrow(MicroCompilerContext context, Throw node) {
  compileExpression(context, node.expression);
  return context.pushOp(OpThrow.make());
}

int compileEqualsNull(MicroCompilerContext context, EqualsNull node) {
  throw Exception("currently expression type  EqualsNull not support ");
}

int compileFunctionTearOff(MicroCompilerContext context, FunctionTearOff node) {
  return -1;
}

int compileEqualsCall(MicroCompilerContext context, EqualsCall node) {
  compileExpression(context, node.left);
  compileExpression(context, node.right);
  return context.pushOp(OpEquals.make());
}

int compileLet(MicroCompilerContext context, Let node) {
  compileVariableDeclaration(context, node.variable);
  int pos = compileExpression(context, node.body);

  return pos;
}

int compileInstanceTearOff(MicroCompilerContext context, InstanceTearOff node) {
  if (context.compileDeclarations.contains(node.interfaceTarget)) {
    compileExpression(context, node.receiver);
    String key = node.interfaceTarget.getNamedName();
    int opOffset = context.rumtimeDeclarationOpIndexes[key] ?? -1;
    bool isAsync =
        (node.interfaceTarget.function.asyncMarker == AsyncMarker.Async);
    int pos = context.pushOp(OpPushPointer.make(opOffset, false, isAsync));
    if (opOffset == -1) {
      context.offsetTracker.setCallPointerOffset(pos, key, false, isAsync);
    }
    return pos;
  } else {
    throw Exception("currently not support InstanceTearOff");
  }
}

int compileStringConcatenation(
    MicroCompilerContext context, StringConcatenation node) {
  node.expressions.forEach((element) {
    compileExpression(context, element);
  });
  return context.pushOp(OpStringConcat.make(node.expressions.length));
}

int compileDynamicSet(MicroCompilerContext context, DynamicSet node) {
  compileExpression(context, node.receiver);
  compileExpression(context, node.value);

  int pos = context.pushOp(OpCallDynamic.make(
      node.name.text, false, false, true, false, true, 1, []));

  return pos;
}

int compileDynamicGet(MicroCompilerContext context, DynamicGet node) {
  compileExpression(context, node.receiver);

  int pos = context.pushOp(OpCallDynamic.make(
      node.name.text, false, true, false, false, true, 0, []));

  return pos;
}

int compileDynamicInvocation(
    MicroCompilerContext context, DynamicInvocation node) {
  compileExpression(context, node.receiver);
  compileArguments(context, node.arguments, false);

  int pos = context.pushOp(OpCallDynamic.make(
      node.name.text,
      false,
      false,
      false,
      false, //is async
      true,
      node.arguments.positional.length,
      node.arguments.named.map((e) => e.name).toList()));

  return pos;
}

int compileAsExpression(MicroCompilerContext context, AsExpression node) {
  int pos = compileExpression(context, node.operand);
  final type = node.type;
  if (type is InterfaceType) {
    //这里表示它是一个外部类
    if (!context.compileDeclarations.contains(type.classNode)) {
      //填充posationalLength和namedLength
      context.pushOp(OpPushConstantInt.make(0));
      context.pushOp(OpPushConstantInt.make(0));
      context.pushOp(OpPushArgments.make(3));
      return context.pushOp(OpCallExternal.make(
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
    throw Exception(
        "AsExpression  not support : ${type.runtimeType.toString()}");
  }
  return pos;
}

int compileFunctionInvocation(
    MicroCompilerContext context, FunctionInvocation node) {
  var arguments = node.arguments;
  compileArguments(context, arguments, true);
  compileExpression(context, node.receiver);
  int argumentLength =
      arguments.positional.length + arguments.named.length * 2 + 2;

  var receiver = node.receiver;
  var isAsync = false;
  if (receiver is InstanceTearOff) {
    isAsync =
        receiver.interfaceTarget.function.asyncMarker == AsyncMarker.Async;
  } else if (receiver is FunctionExpression) {
    isAsync = receiver.function.asyncMarker == AsyncMarker.Async;
  } else if (receiver is ConstantExpression) {
    var constant = receiver.constant;
    if (constant is StaticTearOffConstant) {
      isAsync = constant.function.asyncMarker == AsyncMarker.Async;
    }
  }

  Op? op;
  if (isAsync) {
    op = OpCallPointerAsync.make(argumentLength, node.name.text, isAsync);
  } else {
    op = OpCallPointer.make(argumentLength, node.name.text, isAsync);
  }
  int pos = context.pushOp(op);
  return pos;
}

int compileLocalFunctionInvocation(
    MicroCompilerContext context, LocalFunctionInvocation node) {
  var arguments = node.arguments;
  compileArguments(context, arguments, true);
  int p = compileCallLocalFunction(
      context, arguments, node.localFunction.getNamedName(),
      className: node.localFunction.stringClassName ?? "",
      libraryUri: node.localFunction.stringLibraryUri,
      name: node.localFunction.stringName,
      isStatic: true,
      isAsync: (node.localFunction.function.asyncMarker == AsyncMarker.Async));
  return p;
}

int compileFunctionExpression(
    MicroCompilerContext context, FunctionExpression node) {
  int jumpOver = context.pushOp(OpJump.make(-1));
  int pos = compileFunction(
      context, node.function, "_FunctionExpression_", false, true);
  context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
  return context.pushOp(OpPushPointer.make(
      pos, true, node.function.asyncMarker == AsyncMarker.Async));
}

int compileSuperPropertyGet(
    MicroCompilerContext context, SuperPropertyGet node) {
  var target = node.interfaceTarget;
  context.pushOp(OpGetParam.make("#this"));

  if (target is Procedure) {
    context.pushOp(OpPushConstantInt.make(0));
    context.pushOp(OpPushConstantInt.make(0));
    context.pushOp(OpPushArgments.make(3));
    bool isAsync = (target.function.asyncMarker == AsyncMarker.Async);
    if (isAsync) {
      return context.pushOp(OpCallSuperAsync.make(
          "${target.stringLibraryUri}@${target.stringClassName}",
          target.name.text,
          true,
          false,
          isAsync,
          0, []));
    } else {
      return context.pushOp(OpCallSuper.make(
          "${target.stringLibraryUri}@${target.stringClassName}",
          target.name.text,
          true,
          false,
          isAsync,
          0, []));
    }
  } else if (target is Field) {
    int opOffset =
        context.rumtimeDeclarationOpIndexes[target.getNamedName()] ?? -1;
    if (opOffset == -1) {
      print("object ${target.getNamedName()} not found ");
      return -1;
    }
    return context.pushOp(OpGetObjectProperty.make(node.name.text, opOffset));
  }

  return -1;
}

int compileSuperMethodInvocation(
    MicroCompilerContext context, SuperMethodInvocation node) {
  var procedure = node.interfaceTarget;
  var arguments = node.arguments;

  context.pushOp(OpGetParam.make("#this"));
  int p = compileCallProcedure(context, arguments, procedure, false);

  return p;
}

int compileThisExpression(MicroCompilerContext context, ThisExpression node) {
  return context.pushOp(OpGetParam.make("#this"));
}

int compileStringLiteral(MicroCompilerContext context, StringLiteral node) {
  return context
      .pushOp(OpPushConstant.make(context.constantPool.addOrGet(node.value)));
}

int compileListLiteral(MicroCompilerContext context, ListLiteral node) {
  node.expressions.forEach((element) {
    compileExpression(context, element);
  });
  context.pushOp(OpPushList.make(node.expressions.length));
  return -1;
}

int compileInstanceGet(MicroCompilerContext context, InstanceGet node) {
  var target = node.interfaceTarget;

  if (target is Procedure) {
    compileExpression(context, node.receiver);
    int p = compileCallProcedure(context, Arguments([]), target, false);
    return p;
  } else if (target is Field) {
    compileExpression(context, node.receiver);
    int opOffset =
        context.rumtimeDeclarationOpIndexes[target.getNamedName()] ?? -1;
    if (opOffset == -1) {
      print("object ${target.getNamedName()} not found ");
      return -1;
    }
    return context.pushOp(OpGetObjectProperty.make(node.name.text, opOffset));
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
    compileExpression(context, node.receiver);
    int p =
        compileCallProcedure(context, Arguments([node.value]), target, false);
    return p;
  }

  return -1;
}

int compileConstructorInvocation(
    MicroCompilerContext context, ConstructorInvocation node) {
  var target = node.target;
  var arguments = node.arguments;

  int p = compileCallConstructor(context, arguments, target);

  return p;
}

int compileInstanceInvocation(
    MicroCompilerContext context, InstanceInvocation node) {
  var procedure = node.interfaceTarget;
  var arguments = node.arguments;

  compileExpression(context, node.receiver);
  int p = compileCallProcedure(context, arguments, procedure, false);

  return p;
}

int compileIntLiteral(MicroCompilerContext context, IntLiteral node) {
  return context.pushOp(OpPushConstantInt.make(node.value));
}

int compileConstantExpression(
    MicroCompilerContext context, ConstantExpression node) {
  var constant = node.constant;
  if (constant is IntConstant) {
    return context.pushOp(OpPushConstantInt.make(constant.value));
  } else if (constant is StaticTearOffConstant) {
    if (context.compileDeclarations.contains(constant.target)) {
      String key = constant.target.getNamedName();
      int opOffset = context.rumtimeDeclarationOpIndexes[key] ?? -1;
      bool isAsync =
          (constant.target.function.asyncMarker == AsyncMarker.Async);
      int pos = context.pushOp(OpPushPointer.make(opOffset, true, isAsync));
      if (opOffset == -1) {
        context.offsetTracker.setCallPointerOffset(pos, key, true, isAsync);
      }
      return pos;
    } else {
      throw Exception("currently not support external static tearoff");
    }
  } else if (constant is NullConstant) {
    return context.pushOp(OpPushNull.make());
  } else if (constant is ConstructorTearOffConstant) {
    var target = constant.target;
    if (target is Constructor) {
      return compileCallConstructor(context, Arguments.empty(), target);
    } else if (target is Procedure) {
      return compileCallProcedure(context, Arguments.empty(), target, true);
    }
  } else if (constant is InstanceConstant) {
    print("not support InstanceConstant currently");
    return -1;
  }
  throw Exception("not support: ${constant.runtimeType.toString()} ");
}

int compileStaticGet(MicroCompilerContext context, StaticGet node) {
  var target = node.target;
  if (target is Field) {
    //有可能还没有初始化
    return context.pushOp(OpGetGlobalParam.make(target.name.text,
        context.rumtimeDeclarationOpIndexes[target.getNamedName()]!));
  } else if (target is Procedure && target.isGetter) {
    var procedure = target;
    var arguments = Arguments.empty();
    int p = compileCallProcedure(context, arguments, procedure, true);
    return p;
  }
  return -1;
}

int compileStaticSet(MicroCompilerContext context, StaticSet node) {
  int res = compileExpression(context, node.value);
  var target = node.target;
  if (res != -1) {
    if (target is Field) {
      return context.pushOp(OpSetGlobalParam.make(node.target.name.text));
    } else if (target is Procedure) {
      int p =
          compileCallProcedure(context, Arguments([node.value]), target, true);
      return p;
    }
  }
  return -1;
}

int compileVariableSet(MicroCompilerContext context, VariableSet node) {
  compileExpression(context, node.value);

  var name = node.variable.name;
  if (name == null) {
    name = context.variableNamer.getName(node.variable).text;
  }
  return context.pushOp(SetParam.make(name));
}

int compileVariableGet(MicroCompilerContext context, VariableGet node) {
  var name = node.variable.name;
  if (name == null) {
    name = context.variableNamer.getName(node.variable).text;
  }
  return context.pushOp(OpGetParam.make(name));
}

int compileStaticInvocation(
    MicroCompilerContext context, StaticInvocation node) {
  var procedure = node.target;
  var arguments = node.arguments;

  int p = compileCallProcedure(context, arguments, procedure, true);

  return p;
}
