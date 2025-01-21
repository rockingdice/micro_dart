import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Assign tests', () {
    test(':op_test', () async {
      String fileName = "op_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}assign/",
          resultCallback: (returnValue) {});
    });

    test(':to_type_runtime_test', () async {
      String fileName = "to_type_runtime_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}assign/",
          resultCallback: (returnValue) {
        expect(returnValue, "D");
      });
    });
  });
}
