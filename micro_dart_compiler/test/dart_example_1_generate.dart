import 'dart:io';
import 'dart:typed_data';
import 'env.dart';

const String flutterPlugin1Path = "../examples/dart_example_1/";

void main() async {
  Uri mainSource =
      ensureFolderPath(flutterPlugin1Path).resolve('lib/dart_example_1.dart');
  var program = await compilePlugin(
      mainSource, [], RegExp(r"package:dart_example_1/+"), options);
  if (astToJsonFlag) {
    astToJson("${testCasePath}dart_example_1",
        RegExp(r"package:dart_example_1/+"), program.component);
    writeComponentToText(program.component!,
        path: "${testCasePath}dart_example_1.txt");
  }
  var bytes = program.write().buffer.asByteData();
  print("${flutterPlugin1Path}assets/dart_example_1.data");
  File("${flutterPlugin1Path}assets/dart_example_1.data")
      .writeAsBytesSync(bytes.buffer.asUint8List());
  File("${flutterPlugin1Path}micro_dart_external_methods.json")
      .writeAsStringSync(program.getExternalCallMethods());
  var engine = MicroDartEngine.fromData(program.write().buffer.asByteData());
  engine.setExternalFunctions(libraryMirrors);
  if (printOp) {
    engine.debug = true;
    engine.printOpcodes();
  }
}
