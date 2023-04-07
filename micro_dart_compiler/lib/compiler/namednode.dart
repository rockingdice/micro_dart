import 'package:kernel/kernel.dart';
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

int compileTopLevelProcedure(MicroCompilerContext context, int libraryIndex,
    String functionName, Procedure node) {
  //表示该方法已经编译过了,直接返回
  if (context.topLevelDeclarationPositions[libraryIndex]![functionName] !=
      null) {
    return context.topLevelDeclarationPositions[context.currentlibraryIndex]![
        functionName]!;
  }

  //开启一个作用域
  int pos = context.addScope(functionName, node.fileOffset);
  context.topLevelDeclarationPositions[context.currentlibraryIndex]![
      functionName] = pos;

  //处理参数初始化
  //node.function.positionalParameters.forEach((element) {});
  //node.function.namedParameters.forEach((element) {});

  //编译body
  if (node.function.body != null) {
    compileStatement(context, node.function.body);
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
  }

  return -1;
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
  arguments.positional.forEach((element) {});
}

int compileStaticInvocation(
    MicroCompilerContext context, StaticInvocation node) {
  //处理参数
  var arguments = node.arguments;

  var procedure = node.target;
  var procedureName = procedure.name.text;
  if (procedure.isGetter) {
    procedureName = "$procedureName#get";
  } else if (procedure.isSetter) {
    procedureName = "$procedureName#set";
  }
  String? libraryUri;
  if (procedure.parent is Library) {
    libraryUri = (procedure.parent as Library).importUri.toString();
  } else if (procedure.parent?.parent is Library) {
    libraryUri = (procedure.parent?.parent as Library).importUri.toString();
  }

  if (libraryUri == null) {
    return -1;
  }
  var libraryIndex = context.libraryIndexes[libraryUri];

  if (libraryIndex != null) {
    //需要编译
    int pos = compileTopLevelProcedure(
        context, libraryIndex, procedureName, procedure);

    //跳转到方法执行的部分
    context.pushOp(JumpConstant.make(pos));
  } else {
    //调用的是外部的Procedure
  }

  return 0;
}

int compileIntLiteral(MicroCompilerContext context, IntLiteral node) {
  return context.pushOp(PushConstantInt.make(node.value));
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
  int res = -1;
  if (node.initializer != null) {
    res = compileExpression(context, node.initializer!);
  }

  if (node.name != null && res != -1) {
    context.pushOp(SetParam.make(node.name!));
  }
}
