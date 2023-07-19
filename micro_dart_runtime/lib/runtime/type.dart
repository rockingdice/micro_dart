import 'package:micro_dart_runtime/micro_dart_runtime.dart';

class CTypes {}

class CallRef {
  final String library;
  final String className;
  final String name;
  final bool isSetter;
  final bool isStatic;

  CallRef(
      this.library, this.className, this.name, this.isSetter, this.isStatic);

  String get callName => "$library@$className@$name";

  CallRef copyOfIsSetter(bool isSetter) {
    return CallRef(library, className, name, isSetter, isStatic);
  }

  CallRef copyOfIsStatic(bool isStatic) {
    return CallRef(library, className, name, isSetter, isStatic);
  }

  factory CallRef.name(String name) {
    return CallRef(
      "",
      "",
      name,
      false,
      false,
    );
  }

  factory CallRef.fromList(List list, List<String> constants) {
    return CallRef(
      constants[list[0]],
      constants[list[1]],
      constants[list[2]],
      list[3] == 1 ? true : false,
      list[4] == 1 ? true : false,
    );
  }

  List toList(ConstantPool pool) {
    return [
      pool.addOrGet(library),
      pool.addOrGet(className),
      pool.addOrGet(name),
      isSetter ? 1 : 0,
      isStatic ? 1 : 0,
    ];
  }

  factory CallRef.fromEngine(MicroDartEngine engine) {
    return CallRef(
        engine.constants[engine.readInt32()],
        engine.constants[engine.readInt32()],
        engine.constants[engine.readInt32()],
        engine.readUint8() == 1 ? true : false,
        engine.readUint8() == 1 ? true : false);
  }

  static const int byteLen = Ops.lenI32 * 3 + Ops.lenI8 * 2;

  List<int> bytes(ConstantPool pool) {
    return [
      ...Ops.i32b(pool.addOrGet(library)),
      ...Ops.i32b(pool.addOrGet(className)),
      ...Ops.i32b(pool.addOrGet(name)),
      ...Ops.u8b(isSetter ? 1 : 0),
      ...Ops.u8b(isStatic ? 1 : 0),
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
  int get hashCode => Object.hash(library, className, name);
}

class ClassRef {
  final String library;
  final String className;

  const ClassRef(this.library, this.className);

  factory ClassRef.fromList(List list, List<String> constatns) {
    return ClassRef(constatns[list[0]], constatns[list[1]]);
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
    return "$library@$className";
  }

  @override
  int get hashCode => Object.hash(library, className);
}

String getMetchodName(String name, {bool isSetter = false}) {
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
  final bool isExternal;
  final bool isAnonymousMixin;
  final bool isMixinDeclaration;

  const CType(this.ref,
      {this.superType,
      this.mixinType,
      this.implementTypes = const [],
      this.getters = const [],
      this.setters = const [],
      this.constructors = const [],
      this.isExternal = false,
      this.isAnonymousMixin = false,
      this.isMixinDeclaration = false});

  CType copyWithGetters(List<String> getters) {
    return CType(ref,
        superType: superType,
        mixinType: mixinType,
        implementTypes: implementTypes,
        getters: getters,
        setters: setters,
        constructors: constructors,
        isExternal: isExternal,
        isAnonymousMixin: isAnonymousMixin,
        isMixinDeclaration: isMixinDeclaration);
  }

  CType copyWithSetters(List<String> setters) {
    return CType(ref,
        superType: superType,
        mixinType: mixinType,
        implementTypes: implementTypes,
        getters: getters,
        setters: setters,
        constructors: constructors,
        isExternal: isExternal,
        isAnonymousMixin: isAnonymousMixin,
        isMixinDeclaration: isMixinDeclaration);
  }

  CType copyWithConstructors(List<String> constructors) {
    return CType(ref,
        superType: superType,
        mixinType: mixinType,
        implementTypes: implementTypes,
        getters: getters,
        setters: setters,
        constructors: constructors,
        isExternal: isExternal,
        isAnonymousMixin: isAnonymousMixin,
        isMixinDeclaration: isMixinDeclaration);
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
      isExternal,
      isAnonymousMixin,
      isMixinDeclaration,
    ];
  }

  factory CType.fromList(List list, List<String> constants) {
    return CType(
      ClassRef.fromList(list[0], constants),
      superType: list[1] == null ? null : ClassRef.fromList(list[1], constants),
      mixinType: list[2] == null ? null : ClassRef.fromList(list[2], constants),
      implementTypes: (list[3] as List)
          .map<ClassRef>((e) => ClassRef.fromList(e, constants))
          .toList(),
      getters: (list[4] as List).map<String>((e) => constants[e]).toList(),
      setters: (list[5] as List).map<String>((e) => constants[e]).toList(),
      constructors: (list[6] as List).map<String>((e) => constants[e]).toList(),
      isExternal: list[7],
      isAnonymousMixin: list[8],
      isMixinDeclaration: list[9],
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

  CallRef getCallRef(String name, bool isSetter, bool isStatic) {
    return CallRef(ref.library, ref.className, name, isSetter, isStatic);
  }

  @override
  int get hashCode => Object.hash(
      ref,
      superType,
      mixinType,
      implementTypes,
      getters,
      setters,
      constructors,
      isExternal,
      isAnonymousMixin,
      isMixinDeclaration);
}
