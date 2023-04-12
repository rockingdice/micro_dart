part of 'ast.dart';

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

    return "$libraryUri@$className:constructor@$constructorName";
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
      fieldName = "$fieldName@static";
    }

    return "$libraryUri@$className:field@$fieldName";
  }

  String getRedirectingFactoryName() {
    var thiz = this.asRedirectingFactory;
    String factoryName = thiz.name.text;
    String className = (this.parent as Class).name;
    String libraryUri = (this.parent!.parent as Library).importUri.toString();

    return "$libraryUri@$className:factory@$factoryName";
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
      procedureName = "$procedureName@static";
    }

    if (thiz.isGetter) {
      procedureName = "$procedureName@get";
    } else if (thiz.isSetter) {
      procedureName = "$procedureName@set";
    }

    return "$libraryUri@$className:procedure@$procedureName";
  }
}

void compileNamedNode(MicroCompilerContext context, NamedNode node) {
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

void compileGlobalFields(MicroCompilerContext context) {
  context.compileGlobalFieldIndexes.forEach((index) {
    compileNamedNode(context, context.compileDeclarations[index]);
  });
}

void compileDeclarations(MicroCompilerContext context) {
  context.compileDeclarationIndexes.forEach((name, index) {
    compileNamedNode(context, context.compileDeclarations[index]);
  });
}

void compileContext(MicroCompilerContext context) {
  //对全局参数进行编译
  compileGlobalFields(context);
  //对所有声明进行编译
  compileDeclarations(context);
}
