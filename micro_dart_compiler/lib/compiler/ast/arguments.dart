part of 'ast.dart';

void compileArguments(MicroCompilerContext context, Arguments arguments) {
  int pLength = arguments.positional.length;
  for (int i = pLength - 1; i >= 0; i--) {
    compileExpression(context, arguments.positional[i]);
  }

  arguments.named.forEach((element) {
    compileExpression(context, element.value);
    context.pushOp(SetScopeParam.make(-1, element.name));
  });
}
