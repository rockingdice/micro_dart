import 'dart:io';
import 'env.dart';
import 'package:test/test.dart';

import 'generate/micro_dart.g.dart';

const bool astToJsonFlag = false;
const bool printOp = false;

void main() {
  group('Assert tests', () {
    test(':test assert', () async {
      String fileName = "test_assert.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
      }
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          engine.callStaticFunction<int>(pluginUri, "main", [], {});
      expect(returnValue, 1);
    });
  });
}
