part of 'ast.dart';

extension ExtensionClass on Class {
  ClassRef getClassRef() {
    String library = (this.parent as Library).importUri.toString();
    String className = this.name;
    return ClassRef(library, className);
  }
}

extension ExtensionFunctionDeclaration on FunctionDeclaration {
  CallRef getCallRef() {
    var ref = procedure.getCallRef();
    return CallRef(ref.library, ref.className, "${ref.name}@${variable.name}",
        ref.isSetter, false);
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

  bool get nameNodeIsStatic {
    if (isField) {
      return asField.isStatic;
    } else if (isProcedure) {
      return asProcedure.isStatic;
    } else if (isConstructor) {
      return true;
    } else if (isRedirectingFactory) {
      return true;
    } else if (isClass) {
      return true;
    }
    return false;
  }

  CallRef getCallRef() {
    if (isClass) {
      return getClassCallRef();
    } else if (isConstructor) {
      return getConstructorCallRef();
    } else if (isField) {
      return getFieldCallRef();
    } else if (isRedirectingFactory) {
      return getRedirectingFactoryCallRef();
    } else if (isProcedure) {
      return getProcedureCallRef();
    }
    throw Exception(
        "get namedName error runtimeType:${this.runtimeType.toString()}");
  }

  CallRef getConstructorCallRef() {
    var thiz = this.asConstructor;
    String constructorName = thiz.name.text;
    var clazz = (thiz.parent as Class);
    String className = clazz.name;
    String libraryUri = (clazz.parent as Library).importUri.toString();

    return CallRef(
        libraryUri, className, "$className.$constructorName", false, true);
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

  CallRef getFieldCallRef() {
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

    return CallRef(libraryUri, className, fieldName, false, thiz.isStatic);
  }

  CallRef getRedirectingFactoryCallRef() {
    var thiz = this.asRedirectingFactory;
    String factoryName = thiz.name.text;
    String className = (this.parent as Class).name;
    String libraryUri = (this.parent!.parent as Library).importUri.toString();

    return CallRef(libraryUri, className, factoryName, false, true);
  }

  CallRef getProcedureCallRef() {
    var thiz = this.asProcedure;
    String procedureName = thiz.name.text;
    String libraryUri = "";
    String className = "";
    if (this.parent is Class) {
      className = (this.parent as Class).name;
      libraryUri = (this.parent!.parent as Library).importUri.toString();
      if (thiz.isStatic) {
        procedureName = "$className.$procedureName";
      }
    } else if (this.parent is Library) {
      libraryUri = (this.parent as Library).importUri.toString();
    }
    if (thiz.isSetter) {
      procedureName = "$procedureName:set";
    }

    return CallRef(
        libraryUri, className, procedureName, thiz.isSetter, thiz.isStatic);
  }

  CallRef getClassCallRef() {
    var thiz = this.asClass;
    return CallRef(thiz.stringLibraryUri, thiz.name, "", false, true);
  }
}

void compileNamedNode(MicroCompilerContext context, NamedNode node) {
  context.startCompileNode(node);
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
