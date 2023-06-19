typedef BridgeSetter = void Function(Object target, Object? value);
typedef BridgeGetter = Object? Function<T>(T object);
typedef BridgeStaticGetter = void Function();
typedef BridgeStaticMethod = void Function(Object target, Object? value);
typedef BridgeClassMethod = void Function(Object target, Object? value);
typedef BridgeConstructorMethod = Object Function(
    List p, Map<String, dynamic> n);

class LibraryBridge {
  final Map<String, Function> getters;
  final Map<String, Function> setters;
  final Map<String, ClassBridge> classes;

  LibraryBridge(
      {required this.getters, required this.setters, required this.classes});
}

class ClassBridge {
  final Map<String, Function> constructors;
  final Map<String, Function> getters;
  final Map<String, Function> setters;
  ClassBridge(
      {required this.constructors,
      required this.getters,
      required this.setters});
}
