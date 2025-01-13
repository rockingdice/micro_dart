part of 'ast.dart';

int compileExpression(MicroCompilerContext context, Expression node) {
  //context.startCompileNode(node);

  if (node is IntLiteral) {
    return compileIntLiteral(context, node);
  } else if (node is DoubleLiteral) {
    return compileDoubleLiteral(context, node);
  } else if (node is BoolLiteral) {
    return context.pushOp(OpPushConstantBool.make(node.value));
  } else if (node is NullLiteral) {
    return context.pushOp(OpPushNull.make());
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
  } else if (node is ConstructorTearOff) {
    return compileConstructorTearOff(context, node);
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
  } else if (node is StaticTearOff) {
    return compileStaticTearOff(context, node);
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
  } else if (node is NullCheck) {
    return compileNullCheck(context, node);
  } else if (node is SymbolLiteral) {
    return compileSymbolLiteral(context, node);
  } else if (node is SetLiteral) {
    return compileSetLiteral(context, node);
  } else if (node is MapLiteral) {
    return compileMapLiteral(context, node);
  } else if (node is AwaitExpression) {
    return compileAwaitExpression(context, node);
  } else if (node is BlockExpression) {
    return compileBlockExpression(context, node);
  } else if (node is LoadLibrary) {
    //return compileLoadLibrary(context, node);
  } else if (node is CheckLibraryIsLoaded) {
    print("currently CheckLibraryIsLoaded   ${node.import.name} not support ");
    // context.pushOp(OpPushConstantBool.make(true));
    //return compileCheckLibraryIsLoaded(context, node);
  } else if (node is RedirectingFactoryTearOff) {
    //return compileRedirectingFactoryTearOff(context, node);
  } else if (node is TypedefTearOff) {
    //return compileTypedefTearOff(context, node);
  } else if (node is DynamicInvocation) {
    return compileDynamicInvocation(context, node);
  } else if (node is DynamicGet) {
    return compileDynamicGet(context, node);
  } else if (node is DynamicSet) {
    return compileDynamicSet(context, node);
  }
  //this means has an error
  else if (node is InvalidExpression) {
    //return compileInvalidExpression(context, node);
  } else if (node is InstanceCreation) {
    //return compileInstanceCreation(context, node);
  } else if (node is FileUriExpression) {
    //return compileFileUriExpression(context, node);
  } else if (node is SuperPropertySet) {
    return compileSuperPropertySet(context, node);
  } else if (node is AbstractSuperPropertyGet) {
    //return compileAbstractSuperPropertyGet(context, node);
  } else if (node is AbstractSuperPropertySet) {
    //return compileAbstractSuperPropertySet(context, node);
  } else if (node is FunctionTearOff) {
    //return compileFunctionTearOff(context, node);
  } else if (node is AbstractSuperPropertySet) {
    //return compileAbstractSuperPropertySet(context, node);
  } else if (node is InstanceInvocationExpression) {
    //return compileInstanceInvocationExpression(context, node);
  } else if (node is InstanceGetterInvocation) {
    //return compileInstanceGetterInvocation(context, node);
  } else if (node is Instantiation) {
    //return compileInstantiation(context, node);
  } else if (node is TypeLiteral) {
    //return compileTypeLiteral(context, node);
    var type = node.type;
    //not common;need update
    if (type is InterfaceType) {
      return context.pushOp(OpPushType.make(type.classNode.getClassRef()));
    }
  } else if (node is SwitchExpression) {
    //return compileInstantiation(context, node);
  }
  throw Exception(
      "currently expression type  ${node.runtimeType.toString()} not support ");

  //context.endCompileNode(node);
  //
}

int compileSuperPropertySet(
    MicroCompilerContext context, SuperPropertySet node) {
  var target = node.interfaceTarget;
  context.pushOp(OpGetParam.make("#this"));
  compileExpression(context, node.value);
  context.pushOp(OpPushConstantInt.make(1));
  context.pushOp(OpPushConstantInt.make(0));
  context.pushOp(OpPushArgments.make(4));
  if (target is Procedure) {
    bool isAsync = (target.function.asyncMarker == AsyncMarker.Async);
    if (isAsync) {
      return context.pushOp(OpCallSuperAsync.make(
          ClassRef(target.stringLibraryUri, target.stringClassName!),
          target.name.text,
          false,
          true,
          isAsync,
          target.enclosingClass!.isMixinDeclaration,
          1, []));
    } else {
      return context.pushOp(OpCallSuper.make(
          ClassRef(target.stringLibraryUri, target.stringClassName!),
          target.name.text,
          false,
          true,
          isAsync,
          target.enclosingClass!.isMixinDeclaration,
          1, []));
    }
  } else if (target is Field) {
    return compileCallFieldGet(context, target);
  }

  return -1;
}

int compileBlockExpression(MicroCompilerContext context, BlockExpression node) {
  node.body.statements.forEach((element) {
    compileStatement(context, element);
  });
  return compileExpression(context, node.value);
}

int compileDoubleLiteral(MicroCompilerContext context, DoubleLiteral node) {
  return context.pushOp(OpPushConstantDouble.make(node.value));
}

int compileConstructorTearOff(
    MicroCompilerContext context, ConstructorTearOff node) {
  var target = node.target;
  if (target is Constructor) {
    return compileCallConstructor(context, Arguments.empty(), target);
  } else if (target is Procedure) {
    return compileCallProcedure(context, Arguments.empty(), target, true);
  }
  throw Exception(
      "ConstructorTearOff not support ${target.runtimeType.toString()}");
}

int compileStaticTearOff(MicroCompilerContext context, StaticTearOff node) {
  var ref = node.target.getCallRef();
  int opOffset = context.rumtimeDeclarationOpIndexes[ref] ?? -1;
  bool isAsync = (node.target.function.asyncMarker == AsyncMarker.Async);
  int pos = context
      .pushOp(OpPushPointer.make(opOffset, node.target.isStatic, isAsync));
  if (opOffset == -1) {
    context.offsetTracker.setCallPointerOffset(pos, ref, isAsync);
  }
  return pos;
}

int compileAwaitExpression(MicroCompilerContext context, AwaitExpression node) {
  compileExpression(context, node.operand);
  return context.pushOp(OpAwait.make());
}

int compileMapLiteral(MicroCompilerContext context, MapLiteral node) {
  int length = node.entries.length;
  if (node.isConst) {
    var name = context.constantNamer.getName(node);
    var ref = CallRef.name(name.text).copyOfIsStatic(true);
    if (name.params.containsKey("#location")) {
      int location = name.params["#location"] as int;
      return context.pushOp(OpGetGlobalParam.make(ref, location));
    }
    int jumpOver = context.pushOp(OpJump.make(-1));
    int location = context.callStart(ref);
    name.params["#location"] = location;
    for (int i = length - 1; i >= 0; i--) {
      compileExpression(context, node.entries[i].value);
      compileExpression(context, node.entries[i].key);
    }
    context.pushOp(OpPushMap.make(node.entries.length));
    context.pushOp(OpReturnField.make(ref));
    context.callEnd();
    context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
    return context.pushOp(OpGetGlobalParam.make(ref, location));
  }
  for (int i = length - 1; i >= 0; i--) {
    compileExpression(context, node.entries[i].value);
    compileExpression(context, node.entries[i].key);
  }

  return context.pushOp(OpPushMap.make(node.entries.length));
}

int compileSetLiteral(MicroCompilerContext context, SetLiteral node) {
  int length = node.expressions.length;
  if (node.isConst) {
    var name = context.constantNamer.getName(node);
    var ref = CallRef.name(name.text).copyOfIsStatic(true);
    if (name.params.containsKey("#location")) {
      int location = name.params["#location"] as int;
      return context.pushOp(OpGetGlobalParam.make(ref, location));
    }
    int jumpOver = context.pushOp(OpJump.make(-1));
    int location = context.callStart(ref);
    name.params["#location"] = location;
    for (int i = length - 1; i >= 0; i--) {
      compileExpression(context, node.expressions[i]);
    }
    context.pushOp(OpPushSet.make(node.expressions.length));
    context.pushOp(OpReturnField.make(ref));
    context.callEnd();
    context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
    return context.pushOp(OpGetGlobalParam.make(ref, location));
  }
  for (int i = length - 1; i >= 0; i--) {
    compileExpression(context, node.expressions[i]);
  }
  return context.pushOp(OpPushSet.make(node.expressions.length));
}

int compileSymbolLiteral(MicroCompilerContext context, SymbolLiteral node) {
  return context.pushOp(OpPushSymbol.make(node.value));
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
  //compileExpression(context, node.otherwise);
  //compileExpression(context, node.then);
  //compileExpression(context, node.condition);
  //return context.pushOp(OpConditional.make());

  compileExpression(context, node.condition);
  int rewritePos = context.pushOp(OpJumpIfFalse.make(context.ops.length));
  compileExpression(context, node.then);
  int rewritePos2 = context.pushOp(OpJump.make(context.ops.length));
  context.rewriteOp(OpJumpIfFalse.make(context.ops.length), rewritePos);
  compileExpression(context, node.otherwise);
  return context.rewriteOp(OpJump.make(context.ops.length), rewritePos2);
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
  compileExpression(context, node.operand);
  final type = node.type;
  if (type is InterfaceType) {
    context.lookupType(type.classNode);
    //这里表示它是一个外部类
    if (context.compileDeclarations.contains(type.classNode)) {
      // throw Exception(
      //     "Currently IsExpression not support internal type  : ${type.runtimeType.toString()}");
      return context.pushOp(OpIs.make(type.classNode.getClassRef()));
    } else {
      var isRef = CallRef(type.classNode.stringLibraryUri, type.classNode.name,
          "#is", false, false);
      context.externalCallMethods.add(isRef);
      return context.pushOp(OpCallExternal.make(isRef, true, [], []));
    }
  } else {
    throw Exception(
        "IsExpression type not support : ${type.runtimeType.toString()}");
  }
}

int compileThrow(MicroCompilerContext context, Throw node) {
  compileExpression(context, node.expression);
  return context.pushOp(OpThrow.make());
}

int compileEqualsNull(MicroCompilerContext context, EqualsNull node) {
  compileExpression(context, node.expression);
  context.pushOp(OpPushNull.make());
  return context.pushOp(OpEquals.make());
}

int compileFunctionTearOff(MicroCompilerContext context, FunctionTearOff node) {
  throw Exception("currently expression type  FunctionTearOff not support ");
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
    var ref = node.interfaceTarget.getCallRef();
    int opOffset = context.rumtimeDeclarationOpIndexes[ref] ?? -1;
    bool isAsync =
        (node.interfaceTarget.function.asyncMarker == AsyncMarker.Async);
    int pos =
        context.pushOp(OpPushPointer.make(opOffset, ref.isStatic, isAsync));
    if (opOffset == -1) {
      context.offsetTracker.setCallPointerOffset(pos, ref, isAsync);
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

  return context.pushOp(OpSetDynamic.make(node.name.text));
}

int compileDynamicGet(MicroCompilerContext context, DynamicGet node) {
  compileExpression(context, node.receiver);

  return context.pushOp(OpGetDynamic.make(node.name.text));
}

int compileDynamicInvocation(
    MicroCompilerContext context, DynamicInvocation node) {
  compileExpression(context, node.receiver);
  compileArguments(context, node.arguments, false);

  int pos = context.pushOp(OpCallDynamicInvocation.make(node.name.text, false));
  return pos;
}

int compileAsExpression(MicroCompilerContext context, AsExpression node) {
  int pos = compileExpression(context, node.operand);
  final type = node.type;
  if (type is InterfaceType) {
    if (context.compileDeclarations.contains(type.classNode)) {
      context.pushOp(OpAs.make(type.classNode.getClassRef()));
    } else {
      //这里表示它是一个外部类
      context.pushOp(OpPushConstantInt.make(0));
      context.pushOp(OpPushConstantInt.make(0));
      context.pushOp(OpPushArgments.make(3));

      var asRef = CallRef(type.classNode.stringLibraryUri,
          type.classNode.stringClassName!, "#as", false, false);
      context.externalCallMethods.add(asRef);
      return context.pushOp(OpCallExternal.make(asRef, true, [], []));
    }
  } else if (type is FunctionType) {
    print(
        "FunctionType  not support :  ${node.parent?.runtimeType.toString()} ${type.toStringInternal()}");
    //throw Exception(
    //    "FunctionType  not support :  ${node.parent?.runtimeType.toString()} ${type.toStringInternal()}");
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
      context, arguments, node.localFunction.getCallRef(),
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

  int pos = compileFunction(context, node.function,
      CallRef.name("_FunctionExpression_").copyOfIsStatic(true), false, true);
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
    late String className;
    //print("compiling node: ${context.compilingNode!.parent}");
    bool isMixinDeclaration = false;
    if (context.compilingNode!.parent is Class) {
      Class clazz = context.compilingNode!.parent as Class;
      isMixinDeclaration = clazz.isMixinDeclaration;
      if (isMixinDeclaration) {
        className = clazz.name;
      } else {
        className = target.stringClassName!;
      }
    } else {
      assert(false, "Not Implemented !!");
    }
    bool isAsync = (target.function.asyncMarker == AsyncMarker.Async);
    if (isAsync) {
      return context.pushOp(OpCallSuperAsync.make(
          ClassRef(target.stringLibraryUri, className),
          target.name.text,
          true,
          false,
          isAsync,
          isMixinDeclaration,
          0, []));
    } else {
      return context.pushOp(OpCallSuper.make(
          ClassRef(target.stringLibraryUri, className),
          target.name.text,
          true,
          false,
          isAsync,
          isMixinDeclaration,
          0, []));
    }
  } else if (target is Field) {
    return compileCallFieldGet(context, target);
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
  int length = node.expressions.length;

  if (node.isConst) {
    var name = context.constantNamer.getName(node);
    var ref = CallRef.name(name.text).copyOfIsStatic(true);
    if (name.params.containsKey("#location")) {
      int location = name.params["#location"] as int;
      return context.pushOp(OpGetGlobalParam.make(ref, location));
    }
    int jumpOver = context.pushOp(OpJump.make(-1));
    int location = context.callStart(ref);
    name.params["#location"] = location;
    for (int i = length - 1; i >= 0; i--) {
      compileExpression(context, node.expressions[i]);
    }
    context.pushOp(OpPushList.make(node.expressions.length));
    context.pushOp(OpReturnField.make(ref));
    context.callEnd();
    context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
    return context.pushOp(OpGetGlobalParam.make(ref, location));
  }

  for (int i = length - 1; i >= 0; i--) {
    compileExpression(context, node.expressions[i]);
  }

  return context.pushOp(OpPushList.make(node.expressions.length));
}

int compileInstanceGet(MicroCompilerContext context, InstanceGet node) {
  var target = node.interfaceTarget;

  if (target is Procedure) {
    compileExpression(context, node.receiver);
    return compileCallProcedure(context, Arguments([]), target, false);
  } else if (target is Field) {
    compileExpression(context, node.receiver);
    return compileCallFieldGet(context, target);
    //int opOffset = context.rumtimeDeclarationOpIndexes[target.getNamedName()]!;
    // if (opOffset == -1) {
    //   throw Exception("object ${target.getNamedName()} not found ");
    // }
    //return context.pushOp(OpGetObjectProperty.make(node.name.text, opOffset));
  }

  return -1;
}

int compileInstanceSet(MicroCompilerContext context, InstanceSet node) {
  var target = node.interfaceTarget;
  if (target is Field) {
    compileExpression(context, node.value);
    compileExpression(context, node.receiver);
    return compileCallFieldSet(context, target);
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
  if (node.isConst) {
    var name = context.constantNamer.getName(node);
    var ref = CallRef.name(name.text).copyOfIsStatic(true);
    if (name.params.containsKey("#location")) {
      int location = name.params["#location"] as int;
      return context.pushOp(OpGetGlobalParam.make(ref, location));
    }
    int jumpOver = context.pushOp(OpJump.make(-1));
    int location = context.callStart(ref);
    name.params["#location"] = location;
    compileCallConstructor(context, arguments, target);
    context.pushOp(OpReturnField.make(ref));
    context.callEnd();
    context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
    return context.pushOp(OpGetGlobalParam.make(ref, location));
  } else {
    return compileCallConstructor(context, arguments, target);
  }
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
  return compileConstant(context, node.constant);
}

int compileConstant(MicroCompilerContext context, Constant constant) {
  if (constant is IntConstant) {
    return context.pushOp(OpPushConstantInt.make(constant.value));
  } else if (constant is SymbolConstant) {
    return compileSymbolConstant(context, constant);
  } else if (constant is BoolConstant) {
    return context.pushOp(OpPushConstantBool.make(constant.value));
  } else if (constant is MapConstant) {
    return compileMapConstant(context, constant);
  } else if (constant is SetConstant) {
    return compileSetConstant(context, constant);
  } else if (constant is ListConstant) {
    return compileListConstant(context, constant);
  } else if (constant is StaticTearOffConstant) {
    if (context.compileDeclarations.contains(constant.target)) {
      var ref = constant.target.getCallRef();
      int opOffset = context.rumtimeDeclarationOpIndexes[ref]!;
      bool isAsync =
          (constant.target.function.asyncMarker == AsyncMarker.Async);
      int pos = context.pushOp(OpPushPointer.make(opOffset, true, isAsync));
      if (opOffset == -1) {
        context.offsetTracker.setCallPointerOffset(pos, ref, isAsync);
      }
      return pos;
    } else {
      throw Exception("currently not support external static tearoff");
    }
  } else if (constant is NullConstant) {
    return context.pushOp(OpPushNull.make());
  } else if (constant is StringConstant) {
    return context.pushOp(
        OpPushConstant.make(context.constantPool.addOrGet(constant.value)));
  } else if (constant is ConstructorTearOffConstant) {
    var target = constant.target;
    if (target is Constructor) {
      return compileCallConstructor(context, Arguments.empty(), target);
    } else if (target is Procedure) {
      return compileCallProcedure(context, Arguments.empty(), target, true);
    }
  } else if (constant is InstanceConstant) {
    throw Exception(
        "not support InstanceConstant: ${constant.classNode.name} ");
  }
  throw Exception("not support: ${constant.runtimeType.toString()} ");
}

int compileSymbolConstant(
    MicroCompilerContext context, SymbolConstant constant) {
  var name = context.constantNamer.getName(constant);
  var ref = CallRef.name(name.text).copyOfIsStatic(true);
  if (name.params.containsKey("#location")) {
    int location = name.params["#location"] as int;
    return context.pushOp(OpGetGlobalParam.make(ref, location));
  }
  int jumpOver = context.pushOp(OpJump.make(-1));
  int location = context.callStart(ref);
  name.params["#location"] = location;

  context.pushOp(OpPushSymbol.make(constant.name));
  context.pushOp(OpReturnField.make(ref));
  context.callEnd();
  context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
  return context.pushOp(OpGetGlobalParam.make(ref, location));
}

int compileSetConstant(MicroCompilerContext context, SetConstant constant) {
  var name = context.constantNamer.getName(constant);
  var ref = CallRef.name(name.text).copyOfIsStatic(true);
  if (name.params.containsKey("#location")) {
    int location = name.params["#location"] as int;
    return context.pushOp(OpGetGlobalParam.make(ref, location));
  }
  int jumpOver = context.pushOp(OpJump.make(-1));
  int location = context.callStart(ref);
  name.params["#location"] = location;

  int length = constant.entries.length;
  for (int i = length - 1; i >= 0; i--) {
    compileConstant(context, constant.entries[i]);
  }
  context.pushOp(OpPushSet.make(constant.entries.length));
  context.pushOp(OpReturnField.make(ref));
  context.callEnd();
  context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
  return context.pushOp(OpGetGlobalParam.make(ref, location));
}

int compileListConstant(MicroCompilerContext context, ListConstant constant) {
  var name = context.constantNamer.getName(constant);
  var ref = CallRef.name(name.text).copyOfIsStatic(true);
  if (name.params.containsKey("#location")) {
    int location = name.params["#location"] as int;
    return context.pushOp(OpGetGlobalParam.make(ref, location));
  }
  int jumpOver = context.pushOp(OpJump.make(-1));
  int location = context.callStart(ref);
  name.params["#location"] = location;
  int length = constant.entries.length;
  for (int i = length - 1; i >= 0; i--) {
    compileConstant(context, constant.entries[i]);
  }
  context.pushOp(OpPushList.make(constant.entries.length));
  context.pushOp(OpReturnField.make(ref));
  context.callEnd();
  context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
  return context.pushOp(OpGetGlobalParam.make(ref, location));
}

int compileMapConstant(MicroCompilerContext context, MapConstant constant) {
  var name = context.constantNamer.getName(constant);
  var ref = CallRef.name(name.text).copyOfIsStatic(true);
  if (name.params.containsKey("#location")) {
    int location = name.params["#location"] as int;
    return context.pushOp(OpGetGlobalParam.make(ref, location));
  }
  int jumpOver = context.pushOp(OpJump.make(-1));
  int location = context.callStart(ref);
  name.params["#location"] = location;

  int length = constant.entries.length;
  for (int i = length - 1; i >= 0; i--) {
    compileConstant(context, constant.entries[i].value);
    compileConstant(context, constant.entries[i].key);
  }
  context.pushOp(OpPushMap.make(constant.entries.length));
  context.pushOp(OpReturnField.make(ref));
  context.callEnd();
  context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
  return context.pushOp(OpGetGlobalParam.make(ref, location));
}

int compileInstanceConstant(
    MicroCompilerContext context, InstanceConstant constant) {
  var classNode = constant.classNode;

  //这是一个外部类
  if (!context.compileDeclarationIndexes.containsKey(classNode.getCallRef())) {
    return compileExternalInstanceConstant(context, constant);
  }

  var name = context.constantNamer.getName(constant);
  var ref = CallRef.name(name.text).copyOfIsStatic(true);

  if (name.params.containsKey("#location")) {
    int location = name.params["#location"] as int;
    return context.pushOp(OpGetGlobalParam.make(ref, location));
  }
  int jumpOver = context.pushOp(OpJump.make(-1));
  int location = context.callStart(ref);
  name.params["#location"] = location;
  context.pushOp(OpCreateInstance.make(classNode.getClassRef()));
  context.pushOp(OpSetScopeParam.make("#this"));
  constant.fieldValues.forEach((reference, constant) {
    var filed = reference.asField;
    var filedName = filed.name.text;
    compileConstant(context, constant);
    context.pushOp(OpSetThisProperty.make(filedName));
  });
  context.pushOp(OpGetParam.make("#this"));
  context.pushOp(OpReturnField.make(ref));
  context.callEnd();
  context.rewriteOp(OpJump.make(context.ops.length), jumpOver);
  return context.pushOp(OpGetGlobalParam.make(ref, location));
}

int compileExternalInstanceConstant(
    MicroCompilerContext context, InstanceConstant constant) {
  throw Exception(
      "currently not support External Instance Constant ${constant.classNode.getClassRef()}");
}

void getConstantConstructor(InstanceConstant constant) {
  var classNode = constant.classNode;

  List<Field> fileds = [];

  for (var constructor in constant.classNode.constructors) {
    if (!constructor.isConst) {
      continue;
    }
    List<Field> initlized = [];
    for (var initializer in constructor.initializers) {
      if (initializer is FieldInitializer) {
        if (constant.fieldValues.containsKey(initializer.field)) {
          //initializer.
        }
      } else if (initializer is SuperInitializer) {
      } else if (initializer is RedirectingInitializer) {
      } else if (initializer is LocalInitializer) {
        //initializer.
      } else if (initializer is AssertInitializer) {}
    }
  }
}

int compileStaticGet(MicroCompilerContext context, StaticGet node) {
  var target = node.target;
  if (target is Field) {
    return compileCallFieldGet(context, target);
  } else if (target is Procedure && target.isGetter) {
    var procedure = target;
    var arguments = Arguments.empty();
    int p = compileCallProcedure(context, arguments, procedure, true);
    return p;
  }
  throw Exception("StaticGet not support ${target.runtimeType.toString()}");
}

int compileStaticSet(MicroCompilerContext context, StaticSet node) {
  compileExpression(context, node.value);
  var target = node.target;
  if (target is Field) {
    return compileCallFieldSet(context, target);
  } else if (target is Procedure) {
    int p =
        compileCallProcedure(context, Arguments([node.value]), target, true);
    return p;
  }
  throw Exception("StaticSet not support ${target.runtimeType.toString()}");
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
  if (node.isConst) {
    throw Exception("not support const StaticInvocation");
  }
  var procedure = node.target;
  var arguments = node.arguments;

  int p = compileCallProcedure(context, arguments, procedure, true);

  return p;
}
