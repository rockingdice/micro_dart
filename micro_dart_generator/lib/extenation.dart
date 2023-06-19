import 'package:analyzer/dart/element/element.dart';

extension ExtElement on Element {
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
}

String _getClassElementKey(ClassElement element) {
  return "${element.library.identifier}@${element.displayName}";
}

String _getConstructorElementKey(ConstructorElement element) {
  return "${element.library.identifier}@${(element.enclosingElement as ClassElement).name}@${element.name}";
}

String _getMethodKey(MethodElement element) {
  var key =
      "${element.library.identifier}@${(element.enclosingElement as ClassElement).displayName}@${element.name}";

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
      "${element.library.identifier}@${(element.enclosingElement as ClassElement).displayName}@${element.name}";

  return key;
}

String _getPropertyAccessorKey(PropertyAccessorElement element) {
  var className = "";
  if (element.enclosingElement is ClassElement) {
    className = (element.enclosingElement as ClassElement).displayName;
  }
  var key = "${element.library.identifier}@$className@${element.displayName}";

  if (element.isSetter) {
    key = "$key:set";
  }
  return key;
}
