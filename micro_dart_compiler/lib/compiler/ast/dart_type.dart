part of 'ast.dart';

CType? compileDartType(MicroCompilerContext context, DartType dartType) {
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

CType? compileDynamicType(MicroCompilerContext context, DynamicType dartType) {
  //return CType(ClassRef("", "dynamic"));
  return null;
}

CType? compileInvalidType(MicroCompilerContext context, InvalidType dartType) {
  //return CType(ClassRef("", "invalid"));

  return null;
}

CType? compileVoidType(MicroCompilerContext context, VoidType dartType) {
  //return CType(ClassRef("", "void"));
  return null;
}

CType? compileNeverType(MicroCompilerContext context, NeverType dartType) {
  //return CType(ClassRef("", "Never"));
  return null;
}

CType? compileNullType(MicroCompilerContext context, NullType dartType) {
  //return CType(ClassRef("", "null"));
  return null;
}

CType? compileInterfaceType(
    MicroCompilerContext context, InterfaceType dartType) {
  return context.lookupType(dartType.classNode);
}

CType? compileFunctionType(
    MicroCompilerContext context, FunctionType dartType) {
  return null;
  //return CType(ClassRef("", "Function"), isExternal: true);
}

CType? compileFutureOrType(
    MicroCompilerContext context, FutureOrType dartType) {
  return CType(ClassRef("dart:async", "FutureOr"), isExternal: true);
}

CType? compileExtensionType(
    MicroCompilerContext context, ExtensionType dartType) {
  return null;
}

CType? compileTypeParameterType(
    MicroCompilerContext context, TypeParameterType dartType) {
  return null;
}
