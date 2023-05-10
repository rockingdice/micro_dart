class TypeRef {
  static TypeRef dynamicType = TypeRef("", "dynamic", false);
  static TypeRef invalidType = TypeRef("", "invalid", false);
  static TypeRef voidType = TypeRef("", "void", false);
  static TypeRef neverType = TypeRef("", "never", false);
  static TypeRef nullType = TypeRef("", "null", false);

  final String libraryName;
  final String className;

  final bool isExternal;
  int? superTypeIndex;

  TypeRef(this.libraryName, this.className, this.isExternal,
      {this.superTypeIndex});

  bool same(TypeRef typeRef) {
    return libraryName == typeRef.libraryName && className == typeRef.className;
  }

  String getKey(String name, {bool isSetter = false}) {
    var key = "$libraryName@$className@$name";
    if (isSetter) {
      key = "$key:set";
    }
    return key;
  }

  List toList() {
    return [libraryName, className, isExternal, superTypeIndex];
  }

  factory TypeRef.fromList(List list) {
    return TypeRef(list[0], list[1], list[2], superTypeIndex: list[3]);
  }

  @override
  String toString() {
    return "TypeRef($libraryName,$className,$isExternal,$superTypeIndex)";
  }
}
