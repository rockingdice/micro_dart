part of 'ast.dart';

TypeRef? compileDartType(MicroCompilerContext context, DartType dartType) {
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

TypeRef? compileDynamicType(
    MicroCompilerContext context, DynamicType dartType) {
  return Types.dynamicType;
}

TypeRef? compileInvalidType(
    MicroCompilerContext context, InvalidType dartType) {
  return Types.invalidType;
}

TypeRef? compileVoidType(MicroCompilerContext context, VoidType dartType) {
  return Types.voidType;
}

TypeRef? compileNeverType(MicroCompilerContext context, NeverType dartType) {
  return Types.neverType;
}

TypeRef? compileNullType(MicroCompilerContext context, NullType dartType) {
  return Types.nullType;
}

TypeRef? compileInterfaceType(
    MicroCompilerContext context, InterfaceType dartType) {
  return context.lookupType(dartType.classNode);
}

TypeRef? compileFunctionType(
    MicroCompilerContext context, FunctionType dartType) {
  return null;
}

TypeRef? compileFutureOrType(
    MicroCompilerContext context, FutureOrType dartType) {
  return null;
}

TypeRef? compileExtensionType(
    MicroCompilerContext context, ExtensionType dartType) {
  return null;
}

TypeRef? compileTypeParameterType(
    MicroCompilerContext context, TypeParameterType dartType) {
  return null;
}
