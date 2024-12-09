import 'dart:io';
import 'env.dart';
import 'package:test/test.dart';

void main() {
  group('Assert tests', () {
    test(':test assert', () async {
      String fileName = "test_assert.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson(
            "$testCasePath/$fileName", pluginUriRegExp, program.component);
      }
      var engine =
          MicroDartEngine.fromData(program.write().buffer.asByteData());
      engine.setExternalFunctions(libraryMirrors);

      //createMicroDartEngine(program.write().buffer.asByteData());

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
