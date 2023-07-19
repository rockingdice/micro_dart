import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:micro_dart_generator/extenation.dart';

import 'package:code_builder/code_builder.dart' as cb;
import 'overwrite_strategy.dart';

bool hasFunctionTypeParams(FunctionType functionType) {
  for (int i = 0; i < functionType.parameters.length; i++) {
    var parameter = functionType.parameters[i];

    if (parameter.type is FunctionType) {
      return true;
    }
  }
  return false;
}

bool isFunctionType(DartType type) {
  // if (type is InterfaceType) {
  //   if (type.element.name == "Function") {
  //     return true;
  //   }
  // } else
  if (type is FunctionType) {
    return true;
  }
  return false;
}

List<TypeParameterElement> getTypeParameterElement(
    ExecutableElement functionElement) {
  if (functionElement is ConstructorElement) {
    return functionElement.enclosingElement.typeParameters;
  } else if (functionElement is FunctionElement) {
    return functionElement.typeParameters;
  } else if (functionElement is MethodElement) {
    List<TypeParameterElement> typeParams = [];
    var classElement = functionElement.enclosingElement as ClassElement;
    typeParams.addAll(classElement.typeParameters);
    for (var p in functionElement.typeParameters) {
      var ite = typeParams.where((element) => element.name == p.name);
      if (ite.isEmpty) {
        typeParams.add(p);
      }
    }
    return typeParams;
  }
  return [];
}

List<TypeParameterElement> getTypeParameterElementWithoutDynamic(
    ExecutableElement functionElement) {
  List<TypeParameterElement> list = [];
  if (functionElement is ConstructorElement) {
    for (var element in functionElement.enclosingElement.typeParameters) {
      if (element.bound != null) {
        list.add(element);
      }
    }
  } else if (functionElement is FunctionElement) {
    for (var element in functionElement.typeParameters) {
      if (element.bound != null) {
        list.add(element);
      }
    }
  } else if (functionElement is MethodElement) {
    var classElement = functionElement.enclosingElement as ClassElement;
    for (var element in classElement.typeParameters) {
      if (element.bound != null) {
        list.add(element);
      }
    }
    for (var p in functionElement.typeParameters) {
      var ite = list.where((element) => element.name == p.name);
      if (ite.isEmpty && p.bound != null) {
        list.add(p);
      }
    }
  }
  return list;
}

String tramsformParameterName(ExecutableElement functionElement,
    ParameterElement element, OverwriteStrategy overwriteStrategy) {
  var type = element.type;

  if (isFunctionType(type)) {
    var name = "${element.name}Proxy";
    if (element.hasDefaultValue) {
      name =
          "${element.name} == null ? ${getDefaultValueCode(overwriteStrategy, element)} : $name";
    } else if (element.type.nullabilitySuffix == NullabilitySuffix.question &&
        isFunctionType(element.type)) {
      name = "${element.name} == null ? null : $name";
    }
    return name;
  }

  if (type is InterfaceType) {
    var defaultValue = element.hasDefaultValue
        ? getDefaultValueCode(overwriteStrategy, element)
        : "null";
    var valueName = element.name;
    if (type.isDartCoreList) {
      valueName = "List.from(${element.name})";
    } else if (type.isDartCoreMap) {
      valueName = "Map.from(${element.name})";
    } else if (type.isDartCoreSet) {
      valueName = "Set.from(${element.name})";
    } else if (type.isDartCoreIterable) {
      valueName = "Iterable.castFrom(${element.name})";
    }
    if (element.isOptionalPositional) {
      return "$valueName!";
    }
    if (type.nullabilitySuffix == NullabilitySuffix.question ||
        element.hasDefaultValue) {
      if (valueName == element.name) {
        if (defaultValue == "null") {
          return element.name;
        }
        return "${element.name} ?? $defaultValue";
      }
      return "${element.name} == null ? $defaultValue : $valueName";
    }

    return valueName;
  }
  if (element.isOptionalPositional) {
    return "${element.name}!";
  }
  return element.name;
}

String? getDefaultValueCode(
    OverwriteStrategy overwriteStrategy, ParameterElement element) {
  var parentElement = element.enclosingElement;
  String? key;
  if (parentElement is ConstructorElement ||
      parentElement is MethodElement ||
      parentElement is FunctionElement) {
    key = parentElement?.key;
  }

  if (key != null && element.defaultValueCode != null) {
    Map? map = overwriteStrategy.defaultValueCodeOverwrites[key];
    if (map != null && map.containsKey(element.defaultValueCode)) {
      return map[element.defaultValueCode];
    }
  }

  return element.defaultValueCode;
}

bool parameterElementIsOptional(ParameterElement element, bool isProxy) {
  if (element.isOptional) {
    return true;
  } else if (isProxy && element.isNamed) {
    return true;
  }
  return false;
}

bool isGenericClassType(
    InterfaceType type, List<TypeParameterElement> typeParameters) {
  for (var element in type.typeArguments) {
    if (element is TypeParameterType) {
      if (!typeParameters.any((e) => e.name == element.element.name)) {
        return true;
      }
    }
  }
  return false;
}

String dartTypeTargetClassName(
    DartType type, List<TypeParameterElement> typeParameters) {
  if (type is InterfaceType) {
    if (isGenericClassType(type, typeParameters)) {
      return type.element.name;
    }

    return type.getDisplayString(withNullability: true);
  } else if (type is VoidType) {
    return "void";
  } else if (type is DynamicType) {
    return "dynamic";
  } else if (type is FunctionType) {
    return type.getDisplayString(withNullability: true);
  } else if (type is TypeParameterType) {
    return "dynamic";
  } else if (type is NeverType) {
    return "Never";
  } else {
    throw Exception(
        "write dart type not support ${type.runtimeType.toString()}");
  }
}

String dartTypeToClassName3(DartType type, {bool toFunctionPointer = true}) {
  if (type is InterfaceType) {
    return type.getDisplayString(withNullability: true);
  } else if (type is VoidType) {
    return "void";
  } else if (type is DynamicType) {
    return "dynamic";
  } else if (type is FunctionType) {
    if (toFunctionPointer) {
      var name = "m.FunctionPointer";
      if (type.nullabilitySuffix == NullabilitySuffix.question) {
        name = "$name?";
      }
      return name;
    }
    return type.getDisplayString(withNullability: true);
  } else if (type is TypeParameterType) {
    return type.getDisplayString(withNullability: true);
  } else if (type is NeverType) {
    return "Never";
  } else {
    throw Exception(
        "write dart type not support ${type.runtimeType.toString()}");
  }
}

String dartTypeToClassName2(
    DartType type, List<TypeParameterElement> typeParameters,
    {bool toFunctionPointer = true}) {
  if (type is InterfaceType) {
    if (type.isDartCoreList) {
      var name = "List";
      if (type.nullabilitySuffix == NullabilitySuffix.question) {
        name = "$name?";
      }
      return name;
    } else if (type.isDartCoreMap) {
      var name = "Map";
      if (type.nullabilitySuffix == NullabilitySuffix.question) {
        name = "$name?";
      }
      return name;
    } else if (type.isDartCoreSet) {
      var name = "Set";
      if (type.nullabilitySuffix == NullabilitySuffix.question) {
        name = "$name?";
      }
      return name;
    } else if (type.isDartCoreIterable) {
      var name = "Iterable";
      if (type.nullabilitySuffix == NullabilitySuffix.question) {
        name = "$name?";
      }
      return name;
    }

    var name = type.element.name;
    if (isGenericClassType(type, typeParameters)) {
      name = type.element.name;
    } else {
      name = type.getDisplayString(withNullability: false);
    }

    if (type.nullabilitySuffix == NullabilitySuffix.question) {
      name = "$name?";
    }

    return name;
  } else if (type is VoidType) {
    return "void";
  } else if (type is DynamicType) {
    return "dynamic";
  } else if (type is FunctionType) {
    if (toFunctionPointer) {
      var name = "m.FunctionPointer";
      if (type.nullabilitySuffix == NullabilitySuffix.question) {
        name = "$name?";
      }
      return name;
    }
    return type.getDisplayString(withNullability: true);
  } else if (type is TypeParameterType) {
    return "dynamic";
  } else if (type is NeverType) {
    return "Never";
  } else {
    throw Exception(
        "write dart type not support ${type.runtimeType.toString()}");
  }
}

String dartTypeToProxyReturn(ParameterElement parameterElement, DartType type,
    List<TypeParameterElement> typeParameters) {
  if (type is InterfaceType) {
    var name = type.element.name;
    if (isGenericClassType(type, typeParameters)) {
      name = type.element.name;
    } else {
      name = type.getDisplayString(withNullability: false);
    }

    if (type.nullabilitySuffix == NullabilitySuffix.question) {
      name = "$name?";
    }

    return name;
  } else if (type is VoidType) {
    return "void";
  } else if (type is DynamicType) {
    return "dynamic";
  } else if (type is FunctionType) {
    return type.getDisplayString(withNullability: true);
  } else if (type is TypeParameterType) {
    var functionType = parameterElement.type as FunctionType;
    if (functionType.typeFormals
        .any((element) => element.name == type.element.name)) {
      return type.getDisplayString(withNullability: true);
    }
    return "dynamic";
  } else if (type is NeverType) {
    return "Never";
  } else {
    throw Exception(
        "write dart type not support ${type.runtimeType.toString()}");
  }
}
