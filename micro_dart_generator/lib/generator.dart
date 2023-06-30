import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

import 'package:micro_dart_generator/extenation.dart';

import 'namedsystem.dart';
import 'overwrite_strategy.dart';

class Visitor extends ElementVisitor<void> {
  final StringBuffer sink = StringBuffer();
  final OverwriteStrategy overwriteStrategy;
  final NamedSystem namedSystem;

  final Set<String> importList = {};

  Visitor(this.namedSystem, this.overwriteStrategy);

  StringBuffer generate() {
    StringBuffer buffer = StringBuffer();
    //buffer.write(namedSystem.generateLibraryImport());
    for (var import in importList) {
      buffer.write(import);
    }
    buffer.write(
        "import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;\n");
    buffer.write('''Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
${sink.toString()}
};
}''');
    return buffer;
  }

  void write(String string) {
    sink.write(string);
  }

  void endLine([String? string]) {
    if (string != null) {
      write(string);
    }
    write('\n');
  }

  void writeSpace([String string = ' ']) {
    write(string);
  }

  void writeWord(String string) {
    if (string.isEmpty) return;
    write(string);
    writeSpace();
  }

  void writeComma([String string = ',']) {
    write(string);
    writeSpace();
  }

  void writeKey(String key) {
    writeWord("'$key':");
  }

  @override
  void visitLibraryElement(LibraryElement element) {
    if (element.name.startsWith("_")) {
      return;
    }
    if (overwriteStrategy.ingoreKeys.contains(element.identifier)) {
      return;
    }
    namedSystem.getLibraryName(element.identifier);
    if (!namedSystem.isCoreLibrary(element.identifier)) {
      importList.add("import '${element.identifier}';\n");
    }
    overwriteStrategy.libraryAddImports[element.identifier]?.forEach((element) {
      importList.add("import '$element';\n");
    });
    element.visitChildren(this);
  }

  @override
  void visitLibraryImportElement(LibraryImportElement element) {
    if (element.importedLibrary == null) {
      return;
    }
    if (element.importedLibrary!.identifier.startsWith("dart:_") ||
        element.importedLibrary!.identifier.startsWith("package:_")) {
      return;
    }

    if (overwriteStrategy.libraryIngoreImports[element.library.identifier]
            ?.contains(element.importedLibrary!.identifier) ??
        false) {
      return;
    }

    if (!namedSystem.isCoreLibrary(element.importedLibrary!.identifier)) {
      StringBuffer buffer = StringBuffer();
      buffer.write("import '${element.importedLibrary!.identifier}'");
      //if (element.prefix != null) {
      //  buffer.write(" as ${element.prefix!.element.name}");
      //}
      List<ShowElementCombinator> showlist = [];
      List<HideElementCombinator> hidelist = [];
      for (var element in element.combinators) {
        if (element is ShowElementCombinator) {
          showlist.add(element);
        } else if (element is HideElementCombinator) {
          hidelist.add(element);
        }
      }
      if (showlist.isNotEmpty) {
        buffer.write(" show ");
        for (int i = 0; i < showlist.length; i++) {
          buffer.write(showlist[i].shownNames.join(","));
          if (i < showlist.length - 1) {
            buffer.write(",");
          }
        }
      }
      if (hidelist.isNotEmpty) {
        buffer.write(" hide ");
        for (int i = 0; i < hidelist.length; i++) {
          buffer.write(hidelist[i].hiddenNames.join(","));
          if (i < hidelist.length - 1) {
            buffer.write(",");
          }
        }
      }
      buffer.write(";\n");
      importList.add(buffer.toString());
    }
  }

  @override
  void visitAugmentationImportElement(AugmentationImportElement element) {}

  @override
  void visitClassElement(ClassElement element) {}

  @override
  void visitCompilationUnitElement(CompilationUnitElement element) {
    element.visitChildren(this);
  }

  @override
  void visitConstructorElement(ConstructorElement element) {}

  @override
  void visitEnumElement(EnumElement element) {}

  @override
  void visitExtensionElement(ExtensionElement element) {}

  @override
  void visitFieldElement(FieldElement element) {}

  @override
  void visitFieldFormalParameterElement(FieldFormalParameterElement element) {}

  @override
  void visitFunctionElement(FunctionElement element) {}

  @override
  void visitGenericFunctionTypeElement(GenericFunctionTypeElement element) {}

  @override
  void visitLabelElement(LabelElement element) {}

  @override
  void visitLibraryAugmentationElement(LibraryAugmentationElement element) {}

  @override
  void visitLibraryExportElement(LibraryExportElement element) {}

  @override
  void visitLocalVariableElement(LocalVariableElement element) {}

  @override
  void visitMethodElement(MethodElement element) {}

  @override
  void visitMixinElement(MixinElement element) {}

  @override
  void visitMultiplyDefinedElement(MultiplyDefinedElement element) {}

  @override
  void visitParameterElement(ParameterElement element) {}

  @override
  void visitPartElement(PartElement element) {}

  @override
  void visitPrefixElement(PrefixElement element) {}

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) {}

  @override
  void visitSuperFormalParameterElement(SuperFormalParameterElement element) {}

  @override
  void visitTopLevelVariableElement(TopLevelVariableElement element) {}

  @override
  void visitTypeAliasElement(TypeAliasElement element) {}

  @override
  void visitTypeParameterElement(TypeParameterElement element) {}
}

class Generator extends Visitor {
  Generator(super.namedSystem, super.overwriteStrategy);

  @override
  void visitClassElement(ClassElement element) {
    if (element.name.startsWith("_")) {
      return;
    }
    if (element.isPrivate) {
      return;
    }

    if (overwriteStrategy.ingoreKeys.contains(element.key)) {
      return;
    }

    writeClassAs(element);
    writeClassIs(element);

    element.visitChildren(this);
  }

  @override
  void visitFunctionElement(FunctionElement element) {
    if (element.name.startsWith("_")) {
      return;
    }
    if (element.hasDeprecated) {
      return;
    }
    if (overwriteStrategy.ingoreKeys.contains(element.key)) {
      return;
    }
    writeKey(element.key!);
    if (overwriteStrategy.keyOverwrites.containsKey(element.key)) {
      write(overwriteStrategy.keyOverwrites[element.key]!);
      endLine(",");
      return;
    }
    writeScopeArgemnts();
    write("=>");
    if (!hasFunctionTypeParams(element.type)) {
      write(element.displayName);
    } else {
      writeFunctionTypeType(element.type);
      endLine("{");
      writeFunctionBody("", element.name, element.type, null,
          element.typeParameters, false, true, false);
      write("}");
    }

    endLine(",");
  }

  @override
  void visitMethodElement(MethodElement element) {
    if (element.name.startsWith("_")) {
      return;
    }
    if (element.hasDeprecated) {
      return;
    }
    if (overwriteStrategy.ingoreKeys.contains(element.key)) {
      return;
    }
    var clazz = (element.enclosingElement as ClassElement);
    var name = element.name;
    writeKey(element.key!);
    if (overwriteStrategy.keyOverwrites.containsKey(element.key)) {
      write(overwriteStrategy.keyOverwrites[element.key]!);
      endLine(",");
      return;
    }
    writeScopeArgemnts(hasTarget: !element.isStatic, targetName: clazz.name);
    write("=>");

    if (binaryOperatorList.containsKey(name)) {
      writeWord("(other)=>");
      writeWord("target");
      writeWord(binaryOperatorList[name]!);
      write("other");
    } else if (unaryOperatorList.containsKey(name)) {
      writeWord("()=>");
      writeWord(unaryOperatorList[name]!);
      writeWord("target");
    } else if (specialOperatorList.contains(name)) {
      if (name == "[]") {
        writeWord("(index)=>");
        write("target[index]");
      } else if (name == "[]=") {
        writeWord("(index,other)=>");
        write("target[index] = other");
      }
    } else if (!hasFunctionTypeParams(element.type)) {
      if (element.isStatic && clazz.name.isNotEmpty) {
        write(clazz.name);
        write(".");
      } else {
        write("target");
        write(".");
      }
      write(element.displayName);
    } else {
      writeFunctionTypeType(element.type);
      endLine("{");

      writeFunctionBody(clazz.name, element.name, element.type, null,
          element.typeParameters, false, element.isStatic, true);
      write("}");
    }

    endLine(",");
  }

  bool hasFunctionTypeParams(FunctionType functionType) {
    for (int i = 0; i < functionType.parameters.length; i++) {
      var parameter = functionType.parameters[i];

      if (parameter.type is FunctionType) {
        return true;
      }
    }
    return false;
  }

  void writeFunctionBodyWithFunctionPointer(
      String? className,
      String name,
      FunctionType functionType,
      DartType? thisType,
      List<TypeParameterElement> typeParameters,
      bool isConst,
      bool isStatic,
      bool isMethod,
      List<ParameterElement> posational,
      List<ParameterElement> named) {
    if (functionType.returnType is! VoidType) {
      writeWord("return");
    }

    if (isMethod) {
      if (isStatic && className != null) {
        write(className);
        write(".");
      } else {
        write("target");
        write(".");
      }
      write(name);
      writeTypeParameters(typeParameters);
    } else {
      if (className != null && className.isNotEmpty) {
        write(className);
        if (name.isNotEmpty) {
          write(".");
        }
      }

      write(name);
    }

    write("(");

    for (int i = 0; i < posational.length; i++) {
      writeParameterElementDetail(posational[i].name, posational[i]);
      if (i < posational.length - 1) {
        writeComma();
      }
    }
    if (named.isNotEmpty) {
      if (posational.isNotEmpty) {
        writeComma();
      }
      for (int i = 0; i < named.length; i++) {
        write(named[i].name);
        write(":");
        writeParameterElementDetail(named[i].name, named[i]);
        if (i < named.length - 1) {
          writeComma();
        }
      }
    }

    write(");\n");
  }

  void writeFunctionBody(
      String? className,
      String name,
      FunctionType functionType,
      DartType? thisType,
      List<TypeParameterElement> typeParameters,
      bool isConst,
      bool isStatic,
      bool isMethod) {
    List<ParameterElement> posational = [];
    List<ParameterElement> optionalPosational = [];
    List<ParameterElement> named = [];
    List<ParameterElement> globalFunctionParamers = [];
    // List<ParameterElement> optionalFunctionParamers = [];
    for (int i = 0; i < functionType.parameters.length; i++) {
      var parameter = functionType.parameters[i];
      if (parameter.isPositional) {
        if (parameter.isOptionalPositional) {
          optionalPosational.add(parameter);
        } else {
          posational.add(parameter);
        }
      } else if (parameter.isNamed) {
        named.add(parameter);
      }
      if (parameter.type is FunctionType) {
        if (parameter.isOptionalPositional) {
          // optionalFunctionParamers.add(parameter);
        } else {
          globalFunctionParamers.add(parameter);
        }
      }
    }

    for (var parameter in globalFunctionParamers) {
      writeFunctionParameter(parameter, parameter.name);
    }
    ParameterElement? functionParamer;

    if (optionalPosational.isNotEmpty) {
      List<ParameterElement> optionalPosational2 =
          List.from(optionalPosational);
      writeOptionalIfNull(optionalPosational);
      endLine("{");
      writeFunctionBodyWithFunctionPointer(
          className,
          name,
          functionType,
          thisType,
          typeParameters,
          isConst,
          isStatic,
          isMethod,
          posational,
          named);
      if (functionType.returnType is VoidType) {
        endLine("return;");
      }
      endLine("}");

      var ite = optionalPosational.iterator;
      while (ite.moveNext()) {
        var parameter = ite.current;
        posational.add(parameter);
        optionalPosational2.remove(parameter);
        if (parameter.type is FunctionType) {
          functionParamer = parameter;
        } else {
          functionParamer = null;
        }
        if (functionParamer != null) {
          writeFunctionParameter(functionParamer, functionParamer.name);
        }
        if (optionalPosational2.isNotEmpty) {
          writeOptionalIfNull(optionalPosational2);
          endLine("{");
        }

        writeFunctionBodyWithFunctionPointer(
            className,
            name,
            functionType,
            thisType,
            typeParameters,
            isConst,
            isStatic,
            isMethod,
            posational,
            named);
        if (functionType.returnType is VoidType) {
          endLine("return;");
        }
        if (optionalPosational2.isNotEmpty) {
          endLine("}");
        }
      }
      return;
    }

    writeFunctionBodyWithFunctionPointer(
        className,
        name,
        functionType,
        thisType,
        typeParameters,
        isConst,
        isStatic,
        isMethod,
        posational,
        named);
  }

  void writeOptionalIfNull(List<ParameterElement> optionalPosational) {
    if (optionalPosational.isEmpty) {
      return;
    }
    write("if(");
    for (int i = 0; i < optionalPosational.length; i++) {
      write("${optionalPosational[i].name} == null");
      if (i < optionalPosational.length - 1) {
        write(" && ");
      }
    }
    write(")");
  }

  void writeTypeParameters(List<TypeParameterElement> typeParameters,
      {bool withExtends = false}) {
    bool needType = false;
    for (int i = 0; i < typeParameters.length; i++) {
      if (typeParameters[i].bound != null) {
        needType = true;
      }
    }

    if (!needType) {
      return;
    }

    write("<");
    for (int i = 0; i < typeParameters.length; i++) {
      writeTypeParameter(typeParameters[i]);
      if (i < typeParameters.length - 1) {
        writeComma();
      }
    }
    write(">");
  }

  void writeTypeParameter(TypeParameterElement element) {
    if (element.bound != null) {
      writeDartTypeToClassName2(element.bound!, false);
    } else {
      write("dynamic");
    }
  }

  String? getDefaultValueCode(ParameterElement element) {
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
      } else if (element.defaultValueCode?.startsWith("const Border(") ??
          false) {
        print(element.defaultValueCode);
      }
    }

    return element.defaultValueCode;
  }

  void writeParameterElementDetail(String paramName, ParameterElement element) {
    var type = element.type;
    if (type is InterfaceType || type is TypeParameterType) {
      write(paramName);
      if (element.isOptionalPositional) {
        write("!");
      } else if (element.hasDefaultValue) {
        writeSpace();
        writeWord("??");
        write(getDefaultValueCode(element)!);
      }
    } else if (type is FunctionType) {
      var paramName2 = paramName;
      paramName = "${paramName}Proxy";

      if (element.isOptional && !element.isOptionalPositional) {
        write(
            "$paramName2 == null ? ${getDefaultValueCode(element) ?? "null"} :");
      }
      write(paramName);
    } else if (type is VoidType) {
      write(paramName);
    } else if (type is DynamicType) {
      write(paramName);
    } else {
      print("write dart type not support ${type.runtimeType.toString()}");
    }
  }

  void writeFunctionParameter(ParameterElement parameter, String name) {
    var type = parameter.type as FunctionType;
    bool isAsync = (type.returnType.isDartAsyncFuture ||
        type.returnType.isDartAsyncFutureOr);

    writeDartTypeToClassName(type.returnType);
    writeSpace();
    write("${parameter.name}Proxy");
    writeDartTypeTypeArguments(type);
    writeFunctionTypeType(type);
    writeSpace();
    if (isAsync) {
      endLine("async{");
    } else {
      endLine("{");
    }
    bool returnFunctionType = type.returnType is FunctionType;
    bool returnVoidType = type.returnType is VoidType;

    if (!(returnVoidType || returnFunctionType)) {
      writeWord("return");
    }
    if (returnFunctionType) {
      writeWord("var \$fp = ");
    }
    List<ParameterElement> positional = [];
    List<ParameterElement> optionalPosational = [];
    List<ParameterElement> named = [];

    for (var e in type.parameters) {
      if (e.isPositional) {
        if (e.isOptionalPositional) {
          optionalPosational.add(e);
        } else {
          positional.add(e);
        }
      } else if (e.isNamed) {
        named.add(e);
      }
    }
    if (optionalPosational.isNotEmpty) {
    } else {
      writeCallPointer(name, type, positional, named, isAsync: isAsync);
      if (returnFunctionType) {
        writeFunctionTypeParameter(type.returnType as FunctionType);
        endLine("return \$f;");
      }
    }

    endLine("}");
    endLine();
  }

  void writeFunctionTypeParameter(FunctionType functionType) {
    bool isAsync = (functionType.returnType.isDartAsyncFuture ||
        functionType.returnType.isDartAsyncFutureOr);

    writeDartTypeToClassName(functionType.returnType);
    writeSpace();
    write("\$f");
    writeDartTypeTypeArguments(functionType);
    writeFunctionTypeType(functionType);
    writeSpace();
    if (isAsync) {
      endLine("async{");
    } else {
      endLine("{");
    }

    List<ParameterElement> positional = [];
    List<ParameterElement> optionalPosational = [];
    List<ParameterElement> named = [];

    for (var e in functionType.parameters) {
      if (e.isPositional) {
        if (e.isOptionalPositional) {
          optionalPosational.add(e);
        } else {
          positional.add(e);
        }
      } else if (e.isNamed) {
        named.add(e);
      }
    }

    if (optionalPosational.isNotEmpty) {
    } else {
      bool returnFunctionType = functionType.returnType is FunctionType;
      bool returnVoidType = functionType.returnType is VoidType;

      if (!(returnVoidType || returnFunctionType)) {
        writeWord("return");
      }
      if (returnFunctionType) {
        writeWord("var p = ");
      }

      writeCallPointer("\$fp", functionType, positional, named,
          isAsync: isAsync);
      if (returnFunctionType) {
        writeFunctionTypeParameter(functionType.runtimeType as FunctionType);
        write("return \$f");
      }
    }

    endLine("}");
    endLine();
  }

  void writeDartTypeTypeArguments(FunctionType type) {
    Set<String> gs = {};
    collectType(gs, type);
    if (gs.isNotEmpty) {
      write("<");
      var list = gs.toList();
      for (int i = 0; i < list.length; i++) {
        write(list[i]);
        if (i < list.length - 1) {
          writeComma();
        }
      }
      write(">");
    }
  }

  void collectType(Set<String> gs, FunctionType type) {
    var returnType = type.returnType;
    if (returnType is TypeParameterType) {
      var n = returnType.element.name;

      gs.add(n);
    } else if (returnType is InterfaceType) {
      if (returnType.typeArguments.isNotEmpty) {
        for (var element in returnType.typeArguments) {
          if (element is TypeParameterType) {
            var n = element.element.name;

            gs.add(n);
          }
        }
      }
    } else if (returnType is FunctionType) {
      collectType(gs, returnType);
    }
    for (var element in type.parameters) {
      var t = element.type;
      if (t is TypeParameterType) {
        var n = t.element.name;

        gs.add(n);
      } else if (t is FunctionType) {
        collectType(gs, t);
      }
    }
  }

  void writeDartTypeToClassName2(DartType type, bool isOptional) {
    if (type is InterfaceType) {
      write(type.element.name);

      if (type.typeArguments.isNotEmpty) {
        bool writeTypeArguments = true;
        for (var element in type.typeArguments) {
          if (element is VoidType ||
              element is DynamicType ||
              element is FunctionType) {
            writeTypeArguments = false;
          }
        }
        if (writeTypeArguments) {
          write("<");
          for (int i = 0; i < type.typeArguments.length; i++) {
            writeDartTypeToClassName2(type.typeArguments[i], false);
            if (i < type.typeArguments.length - 1) {
              writeComma();
            }
          }
          write(">");
        }
      }
      if (isOptional) {
        write("?");
      }
    } else if (type is VoidType) {
      write("void");
    } else if (type is DynamicType) {
      write("dynamic");
    } else if (type is FunctionType) {
      write("m.FunctionPointer");
      if (isOptional) {
        write("?");
      }
    } else if (type is TypeParameterType) {
      var b = type.bound;
      if (b is InterfaceType) {
        write(b.element.name);

        if (isOptional) {
          write("?");
        }
      } else {
        write("dynamic");
      }
    } else {
      print("write dart type not support ${type.runtimeType.toString()}");
    }
  }

  void writeDartTypeToClassName(DartType type) {
    if (type is InterfaceType) {
      write(type.element.name);

      if (type.typeArguments.isNotEmpty) {
        bool writeTypeArguments = true;
        for (var element in type.typeArguments) {
          if (element is VoidType || element is FunctionType) {
            writeTypeArguments = false;
          }
        }
        if (writeTypeArguments) {
          write("<");
          for (int i = 0; i < type.typeArguments.length; i++) {
            writeDartTypeToClassName(type.typeArguments[i]);
            if (i < type.typeArguments.length - 1) {
              writeComma();
            }
          }
          write(">");
        }
      }
    } else if (type is VoidType) {
      write("void");
    } else if (type is DynamicType) {
      write("dynamic");
    } else if (type is FunctionType) {
      write(type.toString());
    } else if (type is TypeParameterType) {
      write(type.element.name);
    } else {
      print("write dart type not support ${type.runtimeType.toString()}");
    }
  }

  void writeCallPointer(String pointerName, FunctionType functionType,
      List<ParameterElement> positional, List<ParameterElement> named,
      {bool isAsync = false}) {
    if (isAsync) {
      write("await engine.callFunctionPointerAsync(scope, $pointerName!,");
    } else {
      write(" engine.callFunctionPointer(scope, $pointerName!,");
    }

    write("[");
    for (int i = 0; i < positional.length; i++) {
      String name = positional[i].name;
      if (name.isEmpty) {
        name = "\$p$i";
      }
      write(name);
      if (i < positional.length - 1) {
        writeComma();
      }
    }

    write("]");
    writeComma();
    write("{");
    for (int i = 0; i < named.length; i++) {
      write("'${named[i].name}'");
      write(":");
      write(named[i].name);
      if (i < named.length - 1) {
        writeComma();
      }
    }
    write("}");
    endLine(");");
  }

  void writeFunctionTypeType3(FunctionType functionType) {
    Set<String> gs = {};
    collectType(gs, functionType);

    if (gs.isNotEmpty) {
      write("<");
      var list = gs.toList();
      for (int i = 0; i < list.length; i++) {
        write(list[i]);
        if (i < list.length - 1) {
          writeComma();
        }
      }
      write(">");
    }
    List<ParameterElement> positional = [];
    List<ParameterElement> named = [];
    List<ParameterElement> optionalPosational = [];

    for (var e in functionType.parameters) {
      if (e.isPositional) {
        if (e.isOptionalPositional) {
          optionalPosational.add(e);
        } else {
          positional.add(e);
        }
      } else if (e.isNamed) {
        named.add(e);
      }
    }

    write("(");

    for (int i = 0; i < positional.length; i++) {
      writeParameterElement(positional[i], i);
      if (i < positional.length - 1) {
        writeComma();
      }
    }
    if (optionalPosational.isNotEmpty) {
      if (positional.isNotEmpty) {
        writeComma();
      }

      write("[");
      for (int i = 0; i < optionalPosational.length; i++) {
        writeParameterElement2(
            optionalPosational[i], positional.length + i, true);
        if (i < optionalPosational.length - 1) {
          writeComma();
        }
      }
      write("]");
    }

    if (named.isNotEmpty) {
      if (positional.isNotEmpty || optionalPosational.isNotEmpty) {
        writeComma();
      }

      write("{");
      for (int i = 0; i < named.length; i++) {
        writeParameterElement(named[i], i);
        if (i < named.length - 1) {
          writeComma();
        }
      }
      write("}");
    }

    write(")");
  }

  void writeFunctionTypeType(FunctionType functionType) {
    write("(");

    List<ParameterElement> positional = [];
    List<ParameterElement> named = [];
    List<ParameterElement> optionalPosational = [];

    for (var e in functionType.parameters) {
      if (e.isPositional) {
        if (e.isOptionalPositional) {
          optionalPosational.add(e);
        } else {
          positional.add(e);
        }
      } else if (e.isNamed) {
        named.add(e);
      }
    }

    for (int i = 0; i < positional.length; i++) {
      writeParameterElement(positional[i], i);
      if (i < positional.length - 1) {
        writeComma();
      }
    }
    if (optionalPosational.isNotEmpty) {
      if (positional.isNotEmpty) {
        writeComma();
      }

      write("[");
      for (int i = 0; i < optionalPosational.length; i++) {
        writeParameterElement2(
            optionalPosational[i], positional.length + i, true);
        if (i < optionalPosational.length - 1) {
          writeComma();
        }
      }
      write("]");
    }

    if (named.isNotEmpty) {
      if (positional.isNotEmpty || optionalPosational.isNotEmpty) {
        writeComma();
      }

      write("{");
      for (int i = 0; i < named.length; i++) {
        writeParameterElement(named[i], i);
        if (i < named.length - 1) {
          writeComma();
        }
      }
      write("}");
    }

    write(")");
  }

  void writeFunctionTypeType2(FunctionType functionType, bool writeType) {
    write("(");

    List<ParameterElement> positional = [];
    List<ParameterElement> named = [];

    for (var e in functionType.parameters) {
      if (e.isPositional) {
        positional.add(e);
      } else if (e.isNamed) {
        named.add(e);
      }
    }

    for (int i = 0; i < positional.length; i++) {
      writeParameterElement2(positional[i], i, writeType);
      if (i < positional.length - 1) {
        writeComma();
      }
    }
    if (named.isNotEmpty) {
      if (positional.isNotEmpty) {
        writeComma();
      }

      write("{");
      for (int i = 0; i < named.length; i++) {
        writeParameterElement2(named[i], i, writeType);
        if (i < named.length - 1) {
          writeComma();
        }
      }
      write("}");
    }

    write(")");
  }

  void writeParameterElement(ParameterElement element, int index) {
    String name = element.name;
    if (name.isEmpty) {
      name = "\$p$index";
    }
    // if (element.isRequiredNamed) {
    //   writeWord("required");
    // }
    // writeDartTypeToClassName2(element.type, element.isOptional);
    writeSpace();
    write(name);
  }

  void writeParameterElement2(
      ParameterElement element, int index, bool writeType) {
    String name = element.name;
    if (name.isEmpty) {
      name = "\$p$index";
    }

    if (writeType) {
      if (element.isRequiredNamed) {
        writeWord("required");
      }
      writeDartTypeToClassName2(element.type, element.isOptional);
    }

    writeSpace();
    write(name);
  }

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) {
    if (element.name.startsWith("_")) {
      return;
    }
    if (element.hasDeprecated) {
      return;
    }
    if (overwriteStrategy.ingoreKeys.contains(element.key)) {
      return;
    }
    if (element.isStatic) {
      writeStaticProperty(element);
    } else {
      writeClassProperty(element);
    }
  }

  @override
  void visitConstructorElement(ConstructorElement element) {
    if (element.name.startsWith("_")) {
      return;
    }
    if (element.hasDeprecated) {
      return;
    }
    if (overwriteStrategy.ingoreKeys.contains(element.key)) {
      return;
    }
    var clazz = (element.enclosingElement as ClassElement);
    if (clazz.isAbstract && !element.isFactory) {
      return;
    }
    writeKey(element.key!);
    if (overwriteStrategy.keyOverwrites.containsKey(element.key)) {
      write(overwriteStrategy.keyOverwrites[element.key]!);
      endLine(",");
      return;
    }
    writeScopeArgemnts();
    write("=>");
    if (!hasFunctionTypeParams(element.type)) {
      if (element.name == "") {
        writeFunctionTypeType3(element.type);
        endLine("{");
        writeFunctionBody(clazz.name, element.name, element.type, null,
            element.typeParameters, false, true, false);
        write("}");
      } else {
        write(element.displayName);
      }
    } else {
      writeFunctionTypeType(element.type);
      endLine("{");
      writeFunctionBody(clazz.name, element.name, element.type, null,
          element.typeParameters, false, true, false);
      write("}");
    }

    endLine(",");
  }

  void writeStaticProperty(PropertyAccessorElement element) {
    if (element.isGetter) {
      writeStaticPropertyGetter(element);
    } else if (element.isSetter) {
      writeStaticPropertySetter(element);
    }
  }

  void writeClassProperty(PropertyAccessorElement element) {
    if (element.isGetter) {
      writeClassPropertyGetter(element);
    } else if (element.isSetter) {
      writeClassPropertySetter(element);
    }
  }

  void writeStaticPropertyGetter(PropertyAccessorElement element) {
    writeKey(element.key!);
    if (overwriteStrategy.keyOverwrites.containsKey(element.key)) {
      write(overwriteStrategy.keyOverwrites[element.key]!);
      endLine(",");
      return;
    }
    writeScopeArgemnts();
    write("=>");
    var className = "";
    if (element.enclosingElement is ClassElement) {
      className = (element.enclosingElement as ClassElement).displayName;
    }
    if (className.isNotEmpty) {
      write(className);
      write(".");
    }

    write(element.displayName);
    endLine(",");
  }

  void writeStaticPropertySetter(PropertyAccessorElement element) {
    var name = element.displayName;
    writeKey(element.key!);
    if (overwriteStrategy.keyOverwrites.containsKey(element.key)) {
      write(overwriteStrategy.keyOverwrites[element.key]!);
      endLine(",");
      return;
    }
    writeScopeArgemnts();
    write("=>");
    writeOtherArgemnts();
    write("=>");
    var className = "";
    if (element.enclosingElement is ClassElement) {
      className = (element.enclosingElement as ClassElement).displayName;
      name = "$className.$name";
    }
    write(name);
    write("=other");
    endLine(",");
  }

  void writeClassPropertyGetter(PropertyAccessorElement element) {
    writeKey(element.key!);
    if (overwriteStrategy.keyOverwrites.containsKey(element.key)) {
      write(overwriteStrategy.keyOverwrites[element.key]!);
      endLine(",");
      return;
    }
    var className = "";
    if (element.enclosingElement is ClassElement) {
      className = (element.enclosingElement as ClassElement).displayName;
    }
    writeScopeArgemnts(hasTarget: true, targetName: className);
    write("=>target");
    write(".");
    write(element.displayName);
    endLine(",");
  }

  void writeClassPropertySetter(PropertyAccessorElement element) {
    writeKey(element.key!);
    if (overwriteStrategy.keyOverwrites.containsKey(element.key)) {
      write(overwriteStrategy.keyOverwrites[element.key]!);
      endLine(",");
      return;
    }
    var className = "";
    if (element.enclosingElement is ClassElement) {
      className = (element.enclosingElement as ClassElement).displayName;
    }
    writeScopeArgemnts(hasTarget: true, targetName: className);
    write("=>");
    writeOtherArgemnts();
    write("=>");
    write("target");
    write(".");
    write(element.displayName);
    write("=other");
    endLine(",");
  }

  void writeClassAs(ClassElement element) {
    var className = element.name;
    writeTargetKeywordClassName(element.key!, className, "as");
  }

  void writeClassIs(ClassElement element) {
    var className = element.name;
    writeTargetKeywordClassName(element.key!, className, "is");
  }

  void writeTargetKeywordClassName(
      String parentKey, String className, String keyeword) {
    String key = "$parentKey@#$keyeword";
    writeKey(key);
    if (overwriteStrategy.keyOverwrites.containsKey(key)) {
      write(overwriteStrategy.keyOverwrites[key]!);
      endLine(",");
      return;
    }
    writeScopeArgemnts(hasTarget: true);
    write("=>()=>");
    writeWord("target");
    writeWord(keyeword);
    write(className);
    endLine(",");
  }

  void writeScopeArgemnts({bool hasTarget = false, String? targetName}) {
    write("(");
    write("m.Scope scope");
    if (hasTarget) {
      writeComma();
      if (targetName != null) {
        writeWord(targetName);
      }
      write("target");
    }
    write(")");
  }

  void writeOtherArgemnts() {
    write("(");
    write("other");
    write(")");
  }

  void write(String string) {
    sink.write(string);
  }

  void endLine([String? string]) {
    if (string != null) {
      write(string);
    }
    write('\n');
  }

  void writeSpace([String string = ' ']) {
    write(string);
  }

  void writeWord(String string) {
    if (string.isEmpty) return;
    write(string);
    writeSpace();
  }

  void writeComma([String string = ',']) {
    write(string);
    writeSpace();
  }

  void writeKey(String key) {
    writeWord("'$key':");
  }
}
