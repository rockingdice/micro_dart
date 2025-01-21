import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Switch tests', () {
    test(':aborting_switch_case_test', () async {
      String fileName = "aborting_switch_case_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}switch/",
          resultCallback: (returnValue) {});
    });

    test(':backward_jump_test', () async {
      String fileName = "backward_jump_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}switch/",
          resultCallback: (returnValue) {});
    });

    test(':bad_case_runtime_test', () async {
      String fileName = "bad_case_runtime_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}switch/",
          resultCallback: (returnValue) {});
    });

    test(':case_expression_with_assignment_runtime_test', () async {
      String fileName = "case_expression_with_assignment_runtime_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}switch/",
          resultCallback: (returnValue) {});
    });

    test(':case_warn_test', () async {
      String fileName = "case_warn_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}switch/",
          resultCallback: (returnValue) {});
    });

    test(':label_test', () async {
      String fileName = "label_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}switch/",
          resultCallback: (returnValue) {});
    });

    test(':label2_test', () async {
      String fileName = "label2_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}switch/",
          resultCallback: (returnValue) {});
    });

    test(':label3_test', () async {
      String fileName = "label3_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}switch/",
          resultCallback: (returnValue) {});
    });

    test(':scope_test', () async {
      String fileName = "scope_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}switch/",
          resultCallback: (returnValue) {});
    });

    test(':switch_test', () async {
      String fileName = "switch_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}switch/",
          resultCallback: (returnValue) {});
    });

    test(':switch6_test', () async {
      String fileName = "switch6_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}switch/",
          resultCallback: (returnValue) {});
    });
  });
}
