import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Syntax tests', () {
    test(':statement_test', () async {
      String fileName = "statement_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}syntax/",
          resultCallback: (returnValue) {});
    });
  });
}
