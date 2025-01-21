class Flags {
  //Constructor
  // bool isConst = false,
  // bool isExternal = false,
  // bool isSynthetic = false,

  //Initializer
  //bool isSynthetic

  //Initializer
  //isSynthetic

  //DartType
  // Nullability
  //   nonNullable
  //   nullable
  //   legacy
  //   undetermined

  //Class
  //static const int FlagAbstract = 1 << 0;
  //static const int FlagEnum = 1 << 1;
  //static const int FlagAnonymousMixin = 1 << 2;
  //static const int FlagEliminatedMixin = 1 << 3;
  //static const int FlagMixinDeclaration = 1 << 4;
  //static const int FlagHasConstConstructor = 1 << 5;
  //static const int FlagMacro = 1 << 6;
  //static const int FlagSealed = 1 << 7;
  //static const int FlagMixinClass = 1 << 8;
  //static const int FlagBase = 1 << 9;
  //static const int FlagInterface = 1 << 10;
  //static const int FlagFinal = 1 << 11;

  //Extension
  //static const int FlagExtensionTypeDeclaration = 1 << 12;
  //static const int FlagUnnamedExtension = 1 << 13;

  //ExtensionMemberKind
  //enum ExtensionMemberKind {
  //  Field,
  //  Method,
  //  Getter,
  //  Setter,
  //  Operator,
  //  TearOff,
  //}

  //ExtensionMemberKind
  //enum ExtensionMemberKind {
  //  Field,
  //  Method,
  //  Getter,
  //  Setter,
  //  Operator,
  //  TearOff,
  //}

  //ExtensionMemberDescriptor
  // FlagStatic

  //enum CallSiteAccessKind {
  //  methodInvocation,
  //  getterInvocation,
  //  setterInvocation,
  //  operatorInvocation,
  //}

  //Member
  //isAbstract
  //isConst
  //hasGetter
  //hasSetter
  //isInstanceMember
  //isExternal
  //isExtensionMember
  //isInlineClassMember
  //isNonNullableByDefault
  //isInternalImplementation

  //Field
  //static const int FlagFinal = 1 << 0; // Must match serialized bit positions.

  //static const int FlagConst = 1 << 14;
  //static const int FlagStatic = 1 << 15;
  //static const int FlagCovariant = 1 << 16;
  //static const int FlagCovariantByClass = 1 << 17;
  //static const int FlagLate = 1 << 5;
  //static const int FlagExtensionMember = 1 << 18;
  //static const int FlagNonNullableByDefault = 1 << 19;
  //static const int FlagInternalImplementation = 1 << 20;
  //static const int FlagEnumElement = 1 << 21;
  //static const int FlagInlineClassMember = 1 << 22;

  //static const int FlagExternal = 1 << 23;
  //static const int FlagRedirectingFactory = 1 << 24;
  //static const int FlagSynthetic = 1 << 25;
  //static const int FlagIsAbstractFieldAccessor = 1 << 26;
  //static const int FlagInlineMember = 1 << 27;
  //static const int FlagHasWeakTearoffReferencePragma = 1 << 28;
  //static const int FlagInvariant = 1 << 29;
  //static const int FlagBoundsSafe = 1 << 30;
  //static const int FlagTypeError = 1 << 31;
  //static const int FlagCovarianceCheck = 1 << 32;
  //static const int FlagForDynamic = 1 << 33;
  //static const int FlagForNonNullableByDefault = 1 << 34;
  //static const int FlagUnchecked = 1 << 35;
  //static const int FlagYieldStar = 1 << 36;
  //static const int FlagHasDeclaredInitializer = 1 << 37;
  //static const int FlagInitializingFormal = 1 << 38;
  //static const int FlagRequired = 1 << 39;
  //static const int FlagCovariantByDeclaration = 1 << 40;
  //static const int FlagLowered = 1 << 41;
  //static const int FlagSynthesized = 1 << 42;
  //static const int FlagHoisted = 1 << 43;
  //static const int FlagRequiredNamedType = 1 << 44;

  // RedirectingFactory
  //static const int FlagConst = 1 << 0; // Must match serialized bit positions.
  //static const int FlagExternal = 1 << 1;
  //static const int FlagNonNullableByDefault = 1 << 2;

  // Procedure
  // ProcedureKind
  //  Method,
  //  Getter,
  //  Setter,
  //  Operator,
  //  Factory,

  // ProcedureStubKind
  //  Regular
  //  AbstractForwardingStub
  //  ConcreteForwardingStub
  //  NoSuchMethodForwarder
  //  MemberSignature
  //  AbstractMixinStub
  //  ConcreteMixinStub

  //
  //static const int FlagStatic = 1 << 0; // Must match serialized bit positions.
  //static const int FlagAbstract = 1 << 1;
  //static const int FlagExternal = 1 << 2;
  //static const int FlagConst = 1 << 3; // Only for external const factories.
  //static const int FlagRedirectingFactory = 1 << 4;
  //static const int FlagExtensionMember = 1 << 5;
  //static const int FlagNonNullableByDefault = 1 << 6;
  //static const int FlagSynthetic = 1 << 7;
  //static const int FlagInternalImplementation = 1 << 8;
  //static const int FlagIsAbstractFieldAccessor = 1 << 9;
  //static const int FlagInlineMember = 1 << 10;
  //static const int FlagHasWeakTearoffReferencePragma = 1 << 11;

  //FunctionNode
  //AsyncMarker
  //Sync,
  //SyncStar,
  //Async,
  //AsyncStar,

  //DynamicAccessKind
  //Dynamic
  //Never
  //Invalid
  //Unresolved

  //InstanceAccessKind
  //Instance
  //Object
  //Inapplicable
  //Nullable

  //InstanceInvocation
  //static const int FlagInvariant = 1 << 0;
  //static const int FlagBoundsSafe = 1 << 1;

  //FunctionAccessKind
  //Function
  //FunctionType
  //Inapplicable
  //Nullable

  //AsExpression
  //static const int FlagTypeError = 1 << 0;
  //static const int FlagCovarianceCheck = 1 << 1;
  //static const int FlagForDynamic = 1 << 2;
  //static const int FlagForNonNullableByDefault = 1 << 3;
  //static const int FlagUnchecked = 1 << 4;

  //YieldStatement
  //static const int FlagYieldStar = 1 << 0;

  //VariableDeclaration
  //static const int FlagFinal = 1 << 0; // Must match serialized bit positions.
  //static const int FlagConst = 1 << 1;
  //static const int FlagHasDeclaredInitializer = 1 << 2;
  //static const int FlagInitializingFormal = 1 << 3;
  //static const int FlagCovariantByClass = 1 << 4;
  //static const int FlagLate = 1 << 5;
  //static const int FlagRequired = 1 << 6;
  //static const int FlagCovariantByDeclaration = 1 << 7;
  //static const int FlagLowered = 1 << 8;
  //static const int FlagSynthesized = 1 << 9;
  //static const int FlagHoisted = 1 << 10;

  //NamedType
  //static const int FlagRequiredNamedType = 1 << 0;

  //bool get isCovariantByClass => flags & FlagCovariantByClass != 0;

  //Flags:
  static const int flagsBit = 0;
  static const int flagStatic = 1 << (flagsBit);
  static const int flagPrivate = 1 << (flagsBit + 1);
  static const int flagConst = 1 << (flagsBit + 2);
  static const int flagRedirectingConstructor = 1 << (flagsBit + 3);
  static const int flagAbstract = 1 << (flagsBit + 4);
  static const int flagFinal = 1 << (flagsBit + 5);
  static const int flagHasDefaultValue = 1 << (flagsBit + 6);
  static const int flagOptional = 1 << (flagsBit + 7);
  static const int flagNamed = 1 << (flagsBit + 8);
  static const int flagVoid = 1 << (flagsBit + 9);
  static const int flagDynamic = 1 << (flagsBit + 10);
  static const int flagNever = 1 << (flagsBit + 11);
  static const int flagClassType = 1 << (flagsBit + 12);
  static const int flagVoidReturnType = 1 << (flagsBit + 13);
  static const int flagDynamicReturnType = 1 << (flagsBit + 14);
  static const int flagNeverReturnType = 1 << (flagsBit + 15);
  static const int flagClassReturnType = 1 << (flagsBit + 16);
  static const int flagEnum = 1 << (flagsBit + 17);
  static const int flagTopLevel = 1 << (flagsBit + 18);
  static const int flagGenericType = 1 << (flagsBit + 19);
  static const int flagGenericReturnType = 1 << (flagsBit + 20);
  static const int flagNullable = 1 << (flagsBit + 21);
  static const int flagNonNullable = 1 << (flagsBit + 22);

  static const int flagGetter = 1 << (flagsBit + 23);
  static const int flagSetter = 1 << (flagsBit + 24);
  static const int flagAsync = 1 << (flagsBit + 25);
  static const int flagHasArgs = 1 << (flagsBit + 26);
  static const int flagExternal = 1 << (flagsBit + 27);
  static const int flagAnonymousMixin = 1 << (flagsBit + 28);
  static const int flagMixinDeclaration = 1 << (flagsBit + 29);

  static const int external = 134217728;

  static int generateFlags({
    bool isStatic = false,
    bool isPrivate = false,
    bool isSynthetic = false,
    bool isConst = false,
    bool isRedirectingConstructor = false,
    bool isAbstract = false,
    bool isFinal = false,
    bool hasDefaultValue = false,
    bool isOptional = false,
    bool isNamed = false,
    bool isVoid = false,
    bool isDynamic = false,
    bool isNever = false,
    bool isClassType = false,
    bool isVoidReturnType = false,
    bool isDynamicReturnType = false,
    bool isNeverReturnType = false,
    bool isClassReturnType = false,
    bool isEnum = false,
    bool isTopLevel = false,
    bool isGenericType = false,
    bool isGenericReturnType = false,
    bool isNullable = false,
    bool isNonNullable = false,
    bool isGetter = false,
    bool isSetter = false,
    bool isAsync = false,
    bool hasArgs = false,
    bool isExternal = false,
    bool isAnonymousMixin = false,
    bool isMixinDeclaration = false,
  }) {
    int flags = 0;

    if (isStatic) flags |= flagStatic;
    if (isPrivate) flags |= flagPrivate;
    //if (isSynthetic) flags |= flagSynthetic;
    if (isConst) flags |= flagConst;
    if (isRedirectingConstructor) flags |= flagRedirectingConstructor;
    if (isAbstract) flags |= flagAbstract;
    if (isFinal) flags |= flagFinal;
    if (hasDefaultValue) flags |= flagHasDefaultValue;
    if (isOptional) flags |= flagOptional;
    if (isNamed) flags |= flagNamed;
    if (isVoid) flags |= flagVoid;
    if (isDynamic) flags |= flagDynamic;
    if (isNever) flags |= flagNever;
    if (isClassType) flags |= flagClassType;
    if (isVoidReturnType) flags |= flagVoidReturnType;
    if (isDynamicReturnType) flags |= flagDynamicReturnType;
    if (isNeverReturnType) flags |= flagNeverReturnType;
    if (isClassReturnType) flags |= flagClassReturnType;
    if (isEnum) flags |= flagEnum;
    if (isTopLevel) flags |= flagTopLevel;
    if (isGenericType) flags |= flagGenericType;
    if (isGenericReturnType) flags |= flagGenericReturnType;
    if (isNullable) flags |= flagNullable;
    if (isNonNullable) flags |= flagNonNullable;

    if (isGetter) flags |= flagGetter;
    if (isSetter) flags |= flagSetter;
    if (isAsync) flags |= flagAsync;
    if (hasArgs) flags |= flagHasArgs;

    if (isExternal) flags |= flagExternal;
    if (isAnonymousMixin) flags |= flagAnonymousMixin;
    if (isMixinDeclaration) flags |= flagMixinDeclaration;

    return flags;
  }

  static bool isMixinDeclaration(int flags) {
    return (flags & flagMixinDeclaration != 0);
  }

  static bool isAnonymousMixin(int flags) {
    return (flags & flagAnonymousMixin != 0);
  }

  static bool isExternal(int flags) {
    return (flags & flagExternal != 0);
  }

  static bool isGetter(int flags) {
    return (flags & flagGetter != 0);
  }

  static bool isSetter(int flags) {
    return (flags & flagSetter != 0);
  }

  static bool isAsync(int flags) {
    return (flags & flagAsync != 0);
  }

  static bool hasArgs(int flags) {
    return (flags & flagHasArgs != 0);
  }

  static int getKind(int flags) {
    return flags & ((1 << flagsBit) - 1);
  }

  static bool isStatic(int flags) {
    return (flags & flagStatic != 0);
  }

  static bool isPrivate(int flags) {
    return (flags & flagPrivate != 0);
  }

  // static bool isSynthetic(int flags) {
  //   return (flags & flagSynthetic != 0);
  // }

  static bool isConst(int flags) {
    return (flags & flagConst != 0);
  }

  static bool isRedirectingConstructor(int flags) {
    return (flags & flagRedirectingConstructor != 0);
  }

  static bool isAbstract(int flags) {
    return (flags & flagAbstract != 0);
  }

  static bool isFinal(int flags) {
    return (flags & flagFinal != 0);
  }

  static bool hasDefaultValue(int flags) {
    return (flags & flagHasDefaultValue != 0);
  }

  static bool isOptional(int flags) {
    return (flags & flagOptional != 0);
  }

  static bool isNamed(int flags) {
    return (flags & flagNamed != 0);
  }

  static bool isVoid(int flags) {
    return (flags & flagVoid != 0);
  }

  static bool isDynamic(int flags) {
    return (flags & flagDynamic != 0);
  }

  static bool isNever(int flags) {
    return (flags & flagNever != 0);
  }

  static bool isClassType(int flags) {
    return (flags & flagClassType != 0);
  }

  static bool isVoidReturnType(int flags) {
    return (flags & flagVoidReturnType != 0);
  }

  static bool isDynamicReturnType(int flags) {
    return (flags & flagDynamicReturnType != 0);
  }

  static bool isNeverReturnType(int flags) {
    return (flags & flagNeverReturnType != 0);
  }

  static bool isClassReturnType(int flags) {
    return (flags & flagClassReturnType != 0);
  }

  static bool isEnum(int flags) {
    return (flags & flagEnum != 0);
  }

  static bool isTopLevel(int flags) {
    return (flags & flagTopLevel != 0);
  }

  static bool isGenericType(int flags) {
    return (flags & flagGenericType != 0);
  }

  static bool isGenericReturnType(int flags) {
    return (flags & flagGenericReturnType != 0);
  }

  static bool isNullable(int flags) {
    return (flags & flagNullable != 0);
  }

  static bool isNonNullable(int flags) {
    return (flags & flagNonNullable != 0);
  }
}
