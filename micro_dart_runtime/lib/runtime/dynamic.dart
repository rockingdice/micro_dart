class DynamicValue {
  final Object target;
  final String libraryName;
  final String className;

  const DynamicValue(this.target, this.libraryName, this.className);

  String getKey(String name, {bool isStatic = false, bool isSetter = false}) {
    var key = "$libraryName@$className@$name";
    if (isStatic) {
      key = "$key:static";
    }
    if (isSetter) {
      key = "$key:set";
    }
    return key;
  }
}
