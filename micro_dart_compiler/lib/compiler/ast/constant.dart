part of 'ast.dart';

int compileConstant(MicroCompilerContext context, Constant node) {
  if (node is IntConstant) {
    return compileIntConstant(context, node);
  }
  throw Exception("constant type not found: ${node.runtimeType.toString()}");
}

int compileIntConstant(MicroCompilerContext context, IntConstant node) {
  return context.pushOp(PushConstantInt.make(node.value));
}
