part of 'ast.dart';

int compileDartType(MicroCompilerContext context, DartType dartType) {
  if (dartType is DynamicType) {
    return compileDynamicType(context, dartType);
  } else if (dartType is InvalidType) {
    return compileInvalidType(context, dartType);
  } else if (dartType is VoidType) {
    return compileVoidType(context, dartType);
  } else if (dartType is NeverType) {
    return compileNeverType(context, dartType);
  } else if (dartType is NullType) {
    return compileNullType(context, dartType);
  } else if (dartType is InterfaceType) {
    return compileInterfaceType(context, dartType);
  } else if (dartType is FunctionType) {
    return compileFunctionType(context, dartType);
  } else if (dartType is FutureOrType) {
    return compileFutureOrType(context, dartType);
  } else if (dartType is ExtensionType) {
    return compileExtensionType(context, dartType);
  } else if (dartType is TypeParameterType) {
    return compileTypeParameterType(context, dartType);
  }
  throw Exception("not support ${dartType.runtimeType.toString()}");
}

int compileDynamicType(MicroCompilerContext context, DynamicType dartType) {
  return -1;
}

int compileInvalidType(MicroCompilerContext context, InvalidType dartType) {
  return -1;
}

int compileVoidType(MicroCompilerContext context, VoidType dartType) {
  return -1;
}

int compileNeverType(MicroCompilerContext context, NeverType dartType) {
  return -1;
}

int compileNullType(MicroCompilerContext context, NullType dartType) {
  return -1;
}

int compileInterfaceType(MicroCompilerContext context, InterfaceType dartType) {
  return context.lookupType(dartType.classNode) ?? -1;
}

int compileFunctionType(MicroCompilerContext context, FunctionType dartType) {
  return -1;
}

int compileFutureOrType(MicroCompilerContext context, FutureOrType dartType) {
  return -1;
}

int compileExtensionType(MicroCompilerContext context, ExtensionType dartType) {
  return -1;
}

int compileTypeParameterType(
    MicroCompilerContext context, TypeParameterType dartType) {
  return -1;
}
