import 'dart:io';
import 'package:micro_dart_compiler/compiler/ast/ast_to_json.dart';
import 'package:micro_dart_compiler/compiler/compiler.dart';
// import 'package:micro_dart_proxy_core/generated/core.g.dart';
import 'package:micro_dart_runtime/runtime/engine.dart';

import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Futures tests', () {
    test(':test future', () async {
      String fileName = "test_future.dart";
      var returnValue = await singleFileTest(fileName, isAsync: true);

      expect(returnValue, 1);
    });

    test(':test future2', () async {
      String fileName = "test_future2.dart";
      var returnValue = await singleFileTest(fileName, isAsync: true);
      expect(returnValue, 1);
    });

    test(':test future3', () async {
      String fileName = "test_future3.dart";
      var returnValue = await singleFileTest(fileName, waitClean: true);

      expect(returnValue, 0);
    });
  });
}
