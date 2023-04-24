import 'package:kernel/kernel.dart';

const String kAopAnnotationClassDeprecated = 'Deprecated';
const String kImportUriDeprecated = 'dart:core';

bool isDeprecatedTarget(String name, String? importUri) {
  if (name == kAopAnnotationClassDeprecated) {
    return true;
  }
  return false;
}

bool isDeprecated(Annotatable member) {
  //注入的方法强制是静态方法
  for (Expression annotation in member.annotations) {
    //Release mode
    if (annotation is ConstantExpression) {
      final ConstantExpression constantExpression = annotation;
      final Constant constant = constantExpression.constant;
      if (constant is InstanceConstant) {
        final InstanceConstant instanceConstant = constant;
        final Class instanceClass = instanceConstant.classNode;
        final String? instanceImportUri =
            (instanceClass.parent as Library?)?.importUri.toString();

        if (isDeprecatedTarget(instanceClass.name, instanceImportUri)) {
          return true;
        }
      }
    } else if (annotation is ConstructorInvocation) {
      final ConstructorInvocation constructorInvocation = annotation;
      final Class? cls =
          constructorInvocation.targetReference.node?.parent as Class?;
      final Library? clsParentLib = cls?.parent as Library?;
      if (isDeprecatedTarget(cls!.name, clsParentLib?.importUri.toString())) {
        return true;
      }
    }
  }
  return false;
}
