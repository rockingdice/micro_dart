import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Abstract tests', () {
    // test(':equal_test', () async {
    //   String fileName = "equal_test.dart";
    //   await singleFileTest(fileName, testCasePath: "${testCasePath2}abstract/",
    //       resultCallback: (returnValue) {
    //     expect(returnValue, true);
    //   });
    // });

    // test(':exact_selector_runtime_test', () async {
    //   String fileName = "exact_selector_runtime_test.dart";
    //   await singleFileTest(fileName, testCasePath: "${testCasePath2}abstract/",
    //       resultCallback: (returnValue) {
    //     expect(returnValue, "Instance of 'Foo'truefalse");
    //   });
    // });

    // test(':factory_constructor_runtime_test', () async {
    //   String fileName = "factory_constructor_runtime_test.dart";
    //   await singleFileTest(fileName, testCasePath: "${testCasePath2}abstract/",
    //       resultCallback: (returnValue) {
    //     expect(returnValue, "current methodcurrent method");
    //   });
    // });

    test(':getter2_test', () async {
      String fileName = "getter2_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}abstract/",
          resultCallback: (returnValue) {
        expect(returnValue, true);
      });
    });
  });
}
