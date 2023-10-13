abstract class Mirror {
  String get name;
  Map<String, Function> get getters;
  Map<String, Function> get setters;
}

class ClassMirror implements Mirror {
  @override
  final String name;
  @override
  final Map<String, Function> getters;
  @override
  final Map<String, Function> setters;

  const ClassMirror(this.name, this.getters, this.setters);
}

class LibraryMirror implements Mirror {
  @override
  final String name;
  @override
  final Map<String, Function> getters;
  @override
  final Map<String, Function> setters;

  final Map<String, ClassMirror> classes;
  const LibraryMirror(this.name, this.getters, this.setters, this.classes);
}
