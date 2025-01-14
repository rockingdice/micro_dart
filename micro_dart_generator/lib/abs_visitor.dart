import 'package:analyzer/dart/element/element.dart';

class AbsVisitor implements ElementVisitor<void> {
  @override
  void visitAugmentationImportElement(AugmentationImportElement element) {
    // TODO: implement visitAugmentationImportElement
  }

  @override
  void visitClassElement(ClassElement element) {
    // TODO: implement visitClassElement
  }

  @override
  void visitCompilationUnitElement(CompilationUnitElement element) {
    element.visitChildren(this);
  }

  @override
  void visitConstructorElement(ConstructorElement element) {
    // TODO: implement visitConstructorElement
  }

  @override
  void visitEnumElement(EnumElement element) {
    // TODO: implement visitEnumElement
  }

  @override
  void visitExtensionElement(ExtensionElement element) {
    // TODO: implement visitExtensionElement
  }

  @override
  void visitFieldElement(FieldElement element) {
    // TODO: implement visitFieldElement
  }

  @override
  void visitFieldFormalParameterElement(FieldFormalParameterElement element) {
    // TODO: implement visitFieldFormalParameterElement
  }

  @override
  void visitFunctionElement(FunctionElement element) {
    // TODO: implement visitFunctionElement
  }

  @override
  void visitGenericFunctionTypeElement(GenericFunctionTypeElement element) {
    // TODO: implement visitGenericFunctionTypeElement
  }

  @override
  void visitLabelElement(LabelElement element) {
    // TODO: implement visitLabelElement
  }

  @override
  void visitLibraryAugmentationElement(LibraryAugmentationElement element) {
    // TODO: implement visitLibraryAugmentationElement
  }

  @override
  void visitLibraryElement(LibraryElement element) {
    // TODO: implement visitLibraryElement
  }

  @override
  void visitLibraryExportElement(LibraryExportElement element) {
    // TODO: implement visitLibraryExportElement
  }

  @override
  void visitLibraryImportElement(LibraryImportElement element) {
    // TODO: implement visitLibraryImportElement
  }

  @override
  void visitLocalVariableElement(LocalVariableElement element) {
    // TODO: implement visitLocalVariableElement
  }

  @override
  void visitMethodElement(MethodElement element) {
    // TODO: implement visitMethodElement
  }

  @override
  void visitMixinElement(MixinElement element) {
    // TODO: implement visitMixinElement
  }

  @override
  void visitMultiplyDefinedElement(MultiplyDefinedElement element) {
    // TODO: implement visitMultiplyDefinedElement
  }

  @override
  void visitParameterElement(ParameterElement element) {
    // TODO: implement visitParameterElement
  }

  @override
  void visitPartElement(PartElement element) {
    // TODO: implement visitPartElement
  }

  @override
  void visitPrefixElement(PrefixElement element) {
    // TODO: implement visitPrefixElement
  }

  @override
  void visitPropertyAccessorElement(PropertyAccessorElement element) {
    // TODO: implement visitPropertyAccessorElement
  }

  @override
  void visitSuperFormalParameterElement(SuperFormalParameterElement element) {
    // TODO: implement visitSuperFormalParameterElement
  }

  @override
  void visitTopLevelVariableElement(TopLevelVariableElement element) {
    // TODO: implement visitTopLevelVariableElement
  }

  @override
  void visitTypeAliasElement(TypeAliasElement element) {
    // TODO: implement visitTypeAliasElement
  }

  @override
  void visitTypeParameterElement(TypeParameterElement element) {
    // TODO: implement visitTypeParameterElement
  }
}
