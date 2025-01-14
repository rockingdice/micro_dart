import 'dart:io';
import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Futures tests', () {
    test(':generic test', () async {
      String fileName = "test_generic.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 1);
    });
  });
}
