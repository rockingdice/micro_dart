import 'dart:io';
import 'env.dart';
import 'package:test/test.dart';

void main() {
  group('Collection tests', () {
    test(':Iterable.join()', () async {
      String fileName = "test_collection_iterable_join.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
        writeComponentToText(program.component!,
            path: "$testCasePath$fileName.txt");
      }
      var engine =
          MicroDartEngine.fromData(program.write().buffer.asByteData());
      engine.setExternalFunctions(libraryMirrors);
      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue = engine.callStaticFunction(pluginUri, "main", [], {});
      expect(returnValue, "12345");
    });

    test(':Iterable.generate()', () async {
      String fileName = "test_collection_iterable_generate.dart";
      var file = File("$testCasePath$fileName");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};
      var program = await compileSource(pluginUriRegExp, options, sources);
      if (astToJsonFlag) {
        astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
        writeComponentToText(program.component!,
            path: "$testCasePath$fileName.txt");
      }
      var engine =
          MicroDartEngine.fromData(program.write().buffer.asByteData());
      engine.setExternalFunctions(libraryMirrors);
      if (printOp) {
        engine.debug = true;
        engine.printOpcodes();
      }

      var returnValue = engine.callStaticFunction(pluginUri, "main", [], {});
      expect(returnValue, "01234");
    });
  });

  test(':list concat test', () async {
    String fileName = "test_list_concat.dart";
    var file = File("$testCasePath$fileName");
    var sources = <String, String>{'main.dart': file.readAsStringSync()};
    var program = await compileSource(pluginUriRegExp, options, sources);
    if (astToJsonFlag) {
      astToJson("$testCasePath$fileName", pluginUriRegExp, program.component);
      writeComponentToText(program.component!,
          path: "$testCasePath$fileName.txt");
    }
    var engine = MicroDartEngine.fromData(program.write().buffer.asByteData());
    engine.setExternalFunctions(libraryMirrors);
    if (printOp) {
      engine.debug = true;
      engine.printOpcodes();
    }

    var returnValue = engine.callStaticFunction(pluginUri, "main", [], {});
    expect(returnValue, "0123");
  });
}
