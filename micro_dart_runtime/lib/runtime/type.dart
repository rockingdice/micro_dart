import 'package:micro_dart_runtime/flags.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class CTypes {}

class CallRef {
  final String library;
  final String className;
  final String name;
  final int flags;
  bool get isSetter => Flags.isSetter(flags);
  bool get isStatic => Flags.isStatic(flags);

  String nameWithTypes(List<String> types) {
    if (types.isEmpty) {
      return name;
    }
    var typeStr = types.join(",");
    if (typeStr.isEmpty) {
      return name;
    }
    return "$name<$typeStr>";
  }

  String classNameWithTypes(List<String> types) {
    if (types.isEmpty) {
      return className;
    }
    var typeStr = types.join(",");
    if (typeStr.isEmpty) {
      return name;
    }
    return "$className<$typeStr>";
  }

  CallRef._(this.library, this.className, this.name, this.flags);

  factory CallRef(String library, String className, String name, bool isSetter,
      bool isStatic) {
    return CallRef._(library, className, name,
        Flags.generateFlags(isSetter: isSetter, isStatic: isStatic));
  }

  String get callName {
    if (className.isEmpty) {
      return name;
    }
    return "$className.$name";
  }

  String get fullName {
    return "$library@$className@$name";
  }

  CallRef copyOfIsSetter(bool newIsSetter) {
    return CallRef(library, className, name, newIsSetter, isStatic);
  }

  CallRef copyOfIsStatic(bool newIsStatic) {
    return CallRef(library, className, name, isSetter, newIsStatic);
  }

  factory CallRef.name(String name) {
    return CallRef._(
        "", "", name, Flags.generateFlags(isSetter: false, isStatic: false));
  }

  factory CallRef.fromList(List list, List<String> constants) {
    return CallRef._(
        constants[list[0]], constants[list[1]], constants[list[2]], list[3]);
  }

  List toList(ConstantPool pool) {
    return [
      pool.addOrGet(library),
      pool.addOrGet(className),
      pool.addOrGet(name),
      flags
    ];
  }

  factory CallRef.fromEngine(MicroDartEngine engine) {
    return CallRef._(
        engine.constants[engine.readInt32()],
        engine.constants[engine.readInt32()],
        engine.constants[engine.readInt32()],
        engine.readUInt32());
  }

  static const int byteLen = Ops.lenI32 * 3 + Ops.lenI8 * 2;

  List<int> bytes(ConstantPool pool) {
    return [
      ...Ops.i32b(pool.addOrGet(library)),
      ...Ops.i32b(pool.addOrGet(className)),
      ...Ops.i32b(pool.addOrGet(name)),
      ...Ops.i32b(flags)
    ];
  }

  @override
  String toString() {
    return "CallRef($library,$className,$name,$isSetter,$isStatic)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is CallRef) {
      return hashCode == other.hashCode;
    }
    return false;
  }

  @override
  int get hashCode => Object.hash(library, className, name, isSetter, isStatic);
}

class ClassRef {
  final String library;
  final String className;

  const ClassRef(this.library, this.className);

  String get callName {
    return "$library@$className";
  }

  factory ClassRef.fromList(List list, List<String> constants) {
    return ClassRef(constants[list[0]], constants[list[1]]);
  }

  List<int> toList(ConstantPool pool) {
    return [pool.addOrGet(library), pool.addOrGet(className)];
  }

  List<int> bytes(ConstantPool pool) {
    return [
      ...Ops.i32b(pool.addOrGet(library)),
      ...Ops.i32b(pool.addOrGet(className)),
    ];
  }

  factory ClassRef.fromEngine(MicroDartEngine engine) {
    return ClassRef(
      engine.constants[engine.readInt32()],
      engine.constants[engine.readInt32()],
    );
  }

  static const int byteLen = Ops.lenI32 * 2;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is ClassRef) {
      return hashCode == other.hashCode;
    }
    return false;
  }

  @override
  String toString() {
    return "ClassRef($library@$className)";
  }

  @override
  int get hashCode => Object.hash(library, className);
}

String getMethodName(String name, {bool isSetter = false}) {
  if (isSetter) {
    name = "$name:set";
  }
  return name;
}

class CType {
  final ClassRef ref;
  final ClassRef? superType;
  final ClassRef? mixinType;
  final List<ClassRef> implementTypes;
  final List<String> getters;
  final List<String> setters;
  final List<String> constructors;

  final int flags;
  bool get isExternal => Flags.isExternal(flags);
  bool get isAnonymousMixin => Flags.isAnonymousMixin(flags);
  bool get isMixinDeclaration => Flags.isMixinDeclaration(flags);

  const CType._(this.ref,
      {this.superType,
      this.mixinType,
      this.implementTypes = const [],
      this.getters = const [],
      this.setters = const [],
      this.constructors = const [],
      this.flags = 0});

  const CType.external(this.ref,
      {this.superType,
      this.mixinType,
      this.implementTypes = const [],
      this.getters = const [],
      this.setters = const [],
      this.constructors = const [],
      this.flags = Flags.external});

  factory CType(ClassRef ref,
      {ClassRef? superType,
      ClassRef? mixinType,
      List<ClassRef> implementTypes = const [],
      List<String> getters = const [],
      List<String> setters = const [],
      List<String> constructors = const [],
      bool isExternal = false,
      bool isAnonymousMixin = false,
      bool isMixinDeclaration = false}) {
    return CType._(ref,
        superType: superType,
        mixinType: mixinType,
        implementTypes: implementTypes,
        getters: getters,
        setters: setters,
        constructors: constructors,
        flags: Flags.generateFlags(
            isExternal: isExternal,
            isAnonymousMixin: isAnonymousMixin,
            isMixinDeclaration: isMixinDeclaration));
  }

  CType copyWithGetters(List<String> newGetters) {
    return CType._(ref,
        superType: superType,
        mixinType: mixinType,
        implementTypes: implementTypes,
        getters: getters,
        setters: newGetters,
        constructors: constructors,
        flags: flags);
  }

  CType copyWithSetters(List<String> newSetters) {
    return CType._(ref,
        superType: superType,
        mixinType: mixinType,
        implementTypes: implementTypes,
        getters: getters,
        setters: newSetters,
        constructors: constructors,
        flags: flags);
  }

  CType copyWithConstructors(List<String> newConstructors) {
    return CType._(ref,
        superType: superType,
        mixinType: mixinType,
        implementTypes: implementTypes,
        getters: getters,
        setters: setters,
        constructors: newConstructors,
        flags: flags);
  }

  bool isType(CType cType, MicroDartEngine engine) {
    if (cType == this) {
      return true;
    }
    if (superType != null && engine.types.containsKey(superType)) {
      return engine.types[superType]?.isType(cType, engine) ?? false;
    }
    return false;
  }

  bool hasParam(String name, MicroDartEngine engine) {
    if (getters.contains(name)) {
      return true;
    }
    var superCType = engine.types[superType!];
    if (superCType?.isExternal ?? true) {
      return false;
    }
    return superCType?.hasParam(name, engine) ?? false;
  }

  List toList(ConstantPool pool) {
    return [
      ref.toList(pool),
      superType?.toList(pool),
      mixinType?.toList(pool),
      implementTypes.map<List>((e) => e.toList(pool)).toList(),
      getters.map<int>((e) => pool.addOrGet(e)).toList(),
      setters.map<int>((e) => pool.addOrGet(e)).toList(),
      constructors.map<int>((e) => pool.addOrGet(e)).toList(),
      flags
    ];
  }

  factory CType.fromList(List list, List<String> constants) {
    return CType._(
      ClassRef.fromList(list[0], constants),
      superType: list[1] == null ? null : ClassRef.fromList(list[1], constants),
      mixinType: list[2] == null ? null : ClassRef.fromList(list[2], constants),
      implementTypes: (list[3] as List)
          .map<ClassRef>((e) => ClassRef.fromList(e, constants))
          .toList(),
      getters: (list[4] as List).map<String>((e) => constants[e]).toList(),
      setters: (list[5] as List).map<String>((e) => constants[e]).toList(),
      constructors: (list[6] as List).map<String>((e) => constants[e]).toList(),
      flags: list[7],
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is CType) {
      return hashCode == other.hashCode;
    }
    return false;
  }

  @override
  String toString() {
    return "CType($ref,$superType,$mixinType)";
  }

  CallRef getCallRef(String name, bool newIsSetter, bool newIsStatic) {
    return CallRef(ref.library, ref.className, name, newIsSetter, newIsStatic);
  }

  @override
  int get hashCode => Object.hash(ref, superType, mixinType, implementTypes,
      getters, setters, constructors, flags);
}
