part of 'ast.dart';

int compileField(MicroCompilerContext context, Field node) {
  context.startCompileNode(node);
  compileDartType(context, node.type);
  var ref = node.getCallRef();

  if (context.rumtimeDeclarationOpIndexes[ref] != null) {
    return context.rumtimeDeclarationOpIndexes[ref]!;
  }

  int pos = context.callStart(ref);
  context.rumtimeDeclarationOpIndexes[ref] = pos;

  if (node.initializer != null) {
    compileExpression(context, node.initializer!);
  } else {
    context.pushOp(OpPushNull.make());
  }
  context.pushOp(OpReturnField.make(ref));
  context.callEnd();
  return pos;
}

int compileCallFieldGet(MicroCompilerContext context, Field field) {
  var ref = field.getCallRef();

  Op? op;
  if (context.compileDeclarationIndexes.containsKey(ref)) {
    int opOffset = context.rumtimeDeclarationOpIndexes[ref] ?? -1;
    if (field.isStatic) {
      int pos = context.pushOp(OpGetGlobalParam.make(ref, opOffset));
      if (opOffset == -1) {
        context.offsetTracker.setGlobalParamOffset(pos, ref);
      }
      return pos;
    } else {
      int pos =
          context.pushOp(OpGetObjectProperty.make(field.name.text, opOffset));
      if (opOffset == -1) {
        context.offsetTracker.setObjectParamOffset(pos, ref);
      }
      return pos;
    }
  } else {
    context.pushOp(OpPushConstantInt.make(0));
    context.pushOp(OpPushConstantInt.make(0));
    if (field.isStatic) {
      context.pushOp(OpPushArgments.make(2));
    } else {
      context.pushOp(OpPushArgments.make(3));
    }
    context.externalCallMethods.add(ref);
    op = OpCallExternal.make(ref, true, [], []);
  }

  return context.pushOp(op);
}

int compileCallFieldSet(MicroCompilerContext context, Field field) {
  var ref = field.getCallRef();

  Op? op;
  if (context.compileDeclarationIndexes.containsKey(ref)) {
    if (field.isStatic) {
      return context.pushOp(OpSetGlobalParam.make(ref.copyOfIsSetter(true)));
    } else {
      return context.pushOp(OpSetObjectProperty.make(field.name.text));
    }
  } else {
    op = OpCallExternal.make(ref.copyOfIsSetter(true), false, [], []);
  }

  return context.pushOp(op);
}
