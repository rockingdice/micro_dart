// @dart = 2.9

import 'dart:io';
import 'env.dart';
import 'package:test/test.dart';

const bool astToJsonFlag = false;
const bool printOp = true;

void main() {
  group('Function tests', () {
    test(':test scope', () async {
      String fileName = "test_scope.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());

      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: printOp);
      expect(returnValue, 2);
    });

    test(':test function call basic', () async {
      String fileName = "test_function_call_basic.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());
      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: printOp);
      expect(returnValue, 3);
    });

    test(':test function global field', () async {
      String fileName = "test_function_global_field.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());
      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: printOp);

      expect(returnValue, 100);
    });

    test(':test function call external', () async {
      String fileName = "test_function_call_external.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());
      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: printOp);

      expect(returnValue, 10);
    });

    test(':test function anonymous', () async {
      String fileName = "test_function_anonymous.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        writeComponentToText(program.component,
            path: "$testCasePath$fileName.txt");
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());
      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: printOp);

      expect(returnValue, 2);
    });

    test(':test function anonymous2', () async {
      String fileName = "test_function_anonymous2.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        writeComponentToText(program.component,
            path: "$testCasePath$fileName.txt");
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());
      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: printOp);

      expect(returnValue, 16);
    });

    test(':test function anonymous inline', () async {
      String fileName = "test_function_anonymous_inline.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        writeComponentToText(program.component,
            path: "$testCasePath$fileName.txt");
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());
      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: printOp);

      expect(returnValue, 2);
    });

    test(':test function dynamic1', () async {
      String fileName = "test_function_dynamic1.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (true) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        writeComponentToText(program.component,
            path: "$testCasePath$fileName.txt");
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());
      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: printOp);

      expect(returnValue, 4);
    });

    test(':test function dynamic2', () async {
      String fileName = "test_function_dynamic2.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (true) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        writeComponentToText(program.component,
            path: "$testCasePath$fileName.txt");
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());
      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: printOp);

      expect(returnValue, 9);
    });

    test(':test function anonymous inline args', () async {
      String fileName = "test_function_anonymous_inline_args.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath/$fileName", pluginUri, program.component);
        writeComponentToText(program.component,
            path: "$testCasePath$fileName.txt");
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());

      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: printOp);

      expect(returnValue, 9);
    });
  });
}
