import 'dart:io';
import 'dart:typed_data';

import 'env.dart';
import 'package:test/test.dart';

import 'package:micro_dart_runtime/generated/core.g.dart';

void main() {
  group('Flutter tests', () {
    test(':generate', () async {
      Uri mainSource =
          ensureFolderPath(flutterExamplePath).resolve('lib/widget.dart');
      var program = await compilePlugin(
          mainSource, [], "package:flutter_example/widget.dart", options,
          debug: true);
      if (astToJsonFlag) {
        astToJson("${testCasePath}flutter_example",
            "package:flutter_example/widget.dart", program.component);
        writeComponentToText(program.component!,
            path: "${testCasePath}flutter_example.txt");
      }
      var bytes = program.write().buffer.asByteData();
      File("${flutterExamplePath}assets//micro_dart.data")
          .writeAsBytesSync(bytes.buffer.asUint8List());

      var engine = createMicroDartEngine(ByteData.sublistView(
          await File("${flutterExamplePath}assets/micro_dart.data")
              .readAsBytes()));

      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }
    });
  });
}
