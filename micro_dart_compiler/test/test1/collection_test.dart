import 'dart:io';
import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Collection tests', () {
    test(':Iterable.join()', () async {
      String fileName = "test_collection_iterable_join.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, "12345");
      });
    });

    test(':Iterable.generate()', () async {
      String fileName = "test_collection_iterable_generate.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, "01234");
      });
    });

    test(':list concat test', () async {
      String fileName = "test_list_concat.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, "0123");
      });
    });
  });
}
