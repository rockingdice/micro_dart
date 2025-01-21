import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Argument tests', () {
    test(':named_argument_test', () async {
      String fileName = "named_argument_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}argument/",
          resultCallback: (returnValue) {
        expect(returnValue, true);
      });
    });

    test(':named_in_const_creation_test', () async {
      String fileName = "named_in_const_creation_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}argument/",
          resultCallback: (returnValue) {
        expect(returnValue, true);
      });
    });

    test(':positional_option_test', () async {
      String fileName = "positional_option_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}argument/",
          resultCallback: (returnValue) {
        expect(returnValue, 499720164);
      });
    });
  });
}
