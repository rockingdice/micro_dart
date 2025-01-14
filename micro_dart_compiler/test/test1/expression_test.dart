import 'dart:io';
import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Expression tests', () {
    test(':test Conditional', () async {
      String fileName = "test_conditional.dart";

      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, true);
      });
    });
  });
}
