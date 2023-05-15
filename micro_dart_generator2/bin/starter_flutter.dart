import 'dart:convert';
import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/file_system/physical_file_system.dart';
import 'package:analyzer/src/util/sdk.dart';
import 'visitor.dart';

void main(List<String> arguments) async {
  var entity = Directory(
      "/Users/lixin/Documents/FlutterWorkspace/micro_dart/examples/flutter_example/lib");

  print("sdkPath: ${getSdkPath()}");

  final collection = AnalysisContextCollection(
      includedPaths: [entity.absolute.path],
      resourceProvider: PhysicalResourceProvider.INSTANCE);

  for (var context in collection.contexts) {
    var result = (await context.currentSession
            .getLibraryByUri("package:flutter_example/widget.dart"))
        as LibraryElementResult;
    StringBuffer buffer = StringBuffer();
    var map = result.element.accept(MicroElementVisitor(buffer));

    File("print/flutter_example.txt").writeAsStringSync(jsonEncode(map));
  }
}
