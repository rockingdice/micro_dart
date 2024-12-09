part of 'ast.dart';

int compileConstructor(MicroCompilerContext context, Constructor node) {
  context.startCompileNode(node);
  var ref = node.getCallRef();

  if (context.rumtimeDeclarationOpIndexes[ref] != null) {
    return context.rumtimeDeclarationOpIndexes[ref]!;
  }
  //开启一个作用域
  int pos = context.callStart(ref);
  context.rumtimeDeclarationOpIndexes[ref] = pos;
  List<String> posationalNames = [];
  //参数初始化
  node.function.positionalParameters.forEach((element) {
    compileVariableDeclaration(context, element);
    posationalNames.add(element.name!);
  });
  node.function.namedParameters.forEach((element) {
    compileVariableDeclaration(context, element);
  });
  context.pushOp(OpPopArgments.make(posationalNames, false, true));
  context.pushOp(OpCreateInstance.make(
      ClassRef(node.stringLibraryUri, node.stringClassName!)));
  context.pushOp(OpSetScopeParam.make("#this"));

  //filed初始化
  node.initializers.forEach((element) {
    compileInitializer(context, element);
  });
  //编译body

  var b = node.function.body;
  if (b != null) {
    if (b is Block && b.statements.isNotEmpty) {
      compileFunctionBlock(context, b);
    } else {
      compileStatement(context, b, newBlock: false);
    }
  }
  context.pushOp(OpGetParam.make("#this"));
  context.pushOp(OpReturn.make());
  context.callEnd();

  return -1;
}

void compileInitializer(MicroCompilerContext context, Initializer initializer) {
  if (initializer is FieldInitializer) {
    compileFieldInitializer(context, initializer);
  } else if (initializer is SuperInitializer) {
    compileSuperInitializer(context, initializer);
  } else if (initializer is RedirectingInitializer) {
    compileRedirectingInitializer(context, initializer);
  } else if (initializer is LocalInitializer) {
    compileLocalInitializer(context, initializer);
  } else if (initializer is AssertInitializer) {
    compileAssertInitializer(context, initializer);
  }
}

void compileFieldInitializer(
    MicroCompilerContext context, FieldInitializer initializer) {
  compileExpression(context, initializer.value);
  context.pushOp(OpSetThisProperty.make(initializer.field.name.text));
}

void compileSuperInitializer(
    MicroCompilerContext context, SuperInitializer initializer) {
  var target = initializer.target;
  var arguments = initializer.arguments;
  Class clazz = target.enclosingClass;
  context.lookupType(clazz);

  if (clazz.stringLibraryUri == "dart:core" &&
      clazz.stringClassName == "Object") {
    return;
  }

  compileCallConstructor(context, arguments, target);
  context.pushOp(OpSetThisSuper.make());
}

void compileRedirectingInitializer(
    MicroCompilerContext context, RedirectingInitializer initializer) {}

void compileLocalInitializer(
    MicroCompilerContext context, LocalInitializer initializer) {}

void compileAssertInitializer(
    MicroCompilerContext context, AssertInitializer initializer) {}

int compileCallConstructor(MicroCompilerContext context, Arguments arguments,
    Constructor constructor) {
  context.lookupType(constructor.enclosingClass);

  var ref = constructor.getCallRef();
  //将参数压入当前作用域
  compileArguments(context, arguments, true);

  var classtypeStirngs = arguments.types
      .map((e) => compileDartType(context, e))
      .map((e) => e?.ref.className ?? "")
      .toList();

  Op? op;
  if (context.compileDeclarationIndexes.containsKey(ref)) {
    op = OpCallDynamic.make(ref, true, false, false, false, true);
  } else {
    context.externalCallMethods.add(ref);
    op = OpCallExternal.make(ref, true, [], classtypeStirngs);
  }

  return context.pushOp(op);
}
