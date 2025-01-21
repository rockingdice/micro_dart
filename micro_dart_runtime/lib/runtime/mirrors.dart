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

class MicroDartReflection {
  final Map<String, Function> globalGetterMirrors;
  final Map<String, Function> globalSetterMirrors;
  final Map<String, ClassMirror> classMirrors;
  final Map<Type, String> refTypeMirrors;

  const MicroDartReflection(this.globalGetterMirrors, this.globalSetterMirrors,
      this.classMirrors, this.refTypeMirrors);

  Function? findStaticGetter(String globalName) {
    return globalGetterMirrors[globalName];
  }

  Function? findStaticSetter(String globalName) {
    return globalSetterMirrors[globalName];
  }

  Function? findClassMemberGetter(String className, String name) {
    var clazz = findClass(className);
    assert(clazz != null, "cannot find external class: $className");
    return clazz!.getters[name];
  }

  Function? findClassMemberSetter(String className, String name) {
    var clazz = findClass(className);
    assert(clazz != null, "cannot find external class: $className");
    return clazz!.setters[name];
  }

  ClassMirror? findClass(String className) {
    return classMirrors[className];
  }

  ClassMirror? findClassByType(Type type) {
    var className = refTypeMirrors[type];
    if (className != null) {
      return classMirrors[className];
    }
    return null;
  }

  String? findClassName(Type type) {
    return refTypeMirrors[type];
  }
}
