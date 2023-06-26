import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

import 'package:micro_dart_generator/extenation.dart';

import 'generator.dart';
import 'overwrite_strategy.dart';

class ClassProxyGenerator extends AbsVisitor {
  ClassProxyGenerator(super.namedSystem, super.overwriteStrategy);

  StringBuffer generate() {
    StringBuffer buffer = super.generate();

    return buffer;
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
