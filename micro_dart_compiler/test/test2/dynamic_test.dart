import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Dynamic tests', () {
    test(':dynamic_test', () async {
      String fileName = "dynamic_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
          resultCallback: (returnValue) {
        expect(returnValue,
            "truetruefalsefalsefalsefalsefalsefalsefalsefalsefalsetruefalsetruetruetruetrue");
      });
    });

    test(':field_runtime_test', () async {
      String fileName = "field_runtime_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
          resultCallback: (returnValue) {
        expect(returnValue, "1A toString");
      });
    });

    test(':hash_code_test', () async {
      String fileName = "hash_code_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
          resultCallback: (returnValue) {
        expect(returnValue, "34803 34803 true");
      });
    });

    test(':invoke_test', () async {
      String fileName = "invoke_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
          resultCallback: (returnValue) {
        expect(returnValue, "truetruefalsetruetruetruetrue");
      });
    });

    test(':set_test', () async {
      String fileName = "set_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
          resultCallback: (returnValue) {
        expect(returnValue, "truefalse");
      });
    });

    test(':dynamic_keyword_test_case', () async {
      String fileName = "dynamic_keyword_test_case.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
          resultCallback: (returnValue) {
        expect(returnValue, "1234678");
      });
    });
  });
}
