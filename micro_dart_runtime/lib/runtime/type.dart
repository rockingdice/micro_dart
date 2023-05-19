import 'package:micro_dart_runtime/runtime/runtime.dart';

class Types {
  static final TypeRef dynamicType = TypeRef("", "dynamic", false);
  static final TypeRef invalidType = TypeRef("", "invalid", false);
  static final TypeRef voidType = TypeRef("", "void", false);
  static final TypeRef neverType = TypeRef("", "never", false);
  static final TypeRef nullType = TypeRef("", "null", false);

  static final TypeRef objectType = TypeRef("dart:core", "Object", true);

  static final TypeRef listType = TypeRef("dart:core", "List", true);

  static final TypeRef numType =
      TypeRef("dart:core", "num", true, superTypeKey: "dart:core@Object");
  static final TypeRef intType =
      TypeRef("dart:core", "int", true, superTypeKey: "dart:core@num");

  final Map<String, TypeRef> types;

  const Types(this.types);

  static final Map<String, TypeRef> internalTypes = {
    objectType.key: objectType,
    numType.key: numType,
    intType.key: intType,
  };
}

class TypeRef {
  final String libraryName;
  final String className;

  final bool isExternal;
  final String? superTypeKey;

  final List<String> implementTypes;

  String get key {
    return "$libraryName@$className";
  }

  const TypeRef(this.libraryName, this.className, this.isExternal,
      {this.superTypeKey, this.implementTypes = const []});

  bool same(TypeRef typeRef) {
    return typeRef.key == key;
  }

  bool isType(TypeRef typeRef, MicroRuntime runtime) {
    if (same(typeRef)) {
      return true;
    }
    if (superTypeKey != null &&
        runtime.engine.types.containsKey(superTypeKey)) {
      return runtime.engine.types[superTypeKey!]?.isType(typeRef, runtime) ??
          false;
    }
    return false;
  }

  String getNameKey(String name, {bool isSetter = false}) {
    var key = "$libraryName@$className@$name";
    if (isSetter) {
      key = "$key:set";
    }
    return key;
  }

  List toList() {
    return [libraryName, className, isExternal, superTypeKey];
  }

  factory TypeRef.fromList(List list) {
    return TypeRef(list[0], list[1], list[2], superTypeKey: list[3]);
  }

  @override
  String toString() {
    return "TypeRef($libraryName,$className,$isExternal,$superTypeKey)";
  }
}
