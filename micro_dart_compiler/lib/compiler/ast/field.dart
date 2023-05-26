part of 'ast.dart';

int compileField(MicroCompilerContext context, Field node) {
  compileDartType(context, node.type);
  if (node.isStatic) {
    return compileStaticField(context, node);
  } else {
    return compileClassField(context, node);
  }
}

int compileStaticField(MicroCompilerContext context, Field node) {
  var name = node.getNamedName();
  //表示该方法已经编译过了,直接返回
  if (context.rumtimeDeclarationOpIndexes[name] != null) {
    return context.rumtimeDeclarationOpIndexes[name]!;
  }

  //开启一个作用域
  int pos = context.addScope(name, node.fileOffset);
  context.rumtimeDeclarationOpIndexes[name] = pos;

  if (node.initializer != null) {
    compileExpression(context, node.initializer!);
  } else {
    context.pushOp(PushNull.make());
  }
  context.pushOp(ReturnField.make(
      node.stringLibraryUri, "", node.isStatic, node.name.text));

  return pos;
}

int compileClassField(MicroCompilerContext context, Field node) {
  var name = node.getNamedName();
  //表示该方法已经编译过了,直接返回
  if (context.rumtimeDeclarationOpIndexes[name] != null) {
    return context.rumtimeDeclarationOpIndexes[name]!;
  }

  //开启一个作用域
  int pos = context.addScope(name, node.fileOffset);
  context.rumtimeDeclarationOpIndexes[name] = pos;

  if (node.initializer != null) {
    compileExpression(context, node.initializer!);
  } else {
    context.pushOp(PushNull.make());
  }
  context.pushOp(ReturnField.make(node.stringLibraryUri, node.stringClassName!,
      node.isStatic, node.name.text));

  return pos;
}

int compileCallField(MicroCompilerContext context, Field field) {
  var name = field.getNamedName();

  Op? op;
  if (context.compileDeclarationIndexes.containsKey(name)) {
    op = CallDynamic.make(name, true, false, false, 0, List.empty());
  } else {
    op = CallExternal.make(
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
