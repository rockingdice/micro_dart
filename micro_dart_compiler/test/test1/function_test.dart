import 'dart:io';
import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Function tests', () {
    test(':test scope', () async {
      String fileName = "test_scope.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 2);
      });
    });

    test(':test function call basic', () async {
      String fileName = "test_function_call_basic.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 3);
      });
    });

    test(':test function global field', () async {
      String fileName = "test_function_global_field.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 100);
      });
    });

    test(':test function call external', () async {
      String fileName = "test_function_call_external.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 10);
      });
    });

    test(':test function anonymous', () async {
      String fileName = "test_function_anonymous.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 2);
      });
    });

    test(':test function anonymous2', () async {
      String fileName = "test_function_anonymous2.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 17);
      });
    });

    test(':test function anonymous3', () async {
      String fileName = "test_function_anonymous3.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 2);
      });
    });

    test(':test function anonymous inline', () async {
      String fileName = "test_function_anonymous_inline.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 2);
      });
    });

    test(':test function tear off', () async {
      String fileName = "test_function_tear_off.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 3);
      });
    });

    test(':test function tear off2', () async {
      String fileName = "test_function_tear_off2.dart";
      var returnValue = await singleFileTest(fileName);

      expect(returnValue, 1);
    });

    test(':test function tear off3', () async {
      String fileName = "test_function_tear_off3.dart";
      var returnValue = await singleFileTest(fileName);

      expect(returnValue, -2);
    });

    test(':test Abstract Super Property Get', () async {
      String fileName = "super_property_get.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 42);
    });

    test(':test Abstract Super Property Get2', () async {
      String fileName = "super_property_get2.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 41);
    });
  });
}
