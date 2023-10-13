import 'dart:io';
import 'env.dart';
import 'package:test/test.dart';

import 'package:micro_dart_runtime/generated/core.g.dart';

const bool astToJsonFlag = false;
const bool printOp = false;

void main() {
  group('Try tests', () {
    test(':throw', () async {
      String fileName = "test_throw.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
        writeComponentToText(program.component!,
            path: "$testCasePath$fileName.txt");
      }

      var engine =
          MicroDartEngine.fromData(program.write().buffer.asByteData());
      engine.setExternalFunctions(libraryMirrors);
      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      try {
        var returnValue = engine.callStaticFunction(pluginUri, "main", [], {});
        expect(returnValue, 2);
      } catch (error, stack) {
        print(error);
        expect(error, "throwTest2");
      }
    });

    test(':try catch basic', () async {
      String fileName = "test_try_catch.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
        writeComponentToText(program.component!,
            path: "$testCasePath$fileName.txt");
      }

      var engine =
          MicroDartEngine.fromData(program.write().buffer.asByteData());
      engine.setExternalFunctions(libraryMirrors);
      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue = engine.callStaticFunction(pluginUri, "main", [], {});
      expect(returnValue, 1);
    });

    test(':try catch rethrow', () async {
      String fileName = "test_try_catch_rethrow.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
        writeComponentToText(program.component!,
            path: "$testCasePath$fileName.txt");
      }

      var engine =
          MicroDartEngine.fromData(program.write().buffer.asByteData());
      engine.setExternalFunctions(libraryMirrors);
      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue = engine.callStaticFunction(pluginUri, "main", [], {});
      expect(returnValue, 1);
    });

    test(':try catch finally', () async {
      String fileName = "test_try_catch_finally.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
        writeComponentToText(program.component!,
            path: "$testCasePath$fileName.txt");
      }

      var engine =
          MicroDartEngine.fromData(program.write().buffer.asByteData());
      engine.setExternalFunctions(libraryMirrors);
      if (printOp) {
        // engine.debug = true;
        // engine.printOpcodes();
      }

      var returnValue = engine.callStaticFunction(pluginUri, "main", [], {});
      expect(returnValue, 1);
    });
  });
}
