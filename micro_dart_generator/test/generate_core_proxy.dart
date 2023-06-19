import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/file_system/physical_file_system.dart';
import 'package:micro_dart_generator/generator.dart';
import 'package:path/path.dart';

void main(List<String> arguments) async {
  //var flutterExampleDir = absolute(
  //    Directory(".").absolute.parent.parent.absolute.path,
  //    "examples/flutter_example");
  var rootPath = Directory(".").absolute.parent.parent.absolute.path;
  var exampleDir = absolute(rootPath, "examples/flutter_example");
  var compilerDir = absolute(rootPath, "micro_dart_compiler");
  final libDir = Directory(join(exampleDir, 'lib'));
  final generateDir = Directory(join(compilerDir, "test/generate"));

  print(libDir.path);
  print(generateDir.path);
  final collection = AnalysisContextCollection(
      includedPaths: [libDir.absolute.path],
      resourceProvider: PhysicalResourceProvider.INSTANCE);

  final List<String> libraryNames = [
    "dart:core",
    "dart:typed_data",
    "dart:async",
    "dart:collection",
    "dart:convert",
    "dart:developer",
    "dart:ffi",
    "dart:isolate",
    "dart:math",
    "dart:nativewrappers",
    "dart:io",
    //"dart:ui",
    //"package:flutter_example/test2.dart"
  ];
  var namedSystem = NamedSystem();

  var generateDirectory = Directory(generateDir.path);
  if (!generateDirectory.existsSync()) {
    generateDirectory.createSync(recursive: true);
  }
  generateDirectory.listSync().forEach((element) {
    element.deleteSync(recursive: true);
  });

  for (int i = 0; i < collection.contexts.length; i++) {
    for (var l in libraryNames) {
      var library =
          await collection.contexts[i].currentSession.getLibraryByUri(l);

      if (library is LibraryElementResult) {
        var generator = Generator(namedSystem);

        generator.visitLibraryElement(library.element);
        File("${generateDir.path}/${namedSystem.getLibraryName(library.element.identifier)}.g.dart")
            .writeAsStringSync(generator.generate().toString());
      } else {
        throw Exception("generate $l error : $library");
      }
    }
  }
  File("${generateDir.path}/micro_dart.g.dart")
      .writeAsStringSync(namedSystem.generate().toString());
}
