import 'dart:io';
import 'dart:math';
import '../env.dart';
import 'package:test/test.dart';
import 'package:micro_dart_proxy_test/proxy/test_class_external_extends_field_class.dart';

void main() {
  group('Class tests', () {
    test(':test class basic', () async {
      String fileName = "test_class_basic.dart";

      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 12);
      });
    });

    test(':test class extends', () async {
      String fileName = "test_class_extends.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 22);
      });
    });

    test(':test class extension', () async {
      String fileName = "test_class_extension.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 10);
      });
    });

    test(':test class mixin', () async {
      String fileName = "test_class_mixin.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 10);
      });
    });

    test(':test class external extends', () async {
      String fileName = "test_class_external_extends.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, "this is a message 6");
      });
    });

    test(':test class external extends return', () async {
      String fileName = "test_class_external_extends_return.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(true, (returnValue is Deprecated));
      });
    });
    test(':test class external extends fields', () async {
      String fileName = "test_class_external_extends_field.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, """1257adg3c4e6f""");
      });
    });
  });
}
