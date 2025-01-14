import 'dart:io';
import 'dart:typed_data';
import 'package:kernel/kernel.dart';
import 'package:micro_dart_compiler/compiler/ast/ast_to_json.dart';
import 'package:micro_dart_compiler/micro_dart_compiler.dart';
import 'package:micro_dart_compiler/util.dart';
import 'package:micro_dart_proxy_core/generated/core.g.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart';

import 'env.dart';

const String flutterPlugin1Path = "../examples/flutter_plugin_2/";
const String flutterExamplePath = "../examples/flutter_example_2/";

void main() async {
  Uri mainSource =
      ensureFolderPath(flutterPlugin1Path).resolve('lib/plugin_2.dart');
  var program = await compilePlugin(
      mainSource, [], RegExp(r"package:flutter_plugin_2/+"), options);
  if (astToJsonFlag) {
    astToJson("${testCasePath1}flutter_example",
        RegExp(r"package:flutter_plugin_2/+"), program.component);
    writeComponentToText(program.component!,
        path: "${testCasePath1}plugin_2.txt");
  }
  var bytes = program.write().buffer.asByteData();
  File("${flutterExamplePath}assets/micro_dart2.data")
      .writeAsBytesSync(bytes.buffer.asUint8List());
  File("${flutterExamplePath}micro_dart_external_methods.json")
      .writeAsStringSync(program.getExternalCallMethods());

  var engine = MicroDartEngine.fromData(program.write().buffer.asByteData());
  engine.setExternalFunctions(libraryMirrors);
  if (printOp) {
    engine.debug = true;
    engine.printOpcodes();
  }
}
