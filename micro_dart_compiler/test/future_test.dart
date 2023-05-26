// @dart = 2.9

import 'dart:io';
import 'env.dart';
import 'package:test/test.dart';

const bool astToJsonFlag = true;
const bool printOp = true;

void main() {
  group('Futures tests', () {
    test(':test future', () async {
      String fileName = "test_future.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());

      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue = await runtime
          .callStaticFunction(pluginUri, "main", [], {}, debug: printOp);
      expect(returnValue, 1);
    });

    test(':test future2', () async {
      String fileName = "test_future2.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());

      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue = await runtime
          .callStaticFunction(pluginUri, "main", [], {}, debug: printOp);
      expect(returnValue, 1);
    });
  });
}
