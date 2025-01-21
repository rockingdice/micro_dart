import 'dart:io';
import 'package:kernel/kernel.dart';
import 'package:micro_dart_compiler/compiler/ast/ast_to_json.dart';
import 'package:micro_dart_compiler/compiler/compiler.dart';
// import 'package:micro_dart_proxy_core/generated/core.g.dart';

import 'package:micro_dart_runtime/micro_dart_runtime.dart';
import 'package:micro_dart_runtime/runtime/engine.dart';

import '../env.dart';
import 'package:test/test.dart';

const bool astToJsonFlag = false;
const bool printOp = false;

void main() {
  group('Try tests', () {
    test(':throw', () async {
      String fileName = "test_throw.dart";
      var file = File("$testCasePath1$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson(
            "$testCasePath1$fileName", pluginUriRegExp, program.component);
        writeComponentToText(program.component!,
            path: "$testCasePath1$fileName.txt");
      }

      var engine =
          MicroDartEngine.fromData(program.write().buffer.asByteData());
      engine.setMirrors(libraryMirrors, classMirrors, refTypeMirrors);
      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      try {
        var returnValue = engine.callStaticFunction(pluginUri, "main", [], {});
        expect(returnValue, 1);
      } catch (error, stack) {
        //print(error);
        expect(error, "throwTest2");
      }
    });

    test(':try catch basic', () async {
      String fileName = "test_try_catch.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 1);
    });

    test(':try catch rethrow', () async {
      String fileName = "test_try_catch_rethrow.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 1);
    });

    test(':try catch finally', () async {
      String fileName = "test_try_catch_finally.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 1);
    });
  });
}
