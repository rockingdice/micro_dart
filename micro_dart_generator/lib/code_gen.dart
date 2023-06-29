import 'package:analyzer/dart/element/element.dart';

import 'abs_visotor.dart';
import 'overwrite_strategy.dart';
import 'extenation.dart';

class CodeGen extends AbsVisitor {
  final OverwriteStrategy overwriteStrategy;
  CodeGen(this.overwriteStrategy);

  @override
  void visitLibraryElement(LibraryElement element) {
    if (element.name.startsWith("_")) {
      return;
    }
    if (overwriteStrategy.ingoreKeys.contains(element.identifier)) {
      return;
    }
    element.visitChildren(this);
  }

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
  }
}
