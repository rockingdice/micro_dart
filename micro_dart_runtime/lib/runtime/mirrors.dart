abstract class Mirror {
  String get name;
}

class ClassMirror implements Mirror {
  @override
  final String name;

  final Map<String, Function> getters;
  final Map<String, Function> setters; 

  const ClassMirror(this.name, this.getters, this.setters);
}

class LibraryMirror implements Mirror {
  @override
  final String name;
  
  final Map<String, Function> getters;
  final Map<String, Function> setters;
  final Map<String, Function> invocations;

  // final Map<String, ClassMirror> classes;
  const LibraryMirror(this.name, this.getters, this.setters, this.invocations);
}
