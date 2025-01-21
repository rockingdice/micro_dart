import 'dart:io';
import 'package:kernel/ast.dart';
import 'package:micro_dart_compiler/compiler/ast/ast_to_json.dart';
import 'package:micro_dart_compiler/compiler/ast/ast_to_text.dart';
import 'package:micro_dart_compiler/micro_dart_compiler.dart';
// import 'package:micro_dart_proxy_core/generated/core.g.dart';
import 'package:micro_dart_proxy_test/generated/all_mirrors.dart' as m;
import 'package:micro_dart_runtime/micro_dart_runtime.dart';
import 'package:path/path.dart' as path;

import 'package:front_end/src/api_unstable/vm.dart';

final RegExp pluginUriRegExp = RegExp(r"test:///main.dart");
const String pluginUri = "test:///main.dart";
const String flutterExampleUri = "pacakge://flutter_example/main.dart";
const String testCasePath1 = "test/testcases/";
const String testCasePath2 = "test/testcases2/";
const String flutterExamplePath = "../examples/flutter_example/";
final String flutterPatchedSdk =
    "${path.dirname(path.dirname(path.dirname(Platform.resolvedExecutable)))}/artifacts/engine/common/flutter_patched_sdk/";

final Uri sdkRoot = ensureFolderPath(flutterPatchedSdk);
final Uri sdkSummary = sdkRoot.resolve('platform_strong.dill');
final CompilerOptions options = CompilerOptions()
  ..sdkRoot = sdkRoot
  ..sdkSummary = sdkSummary
  ..verbose = false
  ..nnbdMode = NnbdMode.Strong
  ..packagesFileUri = Uri.base.resolve('.dart_tool/package_config.json');

const bool astToJsonFlag = true;
const bool printOp = true;

typedef ResultCallback = void Function(dynamic returnValue);

Future<MicroDartEngine> singleFileTestEngine(
  String fileName, {
  String functionName = "main",
  String testCasePath = testCasePath1,
  bool astOut = true,
  bool jsonAstOut = true,
  bool opOut = true,
  bool constantOut = true,
  bool externalMethodsOut = false,
  bool typesOut = true,
  bool declarationsOut = true,
  bool debug = true,
  bool isAsync = false,
  bool waitClean = false,
  Map<String, LibraryMirror> testLibraryMirrors = libraryMirrors,
}) async {
  var file = File("$testCasePath$fileName");
  var sources = <String, String>{'main.dart': file.readAsStringSync()};
  var program = await compileSource(pluginUriRegExp, options, sources);

  if (astOut) {
    writeComponentToText(program.component!,
        path: "${testCasePath}_$fileName.ast.txt");
  }
  if (jsonAstOut) {
    astToJson(
        "${testCasePath}_$fileName.json", pluginUriRegExp, program.component);
  }

  if (externalMethodsOut) {
    File("${testCasePath}_$fileName.externalMethods.txt")
        .writeAsStringSync(program.getExternalCallMethods());
  }

  var engine = MicroDartEngine.fromData(program.write().buffer.asByteData());
  engine.setExternalFunctions(testLibraryMirrors);

  if (opOut) {
    File("${testCasePath}_$fileName.op.txt")
        .writeAsStringSync(engine.getOpcodes());
  }

  if (constantOut) {
    File("${testCasePath}_$fileName.constant.txt")
        .writeAsStringSync(engine.getConstants());
  }

  if (typesOut) {
    File("${testCasePath}_$fileName.types.txt")
        .writeAsStringSync(engine.getTypes());
  }

  if (declarationsOut) {
    File("${testCasePath}_$fileName.declarations.txt")
        .writeAsStringSync(engine.getDeclarations());
  }

  if (debug) {
    engine.debug = true;
  }

  return engine;
}

Future<dynamic> run(
  MicroDartEngine engine, {
  String functionName = "main",
  bool isAsync = false,
  bool waitClean = false,
  ResultCallback? resultCallback,
}) async {
  var returnValue = isAsync
      ? await await engine
          .callStaticFunctionAsync(pluginUri, functionName, [], {})
      : waitClean
          ? await engine
              .callStaticFunctionWaitClean(pluginUri, functionName, [], {})
          : engine.callStaticFunction(pluginUri, functionName, [], {});

  resultCallback?.call(returnValue);

  return returnValue;
}

Future<dynamic> singleFileTest(
  String fileName, {
  String functionName = "main",
  String testCasePath = testCasePath1,
  bool astOut = true,
  bool jsonAstOut = true,
  bool opOut = true,
  bool constantOut = true,
  bool externalMethodsOut = false,
  bool typesOut = true,
  bool declarationsOut = true,
  bool debug = true,
  bool isAsync = false,
  bool waitClean = false,
  // Map<String, LibraryMirror> testLibraryMirrors = libraryMirrors,
  ResultCallback? resultCallback,
}) async {
  var file = File("$testCasePath$fileName");
  print(file.path);
  var sources = <String, String>{'main.dart': file.readAsStringSync()};
  var program =
      await compileSource(pluginUriRegExp, options, sources, debug: true);

  if (astOut) {
    writeComponentToText(program.component!,
        path: "${testCasePath}_$fileName.ast.txt");
  }
  if (jsonAstOut) {
    astToJson(
        "${testCasePath}_$fileName.json", pluginUriRegExp, program.component);
  }

  if (externalMethodsOut) {
    File("${testCasePath}_$fileName.externalMethods.txt")
        .writeAsStringSync(program.getExternalCallMethods());
  }

  var engine = MicroDartEngine.fromData(program.write().buffer.asByteData());
  ExternalMirror.globalGetterMirrors = m.globalGetterMirrors;
  ExternalMirror.globalSetterMirrors = m.globalSetterMirrors;
  ExternalMirror.classMirrors = m.classMirrors;
  ExternalMirror.refTypeMirrors = m.refTypeMirrors;

  if (opOut) {
    File("${testCasePath}_$fileName.op.txt")
        .writeAsStringSync(engine.getOpcodes());
  }

  if (constantOut) {
    File("${testCasePath}_$fileName.constant.txt")
        .writeAsStringSync(engine.getConstants());
  }

  if (typesOut) {
    File("${testCasePath}_$fileName.types.txt")
        .writeAsStringSync(engine.getTypes());
  }

  if (declarationsOut) {
    File("${testCasePath}_$fileName.declarations.txt")
        .writeAsStringSync(engine.getDeclarations());
  }

  if (debug) {
    engine.debug = true;
  }

  var returnValue = isAsync
      ? await await engine
          .callStaticFunctionAsync(pluginUri, functionName, [], {})
      : waitClean
          ? await engine
              .callStaticFunctionWaitClean(pluginUri, functionName, [], {})
          : engine.callStaticFunction(pluginUri, functionName, [], {});

  resultCallback?.call(returnValue);

  return returnValue;
}
