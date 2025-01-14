part of 'ast.dart';

void compileArguments(
    MicroCompilerContext context, Arguments arguments, bool isStatic) {
  int pLength = arguments.positional.length;
  for (int i = pLength - 1; i >= 0; i--) {
    compileExpression(context, arguments.positional[i]);
  }
  context.pushOp(OpPushConstantInt.make(pLength));

  pLength = arguments.named.length;
  arguments.named.forEach((element) {
    compileExpression(context, element.value);
    context.pushOp(
        OpPushConstant.make(context.constantPool.addOrGet(element.name)));
  });
  context.pushOp(OpPushConstantInt.make(pLength));
  int argumentLength =
      arguments.positional.length + arguments.named.length * 2 + 2;
  if (!isStatic) {
    argumentLength++;
  }
  context.pushOp(OpPushArguments.make(argumentLength));
}
