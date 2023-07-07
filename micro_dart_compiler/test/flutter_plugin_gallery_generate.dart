import 'dart:io';
import 'dart:typed_data';
import 'package:micro_dart_compiler/proxy/kernel_generator.dart';

import 'env.dart';
import 'package:micro_dart_runtime/generated/core.g.dart';

const String flutterPluginGalleryPath = "../examples/flutter_plugin_gallery/";
const String flutterExampleGalleryPath = "../examples/flutter_example_gallery/";

void main() async {
  Uri mainSource = ensureFolderPath(flutterPluginGalleryPath)
      .resolve('lib/flutter_plugin_gallery.dart');
  var result =
      await kernelForProgramInternal(mainSource, options, requireMain: false);
  writeComponentToText(result!.component!,
      path: "${testCasePath}flutter_plugin_gallery.txt");
  var program = await compilePlugin(
      mainSource, [], RegExp(r"package:flutter_plugin_gallery/+"), options,
      debug: false);
  if (astToJsonFlag) {
    astToJson("${testCasePath}flutter_example",
        RegExp(r"package:flutter_plugin_gallery/+"), program.component);
    writeComponentToText(program.component!,
        path: "${testCasePath}flutter_plugin_gallery.txt");
  }
  var bytes = program.write().buffer.asByteData();
  File("${flutterExampleGalleryPath}assets/micro_dart.data")
      .writeAsBytesSync(bytes.buffer.asUint8List());

  var engine = createMicroDartEngine(ByteData.sublistView(
      await File("${flutterExampleGalleryPath}assets/micro_dart.data")
          .readAsBytes()));
}
