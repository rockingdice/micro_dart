import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Call tests', () {
    test(':method_function_typed_value_test', () async {
      String fileName = "method_function_typed_value_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}call/",
          resultCallback: (returnValue) {});
    });

    test(':method_implicit_invoke_instance_test', () async {
      String fileName = "method_implicit_invoke_instance_test.dart";
      await singleFileTest(fileName,
          testCasePath: "${testCasePath2}call/",
          resultCallback: (returnValue) {});
    });
  });
}
