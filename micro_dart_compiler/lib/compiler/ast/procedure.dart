part of 'ast.dart';

int compileProcedure(MicroCompilerContext context, Procedure node) {
  compileDartType(context, node.function.returnType);
  var ref = node.getCallRef();
  //表示该方法已经编译过了,直接返回
  if (context.runtimeDeclarationOpIndexes[ref] != null) {
    return context.runtimeDeclarationOpIndexes[ref]!;
  }
  return compileFunction(
      context, node.function, ref, node.isGetter, node.isStatic);
}

int compileFunction(MicroCompilerContext context, FunctionNode function,
    CallRef ref, bool isGetter, bool isStatic) {
  //开启一个作用域
  int pos = context.callStart(ref);
  context.runtimeDeclarationOpIndexes[ref] = pos;

  List<String> positionalNames = [];

  //参数初始化
  function.positionalParameters.forEach((element) {
    compileStatement(context, element);
    positionalNames.add(element.name!);
  });
  function.namedParameters.forEach((element) {
    compileStatement(context, element);
  });

  context.pushOp(OpPopArguments.make(positionalNames, isGetter, isStatic));
  var b = function.body;

  //编译body
  if (b != null) {
    compileStatement(context, b, newBlock: false);
  }
  context.callEnd();
  return pos;
}

int compileCallProcedure(MicroCompilerContext context, Arguments arguments,
    Procedure procedure, bool isStatic) {
  var ref = procedure.getCallRef();

  compileArguments(context, arguments, isStatic);
  if (isStatic) {
    //如果是静态函数，不需要实例的情况，也就不需要找super的方法，直接找内部/外部引用即可
    return context.pushOp(OpCallStaticInvocation.make(
        ref,
        procedure.isGetter,
        procedure.isSetter,        
        procedure.function.asyncMarker == AsyncMarker.Async,
        true));
  } else {
    //如果是成员函数，需要实例的类型，逐层递归查找父类型的方法，然后确定内部/外部引用
    bool isMixinDeclaration = false;
    if (procedure.enclosingClass != null) {
      isMixinDeclaration = procedure.enclosingClass!.isMixinDeclaration;
    }
    return context.pushOp(OpCallInstanceInvocation.make(
        ref,
        procedure.isGetter,
        procedure.isSetter,
        isMixinDeclaration,
        procedure.function.asyncMarker == AsyncMarker.Async,
        true));
  }
 
}

int compileCallLocalFunction(
    MicroCompilerContext context, Arguments arguments, CallRef ref,
    {DeferredOrOffsetKind kind = DeferredOrOffsetKind.Procedure,
    int positionalLength = 0,
    List<String> namedList = const [],
    required String className,
    required String libraryUri,
    required String name,
    bool isGetter = false,
    bool isSetter = false,
    bool isStatic = false,
    bool isAsync = false}) {
  //将参数压入当前作用域
  compileArguments(context, arguments, isStatic);

  return context.pushOp(
      OpCallDynamic.make(ref, isStatic, isGetter, isSetter, isAsync, true));
}
