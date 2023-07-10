import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/file_system/physical_file_system.dart';
import 'package:micro_dart_generator/code_gen_mirror.dart';
import 'package:micro_dart_generator/namedsystem.dart';
import 'package:micro_dart_generator/overwrite_strategy.dart';
import 'package:path/path.dart';

void main(List<String> arguments) async {
  var rootPath = Directory(".").absolute.parent.parent.absolute.path;
  var overwriteStrategyPath =
      absolute(Directory(".").absolute.parent.path, "overwrite_strategy.json");
  var runtimeDir = absolute(rootPath, "micro_dart_runtime");
  final generateDir = Directory(join(runtimeDir, "lib/generated4"));
  final libDir = Directory(join(runtimeDir, 'lib'));

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
    "dart:io",
    //"dart:ui",
    //"dart:nativewrappers",
  ];
  var namedSystem = NamedSystem();
  var overwriteStrategy =
      OverwriteStrategy.fromFile(File(overwriteStrategyPath));

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
        var generator = CodeGenMirror(namedSystem, overwriteStrategy);

        generator.visitLibraryElement(library.element);
        File("${generateDir.path}/${namedSystem.getLibraryNameFileName(library.element.identifier)}")
            .writeAsStringSync(generator.generate());
      } else {
        throw Exception("generate $l error : $library");
      }
    }
  }
  File("${generateDir.path}/core.g.dart")
      .writeAsStringSync(namedSystem.generate2().toString());
}
