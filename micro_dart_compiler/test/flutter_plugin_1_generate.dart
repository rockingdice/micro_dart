import 'dart:io';
import 'dart:typed_data';
import 'env.dart';
import 'package:micro_dart_runtime/generated/core.g.dart';

const String flutterPlugin1Path = "../examples/flutter_plugin_1/";

void main() async {
  Uri mainSource =
      ensureFolderPath(flutterPlugin1Path).resolve('lib/plugin_1.dart');
  var program = await compilePlugin(
      mainSource, [], RegExp(r"package:flutter_plugin_1/+"), options);
  if (astToJsonFlag) {
    astToJson("${testCasePath}flutter_example",
        RegExp(r"package:flutter_plugin_1/+"), program.component);
    writeComponentToText(program.component!,
        path: "${testCasePath}plugin_1.txt");
  }
  var bytes = program.write().buffer.asByteData();
  File("${flutterExamplePath}assets//micro_dart.data")
      .writeAsBytesSync(bytes.buffer.asUint8List());

  var engine = MicroDartEngine.fromData(program.write().buffer.asByteData());
  engine.setExternalFunctions(libraryMirrors);
  if (printOp) {
    engine.debug = true;
    engine.printOpcodes();
  }
}
