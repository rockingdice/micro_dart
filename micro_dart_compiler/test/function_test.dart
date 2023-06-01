// @dart = 2.9

import 'dart:io';
import 'env.dart';
import 'package:test/test.dart';

const bool astToJsonFlag = false;
const bool printOp = false;

void main() {
  group('Function tests', () {
    test(':test scope', () async {
      String fileName = "test_scope.dart";
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
      expect(returnValue, 2);
    });

    test(':test function call basic', () async {
      String fileName = "test_function_call_basic.dart";
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
      expect(returnValue, 3);
    });

    test(':test function global field', () async {
      String fileName = "test_function_global_field.dart";
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

      expect(returnValue, 100);
    });

    test(':test function call external', () async {
      String fileName = "test_function_call_external.dart";
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

      expect(returnValue, 10);
    });

    test(':test function anonymous', () async {
      String fileName = "test_function_anonymous.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        // writeComponentToText(program.component,
        //     path: "$testCasePath$fileName.txt");
      }
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          engine.callStaticFunction<int>(pluginUri, "main", [], {});

      expect(returnValue, 2);
    });

    test(':test function anonymous2', () async {
      String fileName = "test_function_anonymous2.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        // writeComponentToText(program.component,
        //     path: "$testCasePath$fileName.txt");
      }
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          engine.callStaticFunction<int>(pluginUri, "main", [], {});

      expect(returnValue, 17);
    });

    test(':test function anonymous inline', () async {
      String fileName = "test_function_anonymous_inline.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        // writeComponentToText(program.component,
        //     path: "$testCasePath$fileName.txt");
      }
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          engine.callStaticFunction<int>(pluginUri, "main", [], {});

      expect(returnValue, 2);
    });

    test(':test function tear off', () async {
      String fileName = "test_function_tear_off.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        // writeComponentToText(program.component,
        //     path: "$testCasePath$fileName.txt");
      }
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          engine.callStaticFunction<int>(pluginUri, "main", [], {});

      expect(returnValue, 3);
    });

    test(':test function tear off2', () async {
      String fileName = "test_function_tear_off2.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        // writeComponentToText(program.component,
        //     path: "$testCasePath$fileName.txt");
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

    test(':test function tear off3', () async {
      String fileName = "test_function_tear_off3.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        // writeComponentToText(program.component,
        //     path: "$testCasePath$fileName.txt");
      }
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          engine.callStaticFunction<int>(pluginUri, "main", [], {});

      expect(returnValue, -2);
    });

    test(':test Abstract Super Property Get', () async {
      String fileName = "super_property_get.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        // writeComponentToText(program.component,
        //     path: "$testCasePath$fileName.txt");
      }
      var engine = createMicroDartEngine(program.write().buffer.asByteData());

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue =
          engine.callStaticFunction<int>(pluginUri, "main", [], {});

      expect(returnValue, 42);
    });
  });

  test(':test Abstract Super Property Get2', () async {
    String fileName = "super_property_get2.dart";
    var file = File("$testCasePath$fileName");
    var sources = <String, String>{'main.dart': file.readAsStringSync()};
    var program = await compileSource(pluginUri, options, sources);
    if (astToJsonFlag) {
      astToJson("$testCasePath/$fileName", pluginUri, program.component);
      // writeComponentToText(program.component,
      //     path: "$testCasePath$fileName.txt");
    }
    var engine = createMicroDartEngine(program.write().buffer.asByteData());

    if (printOp) {
      engine.debug = true;
      engine.printOpcodes();
    }

    var returnValue = engine.callStaticFunction<int>(pluginUri, "main", [], {});

    expect(returnValue, 41);
  });
}
