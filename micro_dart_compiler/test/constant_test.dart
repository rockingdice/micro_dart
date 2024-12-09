import 'dart:io';

import 'env.dart';
import 'package:test/test.dart';

void main() {
  group('Constant tests', () {
    test(':test constant internal class', () async {
      String fileName = "test_constant_internal_class.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson(
            "$testCasePath/$fileName", pluginUriRegExp, program.component);
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

      var returnValue =
          engine.callStaticFunction<String>(pluginUri, "main", [], {});
      expect(returnValue, "0 1 1 constb  1 ");
    });

    test(':test constant list', () async {
      String fileName = "test_constant_list.dart";
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
      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          engine.callStaticFunction<String>(pluginUri, "main", [], {});
      expect(returnValue, "0123");
    });

    test(':test constant map', () async {
      String fileName = "test_constant_map.dart";
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
      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          engine.callStaticFunction<String>(pluginUri, "main", [], {});
      expect(returnValue, "abc012");
    });

    test(':test constant set', () async {
      String fileName = "test_constant_set.dart";
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
      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          engine.callStaticFunction<String>(pluginUri, "main", [], {});
      expect(returnValue, "012");
    });

    test(':test constant symbol', () async {
      String fileName = "test_constant_symbol.dart";
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
      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          engine.callStaticFunction<String>(pluginUri, "main", [], {});
      expect(returnValue, "Symbol(\"a\")");
    });
  });
}
