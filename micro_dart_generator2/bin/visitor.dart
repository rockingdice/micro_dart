import 'package:analyzer/dart/element/element.dart';
import 'package:micro_dart_generator2/extenation.dart';

class MicroElementVisitor extends ElementVisitor<Map<String, dynamic>> {
  final StringBuffer buffer;

  MicroElementVisitor(this.buffer);

  @override
  Map<String, dynamic>? visitAugmentationImportElement(
      AugmentationImportElement element) {
    return {"uri": element.uri.toString()};
  }

  @override
  Map<String, dynamic>? visitClassElement(ClassElement element) {
    return {
      "xtype": "ClassElement",
      "name": element.name,
      "displayName": element.displayName,
      "kind": element.kind.name,
      "isAbstract": element.isAbstract,
      "isFinal": element.isFinal,
      "constructors": element.constructors.map((e) => e.accept(this)).toList(),
      "fields": element.fields.map((e) => e.accept(this)).toList(),
      "methods": element.methods.map((e) => e.accept(this)).toList(),
      "accessors": element.accessors.map((e) => e.accept(this)).toList(),
    };
  }

  @override
  Map<String, dynamic>? visitCompilationUnitElement(
      CompilationUnitElement element) {
    return {
      "xtype": "CompilationUnitElement",
      "classes": element.classes.map((e) => e.accept(this)).toList(),
      "accessors": element.accessors.map((e) => e.accept(this)).toList(),
      "functions": element.functions.map((e) => e.accept(this)).toList(),
      "enums": element.enums.map((e) => e.accept(this)).toList(),
      "extensions": element.extensions.map((e) => e.accept(this)).toList(),
      "topLevelVariables":
          element.topLevelVariables.map((e) => e.accept(this)).toList(),
      "typeAliases": element.typeAliases.map((e) => e.accept(this)).toList(),
      "mixins": element.mixins.map((e) => e.accept(this)).toList(),
    };
  }

  @override
  Map<String, dynamic>? visitConstructorElement(ConstructorElement element) {
    return {
      "xtype": "ConstructorElement",
      "key": element.key,
      "name": element.name,
      "displayName": element.displayName,
      "library": element.library.identifier,
      "parameters": element.parameters.map((e) => e.accept(this)).toList(),
      "redirectedConstructor": element.redirectedConstructor?.accept(this),
      "returnType": {
        "library": element.returnType.element.library.identifier,
        "identifier": element.returnType.element.library.identifier,
        "displayName": element.returnType.element.displayName
      }
    };
  }

  @override
  Map<String, dynamic>? visitEnumElement(EnumElement element) {
    return {"xtype": "EnumElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitExtensionElement(ExtensionElement element) {
    return {"xtype": "ExtensionElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitFieldElement(FieldElement element) {
    return {
      "xtype": "FieldElement",
      "key": element.key,
      "name": element.name,
    };
  }

  @override
  Map<String, dynamic>? visitFieldFormalParameterElement(
      FieldFormalParameterElement element) {
    return {"xtype": "FieldFormalParameterElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitFunctionElement(FunctionElement element) {
    return {
      "xtype": "FunctionElement",
      "key": element.key,
      "name": element.name
    };
  }

  @override
  Map<String, dynamic>? visitGenericFunctionTypeElement(
      GenericFunctionTypeElement element) {
    return {"xtype": "GenericFunctionTypeElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitLabelElement(LabelElement element) {
    return {"xtype": "LabelElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitLibraryAugmentationElement(
      LibraryAugmentationElement element) {
    return {"xtype": "LibraryAugmentationElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitLibraryElement(LibraryElement element) {
    return {
      "xtype": "LibraryElement",
      "displayName": element.displayName,
      "identifier": element.identifier,
      "kind": element.kind.name,
      "children": element.children.map((e) => e.accept(this)).toList(),
    };
  }

  @override
  Map<String, dynamic>? visitLibraryExportElement(
      LibraryExportElement element) {
    return {
      "xtype": "LibraryExportElement",
      "libraty": element.exportedLibrary?.identifier,
    };
  }

  @override
  Map<String, dynamic>? visitLibraryImportElement(
      LibraryImportElement element) {
    return {
      "xtype": "LibraryImportElement",
      "libraty": element.importedLibrary?.identifier,
    };
  }

  @override
  Map<String, dynamic>? visitLocalVariableElement(
      LocalVariableElement element) {
    return {"xtype": "LocalVariableElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitMethodElement(MethodElement element) {
    return {
      "xtype": "MethodElement",
      "key": element.key,
      "name": element.name,
    };
  }

  @override
  Map<String, dynamic>? visitMixinElement(MixinElement element) {
    return {"xtype": "MixinElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitMultiplyDefinedElement(
      MultiplyDefinedElement element) {
    return {"xtype": "MultiplyDefinedElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitParameterElement(ParameterElement element) {
    return {"xtype": "ParameterElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitPartElement(PartElement element) {
    return {"xtype": "PartElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitPrefixElement(PrefixElement element) {
    return {"xtype": "PrefixElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitPropertyAccessorElement(
      PropertyAccessorElement element) {
    return {
      "xtype": "PropertyAccessorElement",
      "key": element.key,
      "name": element.name,
      "displayName": element.displayName,
      "isStatic": element.isStatic,
      "isGetter": element.isGetter,
      "isSetter": element.isSetter
    };
  }

  @override
  Map<String, dynamic>? visitSuperFormalParameterElement(
      SuperFormalParameterElement element) {
    return {"xtype": "SuperFormalParameterElement", "name": element.name};
  }

  @override
  Map<String, dynamic>? visitTopLevelVariableElement(
      TopLevelVariableElement element) {
    return {
      "xtype": "TopLevelVariableElement",
      "key": element.key,
      "name": element.name
    };
  }

  @override
  Map<String, dynamic>? visitTypeAliasElement(TypeAliasElement element) {
    return {"xtype": "TypeAliasElement"};
  }

  @override
  Map<String, dynamic>? visitTypeParameterElement(
      TypeParameterElement element) {
    return {"xtype": "TypeParameterElement", "name": element.name};
  }
}
