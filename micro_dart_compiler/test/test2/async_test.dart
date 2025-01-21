import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Async tests', () {
    test(':and_or_test', () async {
      String fileName = "and_or_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}async/",
          isAsync: true, resultCallback: (returnValue) {
        expect(returnValue, "test complete true");
      });
    });

    test(':async_test', () async {
      String fileName = "async_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}async/",
          isAsync: true, resultCallback: (returnValue) {
        expect(returnValue, true);
      });
    });

    test(':await_catch_regression_test', () async {
      String fileName = "await_catch_regression_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}async/",
          isAsync: true, resultCallback: (returnValue) {
        expect(returnValue, true);
      });
    });

    test(':await_foreign_test', () async {
      String fileName = "await_foreign_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}async/",
          isAsync: true, resultCallback: (returnValue) {
        expect(returnValue, "test");
      });
    });

    test(':await_test', () async {
      String fileName = "await_test.dart";
      var engine = await singleFileTestEngine(
        fileName,
        testCasePath: "${testCasePath2}async/",
      );
      for (int i = 1; i <= 143; i++)
        await run(engine,
            functionName: "test$i",
            isAsync: true,
            resultCallback: (returnValue) {});
    });
  });
}
