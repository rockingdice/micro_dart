import 'package:analyzer/dart/element/element.dart';
import 'package:micro_dart_generator2/extenation.dart';

class LibraryPrefix {
  final Map<String, String> _libraryPrefixList = {};

  int index = 0;
  String lookupPrefix(String libraryUri) {
    if (libraryUri == "dart:core") {
      return "";
    }
    if (_libraryPrefixList.containsKey(libraryUri)) {
      return _libraryPrefixList[libraryUri]!;
    }
    _libraryPrefixList[libraryUri] = "l${index++}";
    return _libraryPrefixList[libraryUri]!;
  }

  String generate() {
    StringBuffer buffer = StringBuffer();
    buffer.write("import 'dart:core';\n");
    _libraryPrefixList.forEach((key, value) {
      buffer.write("import '$key' as $value;\n");
    });
    return buffer.toString();
  }

  void init() {
    _libraryPrefixList.clear();
  }
}

const List<String> _operatorFunctions = [
  "&",
  "|",
  "^",
  "==",
  "+",
  "-",
  "*",
  "~/",
  "<",
  ">",
  "<=",
  ">=",
  "/",
  "%",
  "<<",
  ">>",
  ">>>"
];

class BufferVisitor extends AbsVisitor {
  final buffer = StringBuffer();
  final libraryPrefix = LibraryPrefix();

  String generate(String libraryName, LibraryElement libraryElement) {
    write("var $libraryName = {");
    endLine();
    libraryElement.accept(this);
    endLine("};");
    return "${libraryPrefix.generate()}$buffer";
  }

  void write(String string) {
    buffer.write(string);
  }

  void endLine([String? string]) {
    if (string != null) {
      write(string);
    }
    write('\n');
  }

  @override
  void visitLibraryElement(LibraryElement element) {
    if (element.name.startsWith("_")) {
      return;
    }
    element.visitChildren(this);
  }

  @override
  void visitCompilationUnitElement(CompilationUnitElement element) {
    element.visitChildren(this);
  }

  @override
  void visitClassElement(ClassElement element) {
    if (element.name.startsWith("_")) {
      return;
    }

    element.visitChildren(this);
  }

  @override
  void visitFunctionElement(FunctionElement element) {
    if (element.name.startsWith("_")) {
      return;
    }
    var libraryName = libraryPrefix.lookupPrefix(element.library.identifier);
    if (libraryName.isNotEmpty) {
      libraryName = "$libraryName.";
    }
    write("'${element.key}':()=>");
    var name = "$libraryName${element.displayName}";
    write(name);
    endLine(",");
  }

  @override
  void visitConstructorElement(ConstructorElement element) {
    if (element.name.startsWith("_")) {
      return;
    }

    if (element.enclosingElement is ClassElement) {
      final clazz = (element.enclosingElement as ClassElement);
      if (clazz.isAbstract) {
        return;
      }
    }

    var libraryName = libraryPrefix.lookupPrefix(element.library.identifier);
    if (libraryName.isNotEmpty) {
      libraryName = "$libraryName.";
    }
    write("'${element.key}':(List p,Map<String,dynamic> n)=>");
    var name = "$libraryName${element.displayName}";
    write("$name(");
    int index = 0;
    int totalParamCount = element.parameters.length;
    for (var parameter in element.parameters) {
      if (parameter.isPositional) {
        write("p[$index]");
        index++;
        if (index < totalParamCount) {
          write(",");
        }
      } else if (parameter.isNamed) {
        write("${parameter.name}:n['${parameter.name}']");
        index++;
        if (index < totalParamCount) {
          write(",");
        }
      }
    }
    write(")");
    endLine(",");
  }

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) {
    if (element.name.startsWith("_")) {
      return;
    }
    var libraryName = libraryPrefix.lookupPrefix(element.library.identifier);
    if (libraryName.isNotEmpty) {
      libraryName = "$libraryName.";
    }
    var className = "";
    if (element.enclosingElement is ClassElement) {
      className = (element.enclosingElement as ClassElement).displayName;
    }
    var name = libraryName;
    if (className.isNotEmpty) {
      name = "$name$className.";
    }

    if (element.isStatic) {
      if (element.isGetter) {
        write("'${element.key}':()=>");
      } else {
        write("'${element.key}':($className target,other)=>");
      }

      name = "$name${element.name}";
    } else {
      if (element.isGetter) {
        write("'${element.key}':($className target)=>");
      } else {
        write("'${element.key}':($className target, other)=>");
      }

      name = "target.${element.name}";
    }
    write(name);
    if (element.isSetter) {
      write("other");
    }

    endLine(",");
  }

  @override
  void visitMethodElement(MethodElement element) {
    if (element.name.startsWith("_")) {
      return;
    }

    var libraryName = libraryPrefix.lookupPrefix(element.library.identifier);
    if (libraryName.isNotEmpty) {
      libraryName = "$libraryName.";
    }

    var name = libraryName;

    var className = "";
    if (element.enclosingElement is ClassElement) {
      className = (element.enclosingElement as ClassElement).displayName;
    }

    if (element.isStatic) {
      final className = (element.enclosingElement as ClassElement).displayName;
      name = "$libraryName$className.${element.displayName}";
      write("'${element.key}':()=>$name");
    } else {
      if (_operatorFunctions.contains(element.name)) {
        write("'${element.key}':($className target,other)=>");
        write("target${element.name}other");
        endLine(",");
        return;
      } else if (element.name == "[]") {
        write("'${element.key}':($className target,index)=>");
        buffer.write("target[index]");
        endLine(",");
        return;
      } else if (element.name == "[]=") {
        write("'${element.key}':($className target,index,other)=>");
        buffer.write("target[index]=other");
        endLine(",");
        return;
      } else if (element.name == "unary-") {
        write("'${element.key}':($className target)=>");
        buffer.write("-target");
        endLine(",");
        return;
      } else if (element.name == "unary+") {
        write("'${element.key}':($className target)=>");
        buffer.write("+target");
        endLine(",");
        return;
      } else if (element.name == "~") {
        write("'${element.key}':($className target)=>");
        buffer.write("~target");
        endLine(",");
        return;
      }
      name = "target.${element.displayName}";
      write("'${element.key}':($className target)=>$name");
    }

    endLine(",");
  }
}

class AbsVisitor extends ElementVisitor<void> {
  @override
  void visitAugmentationImportElement(AugmentationImportElement element) {}

  @override
  void visitClassElement(ClassElement element) {}

  @override
  void visitCompilationUnitElement(CompilationUnitElement element) {}

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
  void visitLibraryElement(LibraryElement element) {}

  @override
  void visitLibraryExportElement(LibraryExportElement element) {}

  @override
  void visitLibraryImportElement(LibraryImportElement element) {}

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
