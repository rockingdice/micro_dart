import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart' as cb;
import 'package:dart_style/dart_style.dart';

import 'abs_visotor.dart';
import 'namedsystem.dart';
import 'overwrite_strategy.dart';
import 'extenation.dart';

class CodeGen extends AbsVisitor {
  final OverwriteStrategy overwriteStrategy;
  final NamedSystem namedSystem;
  final dartFormatter = DartFormatter();

  final Set<cb.Directive> importList = {};
  final Set<cb.Class> proxyClassList = {};
  CodeGen(this.namedSystem, this.overwriteStrategy);

  String generate() {
    var library = cb.Library((p0) => p0
      ..directives.add(cb.Directive.import(
          "package:micro_dart_runtime/micro_dart_runtime.dart",
          as: "m"))
      ..directives.addAll(importList)
      ..body.add(cb.Method((p0) => p0
        ..name = 'getLibrary'
        ..requiredParameters.add(cb.Parameter((p0) => p0
          ..name = 'engine'
          ..type = cb.refer("m.MicroDartEngine")))
        ..returns = cb.refer("Map<String,Function>")
        ..body = cb.literalMap({}).code))
      ..body.addAll(proxyClassList));

    return dartFormatter.format(library.accept(cb.DartEmitter()).toString());
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
      importList.add(cb.Directive.import(element.identifier));
    }
    overwriteStrategy.libraryAddImports[element.identifier]?.forEach((element) {
      importList.add(element);
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
      Set<String> showlist = {};
      Set<String> hidelist = {};
      for (var element in element.combinators) {
        if (element is ShowElementCombinator) {
          showlist.addAll(element.shownNames);
        } else if (element is HideElementCombinator) {
          hidelist.addAll(element.hiddenNames);
        }
      }

      importList.add(cb.Directive.import(element.importedLibrary!.identifier,
          show: showlist.toList(), hide: hidelist.toList()));
    }
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
    if (!element.isFinal && !element.isInterface) {
      proxyClassList.add(createClassProxy(element));
    }
  }

  cb.Class createClassProxy(ClassElement element) {
    return cb.Class((b) {
      b.name = "\$${element.name}";
      b.modifier = element.isBase ? cb.ClassModifier.base : null;
      b.extend = cb.TypeReference((b) {
        b.symbol = element.name;
        for (var element in element.typeParameters) {
          b.types.add(cb.refer(element.name));
        }
      });
      b.types.addAll(
          element.typeParameters.map<cb.TypeReference>((e) => cb.TypeReference(
                (p0) {
                  p0.symbol = e.name;
                  if (e.bound != null) {
                    p0.bound = cb.refer(e.bound.toString());
                  }
                },
              )));
      b.mixins.add(cb.refer("m.InstanceBridge"));
      b.fields.add(cb.Field((f) {
        f.type = cb.refer("m.TypeRef");
        f.modifier = cb.FieldModifier.final$;
        f.name = "bridgeType";
        f.annotations.add(cb.refer("override"));
        f.assignment = cb.refer("const m.TypeRef").call([
          cb.literalString(element.library.identifier),
          cb.literalString(element.name),
          cb.literalBool(true)
        ]).code;
      }));

      final constructors = <cb.Constructor>[];
      for (var element in element.constructors) {
        if (element.isPrivate || element.isFactory) {
          continue;
        }

        constructors.add(cb.Constructor((p0) {
          if (element.name.isNotEmpty) {
            p0.name = element.name;
          }
          List<cb.Reference> posational = [];
          Map<String, cb.Reference> named = {};
          for (var element in element.parameters) {
            if (element.isOptional) {
              p0.optionalParameters.add(cb.Parameter((p0) {
                p0.name = element.name;
                if (element.isNamed) {
                  p0.named = true;
                  named[element.name] = cb.refer(element.name);
                } else {
                  posational.add(cb.refer(element.name));
                }

                if (element.hasDefaultValue) {
                  p0.defaultTo = cb.refer(element.defaultValueCode!).code;
                }
                p0.type = cb.refer(element.type.toString());
              }));
            } else {
              p0.requiredParameters.add(cb.Parameter((p0) {
                p0.name = element.name;
                if (element.isNamed) {
                  p0.named = true;
                  named[element.name] = cb.refer(element.name);
                } else {
                  posational.add(cb.refer(element.name));
                }

                if (element.hasDefaultValue) {
                  p0.defaultTo = cb.refer(element.defaultValueCode!).code;
                }
                p0.type = cb.refer(element.type.toString());
              }));
            }
          }

          if (element.parameters.isNotEmpty || element.name.isNotEmpty) {
            if (element.name.isNotEmpty) {
              p0.initializers.add(cb
                  .refer("super")
                  .property(element.name)
                  .call(posational, named)
                  .code);
            } else {
              p0.initializers
                  .add(cb.refer("super").call(posational, named).code);
            }
          }
        }));
      }

      b.constructors.addAll(constructors);
    });
  }
}
