abstract class Mirror {}

abstract class DeclarationMirror implements Mirror {
  String get simpleName;
  String get qualifiedName;
  DeclarationMirror? get owner;
  bool get isPrivate;
  bool get isTopLevel;
  SourceLocation get location;
  List<Object> get metadata;
}

abstract class ObjectMirror implements Mirror {
  Object? invoke(String memberName, List positionalArguments,
      [Map<Symbol, dynamic>? namedArguments]);
  Object? invokeGetter(String getterName);
  Object? invokeSetter(String setterName, Object? value);
}

abstract class InstanceMirror implements ObjectMirror {
  ClassMirror get type;
  bool get hasReflectee;
  Object? get reflectee;
  @override
  bool operator ==(other);
  @override
  int get hashCode;
  Object? delegate(Invocation invocation);
}

abstract class ClosureMirror implements InstanceMirror {
  MethodMirror get function;
  Object? apply(List positionalArguments,
      [Map<Symbol, dynamic>? namedArguments]); // RET: InstanceMirror
}

abstract class LibraryMirror implements DeclarationMirror, ObjectMirror {
  Uri get uri;
  Map<String, DeclarationMirror> get declarations;

  @override
  bool operator ==(other);

  @override
  int get hashCode;
  List<LibraryDependencyMirror> get libraryDependencies;

  @override
  Null get owner;
}

abstract class LibraryDependencyMirror implements Mirror {
  bool get isImport;
  bool get isExport;
  bool get isDeferred;
  LibraryMirror get sourceLibrary;
  LibraryMirror get targetLibrary;
  String get prefix;
  List<CombinatorMirror> get combinators;
  SourceLocation get location;
  List<Object?> get metadata; // TYARG: InstanceMirror
}

abstract class CombinatorMirror implements Mirror {
  List<String> get identifiers;
  bool get isShow;
  bool get isHide;
}

abstract class TypeMirror implements DeclarationMirror {
  bool get hasReflectedType;
  Type get reflectedType;
  List<TypeVariableMirror> get typeVariables;
  List<TypeMirror> get typeArguments;
  List<Type> get reflectedTypeArguments;
  bool get isOriginalDeclaration;
  TypeMirror get originalDeclaration;
  bool isSubtypeOf(TypeMirror other);
  bool isAssignableTo(TypeMirror other);
  bool get isNullable;
  bool get isNonNullable;
  bool get isPotentiallyNullable;

  bool get isPotentiallyNonNullable;
}

abstract class ClassMirror implements TypeMirror, ObjectMirror {
  ClassMirror? get superclass;
  List<ClassMirror> get superinterfaces;
  bool get isAbstract;
  bool get isEnum;
  Map<String, DeclarationMirror> get declarations;
  Map<String, MethodMirror> get instanceMembers;
  Map<String, MethodMirror> get staticMembers;
  ClassMirror get mixin;
  bool get hasDynamicReflectedType;
  Type get dynamicReflectedType;
  Object newInstance(String constructorName, List positionalArguments,
      [Map<Symbol, dynamic> namedArguments]);
  @override
  bool operator ==(other);
  @override
  int get hashCode;

  bool isSubclassOf(ClassMirror other);
  Function invoker(String memberName);

  @override
  DeclarationMirror get owner;
}

abstract class FunctionTypeMirror implements ClassMirror {
  TypeMirror get returnType;

  List<ParameterMirror> get parameters;

  MethodMirror get callMethod;
}

abstract class TypeVariableMirror extends TypeMirror {
  TypeMirror get upperBound; // Possible RET: Type

  bool get isStatic;

  @override
  bool operator ==(other);

  /// Override requested by linter.
  @override
  int get hashCode;
}

abstract class TypedefMirror implements TypeMirror {
  FunctionTypeMirror get referent;
}

abstract class MethodMirror implements DeclarationMirror {
  TypeMirror get returnType; // Possible RET: Type
  bool get hasReflectedReturnType;
  Type get reflectedReturnType;
  bool get hasDynamicReflectedReturnType;
  Type get dynamicReflectedReturnType;

  String? get source;
  List<ParameterMirror> get parameters;

  bool get isStatic;
  bool get isAbstract;
  bool get isSynthetic;
  bool get isRegularMethod;
  bool get isOperator;
  bool get isGetter;
  bool get isSetter;
  bool get isConstructor;
  String get constructorName;
  bool get isConstConstructor;
  bool get isGenerativeConstructor;
  bool get isRedirectingConstructor;
  bool get isFactoryConstructor;
  @override
  bool operator ==(other);

  @override
  int get hashCode;

  @override
  DeclarationMirror get owner;
}

abstract class VariableMirror implements DeclarationMirror {
  TypeMirror get type; // Possible RET: Type
  bool get hasReflectedType;
  Type get reflectedType;
  bool get hasDynamicReflectedType;
  Type get dynamicReflectedType;
  bool get isStatic;
  bool get isFinal;
  bool get isConst;

  @override
  bool operator ==(other);

  /// Override requested by linter.
  @override
  int get hashCode;

  @override
  DeclarationMirror get owner;
}

abstract class ParameterMirror implements VariableMirror {
  @override
  TypeMirror get type;
  bool get isOptional;
  bool get isNamed;
  bool get hasDefaultValue;
  Object? get defaultValue; // RET: InstanceMirror
}

/// A [SourceLocation] describes the span of an entity in Dart source code.
abstract class SourceLocation {
  /// The 1-based line number for this source location.
  ///
  /// A value of 0 means that the line number is unknown.
  int get line;

  /// The 1-based column number for this source location.
  ///
  /// A value of 0 means that the column number is unknown.
  int get column;

  /// Returns the URI where the source originated.
  Uri get sourceUri;
}

/// Class used for encoding comments as metadata annotations.
class Comment {
  /// The comment text as written in the source text.
  final String text;

  /// The comment text without the start, end, and padding text.
  ///
  /// For example, if [text] is [: /** Comment text. */ :] then the
  /// [trimmedText] is [: Comment text. :].
  final String trimmedText;

  /// Is [:true:] if this comment is a documentation comment.
  ///
  /// That is, that the comment is either enclosed in [: /** ... */ :] or
  /// starts with [: /// :].
  final bool isDocComment;

  const Comment(this.text, this.trimmedText, this.isDocComment);
}

/// Used to obtain values of type [Type].
///
/// It is sometimes inconvenient to create an expression whose value is an
/// instance of type [Type] representing an instantiated generic type (e.g.,
/// `List<int>` is not an expression `f(List<int>)` is not a method call).
/// This class provides a way to express such values (the example invocation
/// can be written as `f(const TypeValue<List<int>>().type)`).
class TypeValue<E> {
  const TypeValue();
  Type get type => E;
}
