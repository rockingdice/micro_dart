abstract class Mirror {}

class DeclarationMirror {
  final String name;
  final Object target;
  const DeclarationMirror(this.name, this.target);
}

class LibraryMirror {
  final Map<String, Function> functions;

  final Map<String, DeclarationMirror> declarations;

  final Map<String, ClassMirror> classes;

  final String libraryName;

  const LibraryMirror(
      this.libraryName, this.declarations, this.functions, this.classes);

  Object? invoke(String memberName, List positionalArguments,
      [Map<Symbol, dynamic>? namedArguments]) {
    return Function.apply(
        functions[memberName]!, positionalArguments, namedArguments);
  }
}

class ClassMirror {
  final Map<String, Function> functions;

  final Map<String, DeclarationMirror> declarations;

  final Map<String, Function> constructors;

  final ClassMirror? superClass;
  final List<ClassMirror> mixins;

  const ClassMirror(
      {required this.constructors,
      required this.declarations,
      required this.functions,
      this.superClass,
      required this.mixins});

  Object? invoke(Object? target, String memberName, List positionalArguments,
      [Map<Symbol, dynamic>? namedArguments]) {
    if (functions.containsKey(memberName)) {
      return Function.apply(
          functions[memberName]!(target), positionalArguments, namedArguments);
    }
    if (superClass?.functions.containsKey(memberName) ?? false) {
      return Function.apply(superClass!.functions[memberName]!(target),
          positionalArguments, namedArguments);
    }

    for (var element in mixins) {
      if (element.functions.containsKey(memberName)) {
        return Function.apply(functions[memberName]!(target),
            positionalArguments, namedArguments);
      }
    }
    throw Exception("not found $memberName");
  }

  Object? invokeGetter(String memberName, List positionalArguments,
      [Map<Symbol, dynamic>? namedArguments]) {
    return Function.apply(
        functions[memberName]!, positionalArguments, namedArguments);
  }
}
