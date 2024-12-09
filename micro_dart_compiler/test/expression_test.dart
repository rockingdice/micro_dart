import 'dart:io';
import 'env.dart';
import 'package:test/test.dart';

void main() {
  group('Expression tests', () {
    test(':test Conditional', () async {
      String fileName = "test_conditional.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson(
            "$testCasePath/$fileName", pluginUriRegExp, program.component);
      }
      if (printOp) {
        program.printOpcodes();
      }
      var engine =
          MicroDartEngine.fromData(program.write().buffer.asByteData());
      engine.setExternalFunctions(libraryMirrors);
      engine.debug = true;

      var returnValue =
          engine.callStaticFunction<bool>(pluginUri, "main", [], {});
      expect(returnValue, true);
    });
  });
}
