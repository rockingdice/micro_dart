import 'dart:io';

import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Constant tests', () {
    test(':test constant internal class', () async {
      String fileName = "test_constant_internal_class.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, "0 1 1 constb  1 ");
      });
    });

    test(':test constant list', () async {
      String fileName = "test_constant_list.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, "0123");
      });
    });

    test(':test constant map', () async {
      String fileName = "test_constant_map.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, "abc012");
      });
    });

    test(':test constant set', () async {
      String fileName = "test_constant_set.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, "012");
      });
    });

    test(':test constant symbol', () async {
      String fileName = "test_constant_symbol.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, "Symbol(\"a\")");
      });
    });
  });
}
