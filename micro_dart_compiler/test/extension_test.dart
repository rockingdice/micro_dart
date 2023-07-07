import 'dart:io';
import 'env.dart';
import 'package:test/test.dart';

import 'package:micro_dart_runtime/generated/core.g.dart';

void main() {
  group('Extension tests', () {
    test(':test extension', () async {
      String fileName = "test_extension.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson(
            "$testCasePath/$fileName", pluginUriRegExp, program.component);
      }
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          engine.callStaticFunction<String>(pluginUri, "main", [], {});
      expect(returnValue, "test");
    });
  });

  test(':test extension2', () async {
    String fileName = "test_extension2.dart";
    var file = File("$testCasePath$fileName");
    var sources = <String, String>{'main.dart': file.readAsStringSync()};
    var program = await compileSource(pluginUriRegExp, options, sources);
    if (astToJsonFlag) {
      astToJson("$testCasePath/$fileName", pluginUriRegExp, program.component);
      writeComponentToText(program.component!,
          path: "$testCasePath$fileName.txt");
    }
    var engine = createMicroDartEngine(program.write().buffer.asByteData());

    if (printOp) {
      engine.debug = true;
      engine.printOpcodes();
    }

    var returnValue =
        engine.callStaticFunction<String>(pluginUri, "main", [], {});
    expect(returnValue, "test");
  });
}
