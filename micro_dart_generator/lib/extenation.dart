import 'package:analyzer/dart/element/element.dart';

import 'namedsystem.dart';

extension ExtElement on Element {
  String getNameWithClass() {
    var element = this;
    var className = "";
    if (element.enclosingElement is InterfaceElement) {
      className = element.enclosingElement?.displayName ?? "";
    }
    var name = element.displayName;
    if (className.isNotEmpty) {
      name = "$className.$name";
    }
    return name;
  }

  String? get key {
    var thiz = this;
    if (thiz is ClassElement) {
      return _getClassElementKey(thiz);
    } else if (thiz is ConstructorElement) {
      return _getConstructorElementKey(thiz);
    } else if (thiz is MethodElement) {
      return _getMethodKey(thiz);
    } else if (thiz is FunctionElement) {
      return _getFunctionKey(thiz);
    } else if (thiz is TopLevelVariableElement) {
      return _getTopLevelVariableKey(thiz);
    } else if (thiz is FieldElement) {
      return _getFieldKey(thiz);
    } else if (thiz is PropertyAccessorElement) {
      return _getPropertyAccessorKey(thiz);
    } else if (thiz is LibraryElement) {
      return thiz.identifier;
    }
    return null;
  }

  String? get proxyName {
    var thiz = this;
    if (thiz is FunctionElement) {
      return _getFunctionElementProxyName(thiz);
    } else if (thiz is PropertyAccessorElement) {
      return _getPropertyAccessorElementProxyName(thiz);
    } else if (thiz is EnumElement) {
      return _getEnumElementProxyName(thiz);
    } else if (thiz is ParameterElement) {
      return _getParameterElementProxyName(thiz);
    } else if (thiz is MethodElement) {
      return _getMethodElementProxyName(thiz);
    }
    return null;
  }
}

String? _getMethodElementProxyName(MethodElement element) {
  var className = "";
  if (element.enclosingElement is ClassElement) {
    className = (element.enclosingElement as ClassElement).displayName;
  }
  var name = element.name;
  if (binaryOperatorList.containsKey(name)) {
    name = binaryOperatorList[name]![1];
  } else if (unaryOperatorList.containsKey(name)) {
    name = unaryOperatorList[name]![1];
  } else if (specialOperatorList.containsKey(name)) {
    if (name == "[]") {
      name = "\$index\$";
    } else if (name == "[]=") {
      name = "\$index_set\$";
    }
  }
  if (className.isNotEmpty) {
    name = "${className}_$name";
  }
  return "_$name\$";
}

String? _getParameterElementProxyName(ParameterElement thiz) {
  var functionElement = thiz.enclosingElement as FunctionElement;
  var functionProxyName = functionElement.proxyName;
  return "${functionProxyName}_${thiz.name}\$";
}

String _getFunctionElementProxyName(FunctionElement element) {
  return "_${element.name}\$";
}

String _getEnumElementProxyName(EnumElement element) {
  var className = "";
  if (element.enclosingElement is ClassElement) {
    className = (element.enclosingElement as ClassElement).displayName;
  }
  var name = element.name;
  if (className.isNotEmpty) {
    name = "${className}_$name";
  }
  return "_$name\$";
}

String _getPropertyAccessorElementProxyName(PropertyAccessorElement element) {
  var className = "";
  if (element.enclosingElement is InterfaceElement) {
    className = element.enclosingElement.name!;
  }
  var name = element.displayName;
  if (className.isNotEmpty) {
    name = "${className}_$name";
  }
  if (element.isSetter) {
    name = "${name}_set";
  }
  return "_$name\$";
}

String _getClassElementKey(ClassElement element) {
  return "${element.library.identifier}@${element.name}";
}

String _getConstructorElementKey(ConstructorElement element) {
  return "${element.library.identifier}@${element.enclosingElement.name}@${element.name}";
}

String _getMethodKey(MethodElement element) {
  var key =
      "${element.library.identifier}@${element.enclosingElement.displayName}@${element.displayName}";

  return key;
}

String _getFunctionKey(FunctionElement element) {
  return "${element.library.identifier}@@${element.name}";
}

String _getTopLevelVariableKey(TopLevelVariableElement element) {
  return "${element.library.identifier}@@${element.name}";
}

String _getFieldKey(FieldElement element) {
  var key =
      "${element.library.identifier}@${element.enclosingElement.name}@${element.name}";

  return key;
}

String _getPropertyAccessorKey(PropertyAccessorElement element) {
  var className = "";
  if (element.enclosingElement is ClassElement) {
    className = (element.enclosingElement as ClassElement).name;
  }
  var key = "${element.library.identifier}@$className@${element.name}";

  if (element.isSetter) {
    key = "$key:set";
  }
  return key;
}
