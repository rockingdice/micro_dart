import 'package:micro_dart_runtime/runtime/engine.dart';

class Types {
  static const TypeRef dynamicType = TypeRef("", "dynamic", false);
  static const TypeRef invalidType = TypeRef("", "invalid", false);
  static const TypeRef voidType = TypeRef("", "void", false);
  static const TypeRef neverType = TypeRef("", "never", false);
  static const TypeRef nullType = TypeRef("", "null", false);
}

class TypeRef {
  final String libraryName;
  final String className;

  final bool isExternal;
  final bool isAnonymousMixin;
  final bool isMixinDeclaration;
  final String? superTypeKey;

  final List<String> implementTypes;
  final List<String> methods;
  final String? mixinTypeKey;

  String get key {
    return "$libraryName@$className";
  }

  const TypeRef(this.libraryName, this.className, this.isExternal,
      {this.isAnonymousMixin = false,
      this.isMixinDeclaration = false,
      this.superTypeKey,
      this.implementTypes = const [],
      this.methods = const [],
      this.mixinTypeKey});

  bool same(TypeRef typeRef) {
    return typeRef.key == key;
  }

  bool isType(TypeRef typeRef, MicroDartEngine engine) {
    if (same(typeRef)) {
      return true;
    }
    if (superTypeKey != null && engine.types.containsKey(superTypeKey)) {
      return engine.types[superTypeKey!]?.isType(typeRef, engine) ?? false;
    }
    return false;
  }

  bool hasParam(String name, MicroDartEngine engine, {bool isSetter = false}) {
    //print("hasParam $methods");
    if (methods.contains(getNameKey(name, isSetter: isSetter))) {
      return true;
    }
    var superType = engine.types[superTypeKey!];
    if (superType?.isExternal ?? true) {
      return false;
    }
    return superType?.hasParam(name, engine, isSetter: isSetter) ?? false;
  }

  String getNameKey(String name, {bool isSetter = false}) {
    var key = "$libraryName@$className@$name";
    if (isSetter) {
      key = "$key:set";
    }
    return key;
  }

  List toList() {
    return [
      libraryName,
      className,
      isExternal,
      isAnonymousMixin,
      isMixinDeclaration,
      superTypeKey,
      mixinTypeKey,
      implementTypes,
      methods
    ];
  }

  factory TypeRef.fromList(List list) {
    return TypeRef(list[0], list[1], list[2],
        superTypeKey: list[5],
        isAnonymousMixin: list[3],
        isMixinDeclaration: list[4],
        mixinTypeKey: list[6],
        implementTypes:
            (list[7] as List).map<String>((e) => e as String).toList(),
        methods: (list[8] as List).map<String>((e) => e as String).toList());
  }

  @override
  String toString() {
    return "TypeRef($className)";
  }
}
