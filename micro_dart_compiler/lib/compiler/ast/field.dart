part of 'ast.dart';

int compileField(MicroCompilerContext context, Field node) {
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

int compileCallField(MicroCompilerContext context, Field field) {
  var name = field.getNamedName();

  Op? op;
  if (context.compileDeclarationIndexes.containsKey(name)) {
    op = OpCallDynamic.make(
        name, true, true, false, false, false, 0, List.empty());
  } else {
    op = OpCallExternal.make(
      className: field.stringClassName ?? "",
      key: name,
      isGetter: field.isGetter,
      isSetter: field.isSetter,
      isStatic: field.isStatic,
      libraryUri: field.stringLibraryUri,
      name: field.name.text,
      kind: DeferredOrOffsetKind.Field.index,
      posationalLength: 0,
      namedList: List.empty(),
    );
  }

  return context.pushOp(op);
}
