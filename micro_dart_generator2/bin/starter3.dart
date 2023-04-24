import 'dart:convert';
import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/file_system/physical_file_system.dart';
import 'package:analyzer/src/util/sdk.dart';
import 'visitor.dart';

void main(List<String> arguments) async {
  var entity = Directory(
      "/Users/lixin/Documents/FlutterWorkspace/micro_dart/examples/cli_example/lib");

  print("sdkPath: ${getSdkPath()}");

  final collection = AnalysisContextCollection(
      includedPaths: [entity.absolute.path],
      resourceProvider: PhysicalResourceProvider.INSTANCE);

  for (var context in collection.contexts) {
    var result = (await context.currentSession
            .getLibraryByUri("package:cli_example/test2.dart"))
        as LibraryElementResult;
    StringBuffer buffer = StringBuffer();
    var map = result.element.accept(MicroElementVisitor(buffer));

    File("print/test2.txt").writeAsStringSync(jsonEncode(map));
  }
}
