import 'dart:io';
import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Extension tests', () {
    test(':test extension', () async {
      String fileName = "test_extension.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, "test");
      });
    });
  });

  test(':test extension2', () async {
    String fileName = "test_extension2.dart";
    await singleFileTest(fileName, resultCallback: (returnValue) {
      expect(returnValue, "test");
    });
  });
}
