abstract class Mirror {}

abstract class NamedMirror implements Mirror {
  final String name;

  const NamedMirror(this.name);
}

class DeclarationMirror extends NamedMirror {
  final Type type;
  const DeclarationMirror(super.name, {required this.type});
}

class ConstructorMirror extends NamedMirror {
  const ConstructorMirror(super.name);
}

class RedirectingFactoriyMirror extends NamedMirror {
  const RedirectingFactoriyMirror(super.name);
}

class ClassMirror extends NamedMirror {
  final Map<String, DeclarationMirror> fields;
  final Map<String, ConstructorMirror> constructors;
  final Map<String, RedirectingFactoriyMirror> redirectingFactories;
  final Map<String, InvokerOfGetter> procedures;
  final Map<String, InvokerOfGetter> getters;
  final Map<String, InvokerOfGetter> setters;

  const ClassMirror(
    super.name, {
    required this.fields,
    required this.constructors,
    required this.redirectingFactories,
    required this.procedures,
    required this.getters,
    required this.setters,
  });

  Object? invoke(String key, List positionalArguments,
      [Map<Symbol, dynamic>? namedArguments]) {
    return Function.apply(
        procedures[key]!, positionalArguments, namedArguments);
  }
}

typedef InvokerOfGetter = Object? Function(
    Object? instance, List posational, Map<Symbol, dynamic> named);

class InstanceMirror extends NamedMirror {
  final Object target;
  final ClassMirror clazz;
  InstanceMirror(super.name, this.target, this.clazz);

  Object? invoke(String key, List positionalArguments,
      [Map<Symbol, dynamic>? namedArguments]) {
    return Function.apply(
        clazz.procedures[key]!, positionalArguments, namedArguments);
  }
}
