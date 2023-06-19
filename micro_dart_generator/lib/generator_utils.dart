import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

//收集FunctionType中的泛型参数
void collectTypeParameterElementForFunctionType(
    Set<TypeParameterElement> list, FunctionType functionType) {
  //先收集返回值的泛型
  var returnType = functionType.returnType;
  if (returnType is FunctionType) {
    collectTypeParameterElement(list, returnType);
  }

  for (var element in functionType.parameters) {
    collectTypeParameterElement(list, element.type);
  }
}

void collectTypeParameterElementForInterfaceType(
    Set<TypeParameterElement> list, InterfaceType interfaceType) {
  for (var element in interfaceType.typeArguments) {
    collectTypeParameterElement(list, element);
  }
}

//收集FunctionType中的泛型参数
void collectTypeParameterElement(
    Set<TypeParameterElement> list, DartType dartType) {
  if (dartType is FunctionType) {
    collectTypeParameterElementForFunctionType(list, dartType);
  } else if (dartType is InterfaceType) {
    collectTypeParameterElementForInterfaceType(list, dartType);
  } else if (dartType is TypeParameterType) {
    list.add(dartType.element);
  }
}

//收集FunctionType中的泛型参数
void collectTypeParameterElementClassElement(
    Set<TypeParameterElement> list, ClassElement element) {
  for (var element in element.typeParameters) {
    list.add(element);
  }
}
