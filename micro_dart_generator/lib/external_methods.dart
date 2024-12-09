import 'dart:convert';
import 'dart:io';

class ExternalMethods {
  final Map<String, dynamic> libraries;

  ExternalMethods(this.libraries);
  factory ExternalMethods.fromFile(File file) {
    var jsonMap = jsonDecode(file.readAsStringSync());
    return ExternalMethods.fromJsonMap(jsonMap);
  }

  factory ExternalMethods.fromString(String text) {
    return ExternalMethods.fromJsonMap(jsonDecode(text));
  }

  factory ExternalMethods.fromJsonMap(Map<String, dynamic> libraries) {
    return ExternalMethods(libraries);
  }

  bool hasStaticMethod(String? library, String name, bool isSetter) {
    if (!libraries.containsKey(library)) {
      return false;
    }
    if (library == "package:flutter/src/widgets/framework.dart") {
      print(
          "hasStaticMethod 1 $library $name ${libraries[library]?["setters"]} ${libraries[library]?["setters"]?[name]}");
    }
    if (isSetter) {
      return libraries[library]?["setters"]?.contains(name) ?? false;
    }
    return libraries[library]?["getters"]?.contains(name) ?? false;
  }

  bool hasMethod(
      String? library, String className, String name, bool isSetter) {
    if (!libraries.containsKey(library)) {
      return false;
    }
    if (library == "package:flutter/src/widgets/framework.dart") {
      print("hasMethod 1 $library $className $name");
    }
    if (isSetter) {
      return libraries[library]?["classes"]?[className]?["setters"]
              ?.contains(name) ??
          false;
    }
    return libraries[library]?["classes"]?[className]?["getters"]
            ?.contains(name) ??
        false;
  }

  bool hasClass(String? library, String className) {
    if (!libraries.containsKey(library)) {
      return false;
    }
    if (library == "package:flutter/src/widgets/framework.dart") {
      print(
          "hasClass 1 $library $className ${libraries[library]?["classes"]?[className]}");
    }

    return libraries[library]?["classes"]?.containsKey(className) ?? false;
  }

  bool hasLibrary(String library) {
    if (libraries.containsKey(library)) {
      return true;
    }
    return false;
  }
}
