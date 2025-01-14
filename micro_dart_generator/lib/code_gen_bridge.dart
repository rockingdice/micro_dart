import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart' as cb;
import 'package:dart_style/dart_style.dart';

import 'abs_visitor.dart';
import 'named_system.dart';
import 'overwrite_strategy.dart';
import 'extensions.dart';

class CodeGenBridge extends AbsVisitor {
  final OverwriteStrategy overwriteStrategy;
  final NamedSystem namedSystem;
  final dartFormatter = DartFormatter();

  final List<cb.Directive> importList = [];
  final List<cb.Class> proxyClassList = [];
  CodeGenBridge(this.namedSystem, this.overwriteStrategy);

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
    if (overwriteStrategy.ignoreKeys.contains(element.identifier)) {
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

    if (overwriteStrategy.libraryIgnoreImports[element.library.identifier]
            ?.contains(element.importedLibrary!.identifier) ??
        false) {
      return;
    }

    if (!namedSystem.isCoreLibrary(element.importedLibrary!.identifier)) {
      Set<String> showList = {};
      Set<String> hideList = {};
      for (var element in element.combinators) {
        if (element is ShowElementCombinator) {
          showList.addAll(element.shownNames);
        } else if (element is HideElementCombinator) {
          hideList.addAll(element.hiddenNames);
        }
      }

      importList.add(cb.Directive.import(element.importedLibrary!.identifier,
          show: showList.toList(), hide: hideList.toList()));
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

    if (!element.isConstructable) {
      return;
    }

    if (overwriteStrategy.ignoreKeys.contains(element.key)) {
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
        b.symbol = "m.InstanceBridge";
        b.types.add(cb.TypeReference(
          (p0) {
            p0.symbol = element.name;
            p0.types.addAll(element.typeParameters
                .map<cb.TypeReference>((e) => cb.TypeReference(
                      (p0) {
                        p0.symbol = e.name;
                      },
                    )));
          },
        ));
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
      b.implements.add(cb.TypeReference((b) {
        b.symbol = element.name;
        b.types.addAll(element.typeParameters
            .map<cb.TypeReference>((e) => cb.TypeReference(
                  (p0) {
                    p0.symbol = e.name;
                  },
                )));
      }));
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

      b.fields.add(cb.Field((f) {
        f.type = cb.refer("Map<String, Function>");
        f.modifier = cb.FieldModifier.final$;
        f.late = true;
        f.name = "superGetters";
        f.annotations.add(cb.refer("override"));
        f.assignment = cb.literalMap({}).code;
      }));

      final constructors = <cb.Constructor>[];
      for (var element in element.constructors) {
        if (element.isPrivate) {
          continue;
        }

        constructors.add(cb.Constructor((p0) {
          if (element.name.isNotEmpty) {
            p0.name = element.name;
          }
          p0.factory = element.isFactory;
          List<cb.Reference> positional = [];
          Map<String, cb.Reference> named = {};
          for (var element in element.parameters) {
            if (element.isOptional) {
              p0.optionalParameters.add(cb.Parameter((p0) {
                p0.name = element.name;
                if (element.isNamed) {
                  p0.named = true;
                  named[element.name] = cb.refer(element.name);
                } else {
                  positional.add(cb.refer(element.name));
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
                  positional.add(cb.refer(element.name));
                }

                if (element.hasDefaultValue) {
                  p0.defaultTo = cb.refer(element.defaultValueCode!).code;
                }
                p0.type = cb.refer(element.type.toString());
              }));
            }
          }
          if (element.isFactory) {
            p0.lambda = true;
            p0.body = cb.Code(element.source.contents.data);
          } else {
            if (element.parameters.isNotEmpty || element.name.isNotEmpty) {
              if (element.name.isNotEmpty) {
                p0.initializers.add(cb
                    .refer("super")
                    .property(element.name)
                    .call(positional, named)
                    .code);
              } else {
                p0.initializers
                    .add(cb.refer("super").call(positional, named).code);
              }
            }
          }
        }));
      }

      b.constructors.addAll(constructors);
    });
  }
}
