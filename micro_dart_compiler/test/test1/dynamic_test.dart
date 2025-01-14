import '../env.dart';
import 'package:test/test.dart';

const bool astToJsonFlag = true;
const bool printOp = true;

void main() {
  group('Dynamic tests', () {
    test(':test function dynamic1', () async {
      String fileName = "test_function_dynamic1.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 4);
      });
    });

    test(':test function dynamic2', () async {
      String fileName = "test_function_dynamic2.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 9);
      });
    });

    test(':test function anonymous inline args', () async {
      String fileName = "test_function_anonymous_inline_args.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 9);
      });
    });
  });
}
