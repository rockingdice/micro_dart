// // @dart = 2.9

// import 'dart:io';

// import 'env.dart';
// import 'package:test/test.dart';

// const bool astToJsonFlag = true;
// const bool printOp = true;

// void main() {
//   group('Dynamic tests', () {
//     test(':test function dynamic1', () async {
//       String fileName = "test_function_dynamic1.dart";
//       var file = File("$testCasePath$fileName");
//       var sources = <String, String>{'main.dart': file.readAsStringSync()};
//       var program = await compileSource(pluginUri, options, sources);
//       if (true) {
//         astToJson("$testCasePath/$fileName", pluginUri, program.component);
//         writeComponentToText(program.component,
//             path: "$testCasePath$fileName.txt");
//       }
//       var engine = createMicroDartEngine(program.write().buffer.asByteData());

//       if (printOp) {
//         engine.debug = true;
//         engine.printOpcodes();
//       }

//       var returnValue = engine.callStaticFunction(pluginUri, "main", [], {});

//       expect(returnValue, 4);
//     });

//     test(':test function dynamic2', () async {
//       String fileName = "test_function_dynamic2.dart";
//       var file = File("$testCasePath$fileName");
//       var sources = <String, String>{'main.dart': file.readAsStringSync()};
//       var program = await compileSource(pluginUri, options, sources);
//       if (true) {
//         astToJson("$testCasePath/$fileName", pluginUri, program.component);
//         writeComponentToText(program.component,
//             path: "$testCasePath$fileName.txt");
//       }
//       var engine = createMicroDartEngine(program.write().buffer.asByteData());

//       if (printOp) {
//         engine.debug = true;
//         engine.printOpcodes();
//       }

//       var returnValue = engine.callStaticFunction(pluginUri, "main", [], {});

//       expect(returnValue, 9);
//     });

//     test(':test function anonymous inline args', () async {
//       String fileName = "test_function_anonymous_inline_args.dart";
//       var file = File("$testCasePath$fileName");
//       var sources = <String, String>{'main.dart': file.readAsStringSync()};
//       var program = await compileSource(pluginUri, options, sources);
//       if (astToJsonFlag) {
//         astToJson("$testCasePath/$fileName", pluginUri, program.component);
//         writeComponentToText(program.component,
//             path: "$testCasePath$fileName.txt");
//       }
//       var engine = createMicroDartEngine(program.write().buffer.asByteData());

//       if (printOp) {
//         engine.debug = true;
//         engine.printOpcodes();
//       }

//       var returnValue = engine.callStaticFunction(pluginUri, "main", [], {});

//       expect(returnValue, 9);
//     });
//   });
// }
