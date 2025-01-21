part of 'ast.dart';

int compileField(MicroCompilerContext context, Field node) {
  context.startCompileNode(node);
  compileDartType(context, node.type);
  var ref = node.getCallRef();

  if (context.runtimeDeclarationOpIndexes[ref] != null) {
    return context.runtimeDeclarationOpIndexes[ref]!;
  }

  int pos = context.callStart(ref);
  context.runtimeDeclarationOpIndexes[ref] = pos;

  if (node.initializer != null) {
    compileExpression(context, node.initializer!);
  } else {
    context.pushOp(OpPushNull.make());
  }
  context.pushOp(OpReturnField.make(ref));
  context.callEnd();
  return pos;
}

int compileCallFieldGet(MicroCompilerContext context, Field field) {
  var ref = field.getCallRef();
 
  if (field.isStatic) {
    //如果是静态函数，不需要实例的情况，也就不需要找super的方法，直接找内部/外部引用即可
    return context.pushOp(OpGetStatic.make(ref));
  } else {
    //如果是成员函数，需要实例的类型，逐层递归查找父类型的方法，然后确定内部/外部引用
    bool isMixinDeclaration = false;
    if (field.enclosingClass != null) {
      isMixinDeclaration = field.enclosingClass!.isMixinDeclaration;
    }
    return context.pushOp(OpGetInstance.make(ref, isMixinDeclaration));
  } 
}

int compileCallFieldSet(MicroCompilerContext context, Field field) {
  var ref = field.getCallRef();

  if (field.isStatic) {
    //如果是静态函数，不需要实例的情况，也就不需要找super的方法，直接找内部/外部引用即可
    return context.pushOp(OpSetStatic.make(ref));
  } else {
    //如果是成员函数，需要实例的类型，逐层递归查找父类型的方法，然后确定内部/外部引用
    bool isMixinDeclaration = false;
    if (field.enclosingClass != null) {
      isMixinDeclaration = field.enclosingClass!.isMixinDeclaration;
    }
    return context.pushOp(OpSetInstance.make(ref, isMixinDeclaration));
  } 
  // Op? op;
  // if (context.compileDeclarationIndexes.containsKey(ref)) {
  //   if (field.isStatic) {
  //     return context.pushOp(OpSetGlobalParam.make(ref.copyOfIsSetter(true)));
  //   } else {
  //     return context.pushOp(OpSetObjectProperty.make(field.name.text));
  //   }
  // } else {
  //   // op = OpCallExternal.make(ref.copyOfIsSetter(true), false, [], []);
  //   op = OpSetDynamic.make(ref.name);
  // }

  // return context.pushOp(op);
}
