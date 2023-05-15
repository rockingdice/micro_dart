// @dart = 2.9

import 'env.dart';
import 'package:test/test.dart';

const bool astToJsonFlag = true;
const bool printOp = true;

void main() {
  group('Flutter tests', () {
    test(':generate', () async {
      Uri mainSource =
          ensureFolderPath(flutterExamplePath).resolve('lib/main.dart');
      var program = await compilePlugin(
          mainSource, [], "package:flutter_example/widget.dart", options);
      if (astToJsonFlag) {
        astToJson("${testCasePath}flutter_example",
            "package:flutter_example/widget.dart", program.component);
        writeComponentToText(program.component,
            path: "${testCasePath}flutter_example.txt");
      }
      var interpreter =
          initMicroDartRumtime(program.write().buffer.asByteData());

      if (printOp) {
        interpreter.printOpcodes();
      }
    });
  });
}
