import 'dart:io';
import 'env.dart';
import 'package:test/test.dart';

import 'package:micro_dart_runtime/generated/core.g.dart';

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
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          await engine.callStaticFunctionAsync(pluginUri, "main", [], {});
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
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue = await await engine.callStaticFunctionAsync<Future>(
        pluginUri,
        "main",
        [],
        {},
      );
      expect(returnValue, 1);
    });

    test(':test future3', () async {
      String fileName = "test_future3.dart";
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

      var returnValue = await engine.callStaticFunctionWaitClean(
        pluginUri,
        "main",
        [],
        {},
      );

      expect(returnValue, 0);
    });
  });
}
