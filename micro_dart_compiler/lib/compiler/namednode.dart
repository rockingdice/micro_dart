import 'package:kernel/kernel.dart';
import 'package:micro_dart_compiler/compiler/offset_tracker.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'context.dart';

extension ExtensionNamedNode on NamedNode {
  bool get isClass {
    return (this is Class);
  }

  bool get isProcedure {
    return (this is Procedure);
  }

  bool get isField {
    return (this is Field);
  }

  bool get isConstructor {
    return (this is Constructor);
  }

  bool get isRedirectingFactory {
    return (this is RedirectingFactory);
  }

  Class get asClass {
    return (this as Class);
  }

  Procedure get asProcedure {
    return (this as Procedure);
  }

  Field get asField {
    return (this as Field);
  }

  Constructor get asConstructor {
    return (this as Constructor);
  }

  RedirectingFactory get asRedirectingFactory {
    return (this as RedirectingFactory);
  }

  String getNamedName() {
    if (isClass) {
      return getClassName();
    } else if (isConstructor) {
      return getConstructorName();
    } else if (isField) {
      return getFieldName();
    } else if (isRedirectingFactory) {
      return getRedirectingFactoryName();
    } else if (isProcedure) {
      return getProcedureName();
    }
    throw Exception(
        "get namedName error runtimeType:${this.runtimeType.toString()}");
  }

  String getClassName() {
    String libraryUri = (this.parent as Library).importUri.toString();
    String className = this.asClass.name;
    return "$libraryUri@$className";
  }

  String getConstructorName() {
    var thiz = this.asConstructor;
    String constructorName = thiz.name.text;
    var clazz = (thiz.parent as Class);
    String className = clazz.name;
    String libraryUri = (clazz.parent as Library).importUri.toString();

    return "$libraryUri@$className:constructor@$constructorName";
  }

  String getFieldName() {
    var thiz = this.asField;
    String fieldName = thiz.name.text;
    String libraryUri = "";
    String className = "";
    if (this.parent is Class) {
      className = (this.parent as Class).name;
      libraryUri = (this.parent!.parent as Library).importUri.toString();
    } else if (this.parent is Library) {
      libraryUri = (this.parent as Library).importUri.toString();
    }

    return "$libraryUri@$className:field@$fieldName";
  }

  String getRedirectingFactoryName() {
    var thiz = this.asRedirectingFactory;
    String factoryName = thiz.name.text;
    String className = (this.parent as Class).name;
    String libraryUri = (this.parent!.parent as Library).importUri.toString();

    return "$libraryUri@$className:factory@$factoryName";
  }

  String getProcedureName() {
    var thiz = this.asProcedure;
    String procedureName = thiz.name.text;
    String libraryUri = "";
    String className = "";
    if (this.parent is Class) {
      className = (this.parent as Class).name;
      libraryUri = (this.parent!.parent as Library).importUri.toString();
    } else if (this.parent is Library) {
      libraryUri = (this.parent as Library).importUri.toString();
    }

    if (thiz.isGetter) {
      procedureName = "$procedureName@get";
    } else if (thiz.isSetter) {
      procedureName = "$procedureName@set";
    }

    return "$libraryUri@$className:procedure@$procedureName";
  }
}

void compileTopLecelNamedNode(MicroCompilerContext context, int libraryIndex,
    String name, NamedNode node) {
  if (node.isProcedure) {
    compileTopLevelProcedure(context, libraryIndex, name, node.asProcedure);
  } else if (node.isField) {
    compileField(context, name, node.asField);
  }
}

void compileField(MicroCompilerContext context, String name, Field node) {}

int compileTopLevelProcedure(
    MicroCompilerContext context, int index, String name, Procedure node) {
  //表示该方法已经编译过了,直接返回
  if (context.rumtimetopLevelDeclarationOpIndex[name] != null) {
    return context.rumtimetopLevelDeclarationOpIndex[name]!;
  }

  //开启一个作用域
  int pos = context.addScope(name, node.fileOffset);
  context.rumtimetopLevelDeclarationOpIndex[name] = pos;

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

  //编译body
  if (node.function.body != null) {
    compileStatement(context, node.function.body);
    var b = node.function.body;
    if (b is Block) {
      if (b.statements.isNotEmpty && !(b.statements.last is ReturnStatement)) {
        context.pushOp(Return.make(-1));
      }
    }
  }

  context.removeScope();
  return pos;
}

void compileStatement(MicroCompilerContext context, Statement? node,
    {DartType? returnType}) {
  if (node == null) {
    return;
  }

  if (node is Block) {
    compileBlock(context, node);
  } else if (node is VariableDeclaration) {
    compileVariableDeclaration(context, node);
  } else if (node is ExpressionStatement) {
    compileExpressionStatement(context, node);
  } else if (node is ReturnStatement) {
    compileReturnStatement(context, node);
  }
}

int compileExpression(MicroCompilerContext context, Expression node) {
  if (node is IntLiteral) {
    return compileIntLiteral(context, node);
  } else if (node is VariableSet) {
    return compileVariableSet(context, node);
  } else if (node is VariableGet) {
    return compileVariableGet(context, node);
  } else if (node is StaticInvocation) {
    return compileStaticInvocation(context, node);
  } else if (node is ConstantExpression) {
    return compileConstantExpression(context, node);
  }

  throw Exception("expression type not found : ${node.runtimeType.toString()}");
}

void compileExpressionStatement(
    MicroCompilerContext context, ExpressionStatement node) {
  compileExpression(context, node.expression);
}

void compileReturnStatement(
    MicroCompilerContext context, ReturnStatement node) {
  if (node.expression != null) {
    int res = compileExpression(context, node.expression!);
    if (res != -1) {
      context.pushOp(Return.make(res));
    }
  }
}

void compileArguments(MicroCompilerContext context, Arguments arguments) {
  int pLength = arguments.positional.length;
  for (int i = pLength - 1; i >= 0; i--) {
    compileExpression(context, arguments.positional[i]);
  }

  arguments.named.forEach((element) {
    compileExpression(context, element.value);
    // if (res != -1) {
    //   context.pushOp(SetParam.make(element.name));
    // }
  });
}

int compileStaticInvocation(
    MicroCompilerContext context, StaticInvocation node) {
  var procedure = node.target;
  var name = procedure.getNamedName();

  //新增一个作用域
  //context.addScope("<StaticInvocation>", node.fileOffset);

  //将参数压入当前作用域
  var arguments = node.arguments;
  compileArguments(context, arguments);

  //获取调用方法的起始位置,如果没有则证明该方法还没有开始编译,那么就先创建一个虚拟节点,后续补全
  int opOffset = context.rumtimetopLevelDeclarationOpIndex[name] ?? -1;
  //调用Call方法,并且返回位置
  int location = context.pushOp(Call.make(opOffset));
  //如果为-1则表示该call的方法还没有被编译,先缓存,后续统一编译
  if (opOffset == -1) {
    context.offsetTracker.setOffset(
        location,
        DeferredOrOffset(
            offset: opOffset,
            name: name,
            kind: DeferredOrOffsetKind.Procedure));
  }

  //调用方法结束之后
  //删除一个作用域
  //context.removeScope();
  return 0;
}

int compileIntLiteral(MicroCompilerContext context, IntLiteral node) {
  return context.pushOp(PushConstantInt.make(node.value));
}

int compileConstantExpression(
    MicroCompilerContext context, ConstantExpression node) {
  return compileConstant(context, node.constant);
}

int compileConstant(MicroCompilerContext context, Constant node) {
  if (node is IntConstant) {
    return context.pushOp(PushConstantInt.make(node.value));
  }
  throw Exception("constant type not found: ${node.runtimeType.toString()}");
}

int compileVariableSet(MicroCompilerContext context, VariableSet node) {
  int res = compileExpression(context, node.value);

  var name = node.variable.name;
  if (name != null && res != -1) {
    return context.pushOp(SetParam.make(name));
  }
  return -1;
}

int compileVariableGet(MicroCompilerContext context, VariableGet node) {
  var name = node.variable.name;
  if (name != null) {
    context.pushOp(GetParam.make(name));
  }

  return 0;
}

void compileBlock(MicroCompilerContext context, Block node) {
  if (node.statements.isNotEmpty) {
    context.addScope("<block>", node.fileOffset);
    node.statements.forEach((element) {
      compileStatement(context, element);
    });

    context.removeScope();
  }
}

void compileVariableDeclaration(
    MicroCompilerContext context, VariableDeclaration node) {
  if (node.initializer != null) {
    //有初始值
    compileExpression(context, node.initializer!);
    context.pushOp(SetParam.make(node.name!));
  } else {
    //没有初始值则先填充null
    context.pushOp(SetParamNull.make(node.name!));
  }
}
