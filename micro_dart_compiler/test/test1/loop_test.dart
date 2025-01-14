import 'dart:io';
import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Loop tests', () {
    test(':test while', () async {
      String fileName = "test_while.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 10);
    });

    test(':test while2', () async {
      String fileName = "test_while2.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 6);
    });

    test(':test do while', () async {
      String fileName = "test_do_while.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 10);
    });

    test(':test for', () async {
      String fileName = "test_for.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 9);
    });

    test(':test for in', () async {
      String fileName = "test_for_in.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 9);
    });

    test(':test for if', () async {
      String fileName = "test_for_if.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 5);
    });

    test(':test if else', () async {
      String fileName = "test_if_else.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 6);
    });

    test(':test switch', () async {
      String fileName = "test_switch.dart";
      var returnValue = await singleFileTest(fileName);
      expect(returnValue, 7);
    });
  });
}
