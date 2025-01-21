import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Assert tests', () {
    test(':assert_test', () async {
      String fileName = "assert_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}assert/",
          resultCallback: (returnValue) {
        expect(returnValue, true);
      });
    });

    test(':assignable_type_test', () async {
      String fileName = "assignable_type_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}assert/",
          resultCallback: (returnValue) {
        expect(returnValue, 327744233);
      });
    });

    test(':initializer_const_error2_runtime_test', () async {
      String fileName = "initializer_const_error2_runtime_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}assert/",
          resultCallback: (returnValue) {});
    });

    test(':initializer_test', () async {
      String fileName = "initializer_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}assert/",
          resultCallback: (returnValue) {
        expect(returnValue, true);
      });
    });

    test(':trailing_comma_runtime_test', () async {
      String fileName = "trailing_comma_runtime_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}assert/",
          resultCallback: (returnValue) {});
    });

    test(':with_type_test_or_cast_test', () async {
      String fileName = "with_type_test_or_cast_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}assert/",
          resultCallback: (returnValue) {});
    });
  });
}
