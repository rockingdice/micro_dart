// @dart = 2.9

import 'dart:io';

import 'package:front_end/src/api_unstable/vm.dart';
import 'package:micro_dart_compiler/micro_dart_compiler.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'package:test/test.dart';

import 'ast_to_json.dart';

const String pluginUri = "test:///main.dart";
const String testCasePath = "../examples/testcases/";
final CompilerOptions options = CompilerOptions()
  ..verbose = false
  ..nnbdMode = NnbdMode.Strong;

const bool astToJsonFlag = true;
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
        astToJson("testprint/$fileName", pluginUri, program.component);
      }
      var interpreter =
          MicroDartInterpreter.fromData(program.write().buffer.asByteData());

      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.executeLib(pluginUri, "main", [], {}, debug: true);
      expect(returnValue, 2);
    });

    test(':test call', () async {
      String fileName = "test_call.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("testprint/$fileName", pluginUri, program.component);
      }
      var interpreter =
          MicroDartInterpreter.fromData(program.write().buffer.asByteData());
      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.executeLib(pluginUri, "main", [], {}, debug: true);
      expect(returnValue, 3);
    });

    test(':test global field', () async {
      String fileName = "test_global_field.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("testprint/$fileName", pluginUri, program.component);
      }
      var interpreter =
          MicroDartInterpreter.fromData(program.write().buffer.asByteData());
      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.executeLib(pluginUri, "main", [], {}, debug: true);

      expect(returnValue, 2);
    });

    test(':test call external', () async {
      String fileName = "test_call_external.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program =
          await MicroCompiler.compileSource(pluginUri, options, sources);
      if (astToJsonFlag) {
        astToJson("testprint/$fileName", pluginUri, program.component);
      }
      var interpreter =
          MicroDartInterpreter.fromData(program.write().buffer.asByteData());
      if (printOp) {
        interpreter.printOpcodes();
      }

      var runtime = interpreter.createRuntime();

      var returnValue =
          runtime.executeLib(pluginUri, "main", [], {}, debug: true);

      expect(returnValue, 3);
    });
  });
}
