part of 'ast.dart';

int compileProcedure(MicroCompilerContext context, Procedure node) {
  if (node.isStatic) {
    return compileStaticProcedure(context, node);
  }
  throw Exception("not support procedure: ${node.getNamedName()}");
}

int compileStaticProcedure(MicroCompilerContext context, Procedure node) {
  var name = node.getNamedName();
  //表示该方法已经编译过了,直接返回
  if (context.rumtimeDeclarationOpIndexes[name] != null) {
    return context.rumtimeDeclarationOpIndexes[name]!;
  }

  //开启一个作用域
  int pos = context.addScope(name, node.fileOffset);
  context.rumtimeDeclarationOpIndexes[name] = pos;

  //参数初始化

  node.function.positionalParameters.forEach((element) {
    compileVariableDeclaration(context, element);
    //将上个作用域中的参数copy到这个作用域
    context.pushOp(SetPosationalParam.make(element.name!));
  });
  node.function.namedParameters.forEach((element) {
    compileVariableDeclaration(context, element);
    context.pushOp(SetNamedParam.make(element.name!));
  });
  var b = node.function.body;
  //编译body
  if (b != null) {
    if (b is Block) {
      compileBlock(context, b, createScope: false);
    } else {
      compileStatement(context, b);
    }

    if (b is Block) {
      if (b.statements.isNotEmpty && !(b.statements.last is ReturnStatement)) {
        context.pushOp(Return.make(-1));
      }
    }
  }

  context.removeScope();
  return pos;
}
