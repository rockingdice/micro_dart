import '../env.dart';
import 'package:test/test.dart';

void main() {
  group('Assert tests', () {
    test(':test assert', () async {
      String fileName = "test_assert.dart";
      await singleFileTest(fileName, resultCallback: (returnValue) {
        expect(returnValue, 1);
      });
    });
  });
}
