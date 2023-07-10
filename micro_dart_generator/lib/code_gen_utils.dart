import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

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

String dartTypeToClassName(DartType type, {bool toFunctionPointer = true}) {
  if (type is InterfaceType) {
    // if (type.element.name == "Function") {
    //   if (toFunctionPointer) {
    //     var name = "m.FunctionPointer";
    //     if (type.nullabilitySuffix == NullabilitySuffix.question) {
    //       name = "$name?";
    //     }
    //     return name;
    //   }
    // }
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
