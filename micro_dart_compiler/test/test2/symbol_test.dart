import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Symbol tests', () {
    test(':conflict_test', () async {
      String fileName = "conflict_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}symbol/",
          resultCallback: (returnValue) {});
    });

    test(':literal_runtime_1_test', () async {
      String fileName = "literal_runtime_1_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}symbol/",
          resultCallback: (returnValue) {});
    });
  });
}
