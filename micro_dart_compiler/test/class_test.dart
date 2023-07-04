import 'dart:io';
import 'env.dart';
import 'package:test/test.dart';

import 'package:micro_dart_runtime/generated/core.g.dart';

void main() {
  group('Class tests', () {
    test(':test class basic', () async {
      String fileName = "test_class_basic.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
        writeComponentToText(program.component!,
            path: "$testCasePath$fileName.txt");
      }
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          await engine.callStaticFunction(pluginUri, "main", [], {});
      expect(returnValue, 14);
    });

    test(':test class extends', () async {
      String fileName = "test_class_extends.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
        writeComponentToText(program.component!,
            path: "$testCasePath$fileName.txt");
      }
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          await engine.callStaticFunction(pluginUri, "main", [], {});
      expect(returnValue, 22);
    });

    test(':test class extension', () async {
      String fileName = "test_class_extension.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
        writeComponentToText(program.component!,
            path: "$testCasePath$fileName.txt");
      }
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          await engine.callStaticFunction(pluginUri, "main", [], {});
      expect(returnValue, 10);
    });

    test(':test class mixin', () async {
      String fileName = "test_class_mixin.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
        writeComponentToText(program.component!,
            path: "$testCasePath$fileName.txt");
      }
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          await engine.callStaticFunction(pluginUri, "main", [], {});
      expect(returnValue, 10);
    });
  });

  test(':test class external extends', () async {
    String fileName = "test_class_external_extends.dart";
    var file = File("$testCasePath$fileName");
    var sources = <String, String>{'main.dart': file.readAsStringSync()};
    var program = await compileSource(pluginUriRegExp, options, sources);
    if (astToJsonFlag) {
      astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
      writeComponentToText(program.component!,
          path: "$testCasePath$fileName.txt");
    }
    var engine = createMicroDartEngine(program.write().buffer.asByteData());

    if (printOp) {
      engine.debug = true;
      engine.printOpcodes();
    }

    var returnValue =
        await engine.callStaticFunction(pluginUri, "main", [], {});
    expect(returnValue, "this is a message 6");
  });

  test(':test class external extends return', () async {
    String fileName = "test_class_external_extends_return.dart";
    var file = File("$testCasePath$fileName");
    var sources = <String, String>{'main.dart': file.readAsStringSync()};
    var program = await compileSource(pluginUriRegExp, options, sources);
    if (astToJsonFlag) {
      astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
      writeComponentToText(program.component!,
          path: "$testCasePath$fileName.txt");
    }
    var engine = createMicroDartEngine(program.write().buffer.asByteData());

    if (printOp) {
      engine.debug = true;
      engine.printOpcodes();
    }

    var returnValue =
        await engine.callStaticFunction(pluginUri, "main", [], {});
    expect(true, (returnValue is Deprecated));
  });
}
