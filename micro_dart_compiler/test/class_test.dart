// @dart = 2.9

import 'dart:io';
import 'env.dart';
import 'package:test/test.dart';

const bool astToJsonFlag = true;
const bool printOp = true;

void main() {
  group('Class tests', () {
    test(':test class basic', () async {
      String fileName = "test_class_basic.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUri, program.component);
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
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: true);
      expect(returnValue, 14);
    });

    test(':test class extends', () async {
      String fileName = "test_class_extends.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUri, program.component);
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
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: true);
      expect(returnValue, 22);
    });

    test(':test class extension', () async {
      String fileName = "test_class_extension.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUri, program.component);
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
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: true);
      expect(returnValue, 10);
    });

    test(':test class mixin', () async {
      String fileName = "test_class_mixin.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUri, program.component);
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
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: true);
      expect(returnValue, 10);
    });
  });
}
