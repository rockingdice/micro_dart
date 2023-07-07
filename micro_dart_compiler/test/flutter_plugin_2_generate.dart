import 'dart:io';
import 'dart:typed_data';
import 'env.dart';
import 'package:micro_dart_runtime/generated/core.g.dart';

const String flutterPlugin1Path = "../examples/flutter_plugin_2/";

void main() async {
  Uri mainSource =
      ensureFolderPath(flutterPlugin1Path).resolve('lib/plugin_2.dart');
  var program = await compilePlugin(
      mainSource, [], RegExp(r"package:flutter_plugin_2/+"), options);
  if (astToJsonFlag) {
    astToJson("${testCasePath}flutter_example",
        RegExp(r"package:flutter_plugin_2/+"), program.component);
    writeComponentToText(program.component!,
        path: "${testCasePath}plugin_2.txt");
  }
  var bytes = program.write().buffer.asByteData();
  File("${flutterExamplePath}assets//micro_dart.data")
      .writeAsBytesSync(bytes.buffer.asUint8List());

  var engine = createMicroDartEngine(ByteData.sublistView(
      await File("${flutterExamplePath}assets/micro_dart.data").readAsBytes()));

  if (printOp) {
    engine.debug = true;
    engine.printOpcodes();
  }
}
