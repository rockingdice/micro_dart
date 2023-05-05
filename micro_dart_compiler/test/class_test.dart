// @dart = 2.9

import 'dart:io';

import 'package:front_end/src/api_unstable/vm.dart';
import 'package:micro_dart_compiler/micro_dart_compiler.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'package:test/test.dart';

import 'ast_to_json.dart';
import 'ast_to_text.dart';

const String pluginUri = "test:///main.dart";
const String testCasePath = "../examples/testcases/";
const String flatterPatchedSdk =
    "/Users/lixin/Documents/flutter_macos_stable/bin/cache/artifacts/engine/common/flutter_patched_sdk/";
final Uri sdkRoot = ensureFolderPath(flatterPatchedSdk);
final Uri sdkSummary = sdkRoot.resolve('platform_strong.dill');
final CompilerOptions options = CompilerOptions()
  ..sdkRoot = sdkRoot
  ..sdkSummary = sdkSummary
  ..verbose = false
  ..nnbdMode = NnbdMode.Strong;

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
          MicroDartEngine.fromData(program.write().buffer.asByteData());

      if (printOp) {
        interpreter.printOpcodes();
      }
      interpreter.addExternalFunctions(coreLibrary);
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
        //writeComponentToText(program.component,
        //    path: "$testCasePath$fileName.txt");
      }
      var interpreter =
          MicroDartEngine.fromData(program.write().buffer.asByteData());

      if (printOp) {
        interpreter.printOpcodes();
      }
      interpreter.addExternalFunctions(coreLibrary);
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
        //writeComponentToText(program.component,
        //    path: "$testCasePath$fileName.txt");
      }
      var interpreter =
          MicroDartEngine.fromData(program.write().buffer.asByteData());

      if (printOp) {
        interpreter.printOpcodes();
      }
      interpreter.addExternalFunctions(coreLibrary);
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
          MicroDartEngine.fromData(program.write().buffer.asByteData());

      if (printOp) {
        interpreter.printOpcodes();
      }
      interpreter.addExternalFunctions(coreLibrary);
      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.callStaticFunction(pluginUri, "main", [], {}, debug: true);
      expect(returnValue, 10);
    });
  });
}
