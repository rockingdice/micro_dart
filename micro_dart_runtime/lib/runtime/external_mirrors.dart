import 'mirrors.dart';
  
class ExternalMirror {
  static late Map<String, ClassMirror> classMirrors;
  static late Map<Type, String> refTypeMirrors;
  static late Map<String, Function> globalGetterMirrors;
  static late Map<String, Function> globalSetterMirrors;

  static Function? findStaticGetter(String globalName) {
    return globalGetterMirrors[globalName];
  }

  static Function? findStaticSetter(String globalName) {
    return globalSetterMirrors[globalName];
  }

  static Function? findClassMemberGetter(String className, String name) {
    var clazz = findClass(className);
    assert(clazz != null, "cannot find external class: $className");
    return clazz!.getters[name];
  }

  static Function? findClassMemberSetter(String className, String name) {
    var clazz = findClass(className);
    assert(clazz != null, "cannot find external class: $className");
    return clazz!.setters[name];
  }
 
  static ClassMirror? findClass(String className) {
    return classMirrors[className];
  }

  static ClassMirror? findClassByType(Type type) {
    var className = refTypeMirrors[type];
    if (className != null) {
      return classMirrors[className];
    }
    return null;
  }

  static String? findClassName(Type type) {
    return refTypeMirrors[type];
  }
}
