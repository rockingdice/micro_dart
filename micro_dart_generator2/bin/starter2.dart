import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/file_system/physical_file_system.dart';
import 'visitor2.dart';

void main(List<String> arguments) async {
  var entity = Directory(
      "/Users/lixin/Documents/FlutterWorkspace/micro_dart/examples/cli_example/lib");

  final collection = AnalysisContextCollection(
      includedPaths: [entity.absolute.path],
      resourceProvider: PhysicalResourceProvider.INSTANCE);

  for (var context in collection.contexts) {
    var result = (await context.currentSession.getLibraryByUri("dart:core"))
        as LibraryElementResult;

    String s = BufferVisitor().generate("coreLibrary", result.element);
    File("/Users/lixin/Documents/FlutterWorkspace/micro_dart/examples/cli_example/lib/core.g.dart")
        .writeAsStringSync(s);
  }
}
