import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Dynamic tests', () {
    //TODO: #is改为统一静态函数来检查类型，可以实现
    // test(':dynamic_test', () async {
    //   String fileName = "dynamic_test.dart";
    //   await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
    //       resultCallback: (returnValue) {
    //     expect(returnValue,
    //         "truetruefalsefalsefalsefalsefalsefalsefalsefalsefalsetruefalsetruetruetruetrue");
    //   });
    // });

    //FIXME: runtimeType是否需要支持？这个问题应该转化为，CType如何转换为一致的runtimeType（这个信息不存在），暂定为不支持
    // test(':field_runtime_test', () async {
    //   String fileName = "field_runtime_test.dart";
    //   await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
    //       resultCallback: (returnValue) {
    //     print(returnValue);
    //     expect(returnValue, "1A toString");
    //   });
    // });

    // //FIXME: hash_code同runtimeType，本质上是需要ctype -> type的映射才能获得
    // test(':hash_code_test', () async {
    //   String fileName = "hash_code_test.dart";
    //   await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
    //       resultCallback: (returnValue) {
    //     expect(returnValue, "34803 34803 true");
    //   });
    // });

    //FIXME: 同上，runtimeType toString 和 hashCode 缺少原始类型
    // test(':invoke_test', () async {
    //   String fileName = "invoke_test.dart";
    //   await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
    //       resultCallback: (returnValue) {
    //     expect(returnValue, "truetruefalsetruetruetruetrue");
    //   });
    // });

    test(':set_test', () async {
      String fileName = "set_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
          resultCallback: (returnValue) {
        expect(returnValue, "truefalse");
      });
    });

    test(':dynamic_keyword_test_case', () async {
      String fileName = "dynamic_keyword_test_case.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
          resultCallback: (returnValue) {
        expect(returnValue, "12345678");
      });
    });
    test(':dynamic_external_getter_setter_test', () async {
      String fileName = "dynamic_external_getter_setter_test.dart";
      await singleFileTest(fileName, testCasePath: "${testCasePath2}dynamic/",
          resultCallback: (returnValue) {
        expect(returnValue, 2);
      });
    });
  });
}
