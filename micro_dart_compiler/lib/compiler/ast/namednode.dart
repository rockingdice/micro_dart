part of 'ast.dart';

extension ExtensionFunctionDeclaration on FunctionDeclaration {
  String getNamedName() {
    var parentName = procedure.getNamedName();
    return "$parentName@${variable.name}";
  }

  Procedure get procedure {
    return findProcedure(this)!;
  }

  String get stringLibraryUri {
    return procedure.stringLibraryUri;
  }

  String? get stringClassName {
    return procedure.stringClassName;
  }

  String get stringName {
    return "${variable.name}@${procedure.stringName}";
  }
}

extension ExtensionNamedNode on NamedNode {
  bool get isClass {
    return (this is Class);
  }

  bool get isProcedure {
    return (this is Procedure);
  }

  bool get isField {
    return (this is Field);
  }

  bool get isConstructor {
    return (this is Constructor);
  }

  bool get isRedirectingFactory {
    return (this is RedirectingFactory);
  }

  Class get asClass {
    return (this as Class);
  }

  Procedure get asProcedure {
    return (this as Procedure);
  }

  Field get asField {
    return (this as Field);
  }

  Constructor get asConstructor {
    return (this as Constructor);
  }

  RedirectingFactory get asRedirectingFactory {
    return (this as RedirectingFactory);
  }

  bool get isStatic {
    if (isField) {
      return asField.isStatic;
    } else if (isProcedure) {
      return asProcedure.isStatic;
    }
    return false;
  }

  bool get isGetter {
    if (isField) {
      return asField.isGetter;
    } else if (isProcedure) {
      return asProcedure.isGetter;
    }
    return false;
  }

  bool get isSetter {
    if (isField) {
      return asField.isSetter;
    } else if (isProcedure) {
      return asProcedure.isSetter;
    }
    return false;
  }

  String getNamedName() {
    if (isClass) {
      return getClassName();
    } else if (isConstructor) {
      return getConstructorName();
    } else if (isField) {
      return getFieldName();
    } else if (isRedirectingFactory) {
      return getRedirectingFactoryName();
    } else if (isProcedure) {
      return getProcedureName();
    }
    throw Exception(
        "get namedName error runtimeType:${this.runtimeType.toString()}");
  }

  String getClassName() {
    String libraryUri = (this.parent as Library).importUri.toString();
    String className = this.asClass.name;
    return "$libraryUri@$className";
  }

  String getConstructorName() {
    var thiz = this.asConstructor;
    String constructorName = thiz.name.text;
    var clazz = (thiz.parent as Class);
    String className = clazz.name;
    String libraryUri = (clazz.parent as Library).importUri.toString();

    return "$libraryUri@$className@$constructorName";
  }

  String get stringLibraryUri {
    if (isClass) {
      return (this.parent as Library).importUri.toString();
    } else if (isConstructor) {
      var thiz = this.asConstructor;
      var clazz = (thiz.parent as Class);
      return (clazz.parent as Library).importUri.toString();
    } else if (isField) {
      if (this.parent is Class) {
        return (this.parent!.parent as Library).importUri.toString();
      } else if (this.parent is Library) {
        return (this.parent as Library).importUri.toString();
      }
    } else if (isRedirectingFactory) {
      return (this.parent!.parent as Library).importUri.toString();
    } else if (isProcedure) {
      if (this.parent is Class) {
        return (this.parent!.parent as Library).importUri.toString();
      } else if (this.parent is Library) {
        return (this.parent as Library).importUri.toString();
      }
    }
    throw Exception("not support ${this.runtimeType.toString()}");
  }

  String? get stringClassName {
    if (isClass) {
      return this.asClass.name;
    } else if (isConstructor) {
      return (this.parent as Class).name;
    } else if (isField) {
      if (this.parent is Class) {
        return (this.parent as Class).name;
      } else if (this.parent is Library) {
        return null;
      }
    } else if (isRedirectingFactory) {
      return (this.parent as Class).name;
    } else if (isProcedure) {
      if (this.parent is Class) {
        return (this.parent as Class).name;
      } else if (this.parent is Library) {
        return null;
      }
    }
    throw Exception("not support ${this.runtimeType.toString()}");
  }

  String get stringName {
    if (isClass) {
      return this.asClass.name;
    } else if (isConstructor) {
      return this.asConstructor.name.text;
    } else if (isField) {
      return this.asField.name.text;
    } else if (isRedirectingFactory) {
      return asRedirectingFactory.name.text;
    } else if (isProcedure) {
      return asProcedure.name.text;
    }
    throw Exception("not support ${this.runtimeType.toString()}");
  }

  String getFieldName() {
    var thiz = this.asField;
    String fieldName = thiz.name.text;
    String libraryUri = "";
    String className = "";
    if (this.parent is Class) {
      className = (this.parent as Class).name;
      libraryUri = (this.parent!.parent as Library).importUri.toString();
    } else if (this.parent is Library) {
      libraryUri = (this.parent as Library).importUri.toString();
    }

    if (thiz.isStatic) {
      fieldName = "$fieldName:static";
    }

    return "$libraryUri@$className@$fieldName";
  }

  String getRedirectingFactoryName() {
    var thiz = this.asRedirectingFactory;
    String factoryName = thiz.name.text;
    String className = (this.parent as Class).name;
    String libraryUri = (this.parent!.parent as Library).importUri.toString();

    return "$libraryUri@$className@$factoryName";
  }

  String getProcedureName() {
    var thiz = this.asProcedure;
    String procedureName = thiz.name.text;
    String libraryUri = "";
    String className = "";
    if (this.parent is Class) {
      className = (this.parent as Class).name;
      libraryUri = (this.parent!.parent as Library).importUri.toString();
    } else if (this.parent is Library) {
      libraryUri = (this.parent as Library).importUri.toString();
    }

    if (thiz.isStatic) {
      procedureName = "$procedureName:static";
    }

    if (thiz.isSetter) {
      procedureName = "$procedureName:set";
    }

    return "$libraryUri@$className@$procedureName";
  }
}

void compileNamedNode(MicroCompilerContext context, NamedNode node) {
  context.printCompileNode(node);
  if (node is Procedure) {
    compileProcedure(context, node);
  } else if (node is Field) {
    compileField(context, node);
  } else if (node is Constructor) {
    compileConstructor(context, node);
  } else if (node is RedirectingFactory) {
    compileRedirectingFactory(context, node);
  }
}

void compileFields(MicroCompilerContext context) {
  context.compileFieldIndexes.forEach((index) {
    compileNamedNode(context, context.compileDeclarations[index]);
  });
}

void compileDeclarations(MicroCompilerContext context) {
  context.compileDeclarationIndexes.forEach((name, index) {
    compileNamedNode(context, context.compileDeclarations[index]);
  });
}

void compileContext(MicroCompilerContext context) {
  //初始化classType
  context.setupTypes();
  //对全局参数进行编译
  compileFields(context);
  //对所有声明进行编译
  compileDeclarations(context);
}
