part of 'ast.dart';

int compileConstructor(MicroCompilerContext context, Constructor node) {
  var name = node.getNamedName();
  //   name.accept(v);
  //  visitList(initializers, v);
  //  function.accept(v);

  if (context.rumtimeDeclarationOpIndexes[name] != null) {
    return context.rumtimeDeclarationOpIndexes[name]!;
  }
  //开启一个作用域
  int pos = context.addScope(name, node.fileOffset);
  context.rumtimeDeclarationOpIndexes[name] = pos;

  node.initializers.forEach((element) {
    compileInitializer(context, element);
  });

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
    MicroCompilerContext context, FieldInitializer initializer) {}

void compileSuperInitializer(
    MicroCompilerContext context, SuperInitializer initializer) {}

void compileRedirectingInitializer(
    MicroCompilerContext context, RedirectingInitializer initializer) {}

void compileLocalInitializer(
    MicroCompilerContext context, LocalInitializer initializer) {}

void compileAssertInitializer(
    MicroCompilerContext context, AssertInitializer initializer) {}
