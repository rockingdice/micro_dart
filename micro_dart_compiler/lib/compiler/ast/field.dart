part of 'ast.dart';

int compileField(MicroCompilerContext context, Field node) {
  context.startCompileNode(node);
  compileDartType(context, node.type);
  var name = node.getNamedName();

  if (context.rumtimeDeclarationOpIndexes[name] != null) {
    return context.rumtimeDeclarationOpIndexes[name]!;
  }

  int pos = context.callStart(name);
  context.rumtimeDeclarationOpIndexes[name] = pos;

  if (node.initializer != null) {
    compileExpression(context, node.initializer!);
  } else {
    context.pushOp(OpPushNull.make());
  }
  context.pushOp(OpReturnField.make(
      node.stringLibraryUri, "", node.isStatic, node.name.text));
  context.callEnd();
  return pos;
}

int compileCallFieldGet(MicroCompilerContext context, Field field) {
  var name = field.getNamedName();

  Op? op;
  if (context.compileDeclarationIndexes.containsKey(name)) {
    int opOffset = context.rumtimeDeclarationOpIndexes[name] ?? -1;
    if (field.isStatic) {
      int pos = context.pushOp(OpGetGlobalParam.make(name, opOffset));
      if (opOffset == -1) {
        context.offsetTracker.setGlobalParamOffset(pos, name, name);
      }
      return pos;
    } else {
      int pos =
          context.pushOp(OpGetObjectProperty.make(field.name.text, opOffset));
      if (opOffset == -1) {
        context.offsetTracker.setObjectParamOffset(pos, field.name.text, name);
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

    op = OpCallExternal.make(
      className: field.stringClassName ?? "",
      key: name,
      isGetter: true,
      isSetter: false,
      isStatic: field.isStatic,
      hasReturn: true,
      libraryUri: field.stringLibraryUri,
      name: field.name.text,
      kind: DeferredOrOffsetKind.Field.index,
      posationalLength: 0,
      namedList: List.empty(),
    );
  }

  return context.pushOp(op);
}

int compileCallFieldSet(MicroCompilerContext context, Field field) {
  var name = field.getNamedName();

  Op? op;
  if (context.compileDeclarationIndexes.containsKey(name)) {
    if (field.isStatic) {
      return context.pushOp(OpSetGlobalParam.make(name));
    } else {
      return context.pushOp(OpSetObjectProperty.make(field.name.text));
    }
  } else {
    op = OpCallExternal.make(
      className: field.stringClassName ?? "",
      key: name,
      isGetter: false,
      isSetter: true,
      isStatic: field.isStatic,
      hasReturn: false,
      libraryUri: field.stringLibraryUri,
      name: field.name.text,
      kind: DeferredOrOffsetKind.Field.index,
      posationalLength: 0,
      namedList: List.empty(),
    );
  }

  return context.pushOp(op);
}
