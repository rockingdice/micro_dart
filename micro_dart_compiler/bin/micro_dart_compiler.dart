import 'package:args/args.dart';
import 'package:front_end/src/api_unstable/vm.dart';
import 'package:kernel/kernel.dart';
import 'package:micro_dart_compiler/compiler/ast/ast_to_json.dart';
import 'package:micro_dart_runtime/runtime/engine.dart';

import 'dart:io';
import 'package:path/path.dart' as path;

import 'package:micro_dart_compiler/micro_dart_compiler.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

final ArgParser argParser = ArgParser(allowTrailingOptions: true)
  ..addOption('out', help: 'data out path default is ./YourPackageName.data')
  ..addOption('json-ast-out', help: 'json ast out path')
  ..addOption('ast-out', help: 'ast out path')
  ..addOption('op-out', help: 'op out path')
  ..addOption('external-methods-out', help: 'external methods out path ')
  ..addFlag('verbose',
      help: 'Enables verbose output from the compiler.', defaultsTo: false);

String usage = '''
Usage: micro_dart [--out|--json-ast-out|--ast-out|--external-methods-out] [--verbose] [lib/main.dart]

Example: dart run micro_dart.dart.snapshot --out examples/flutter_plugin_2/assets/micro_dart.data --verbose examples/flutter_plugin_2/lib/plugin_2.dart 
Options:
${argParser.usage}
''';

Future<int> main(List<String> args) async {
  ArgResults options;
  try {
    options = argParser.parse(args);
  } catch (error) {
    print('ERROR: $error\n');
    print(usage);
    return 1;
  }
  Uri executePath = Uri.base;
  String flutterPatchedSdk =
      "${path.dirname(path.dirname(path.dirname(Platform.resolvedExecutable)))}/artifacts/engine/common/flutter_patched_sdk/";
  Uri sdkRoot = ensureFolderPath(flutterPatchedSdk);
  Uri sdkSummary = sdkRoot.resolve('platform_strong.dill');

  String enterPoint =
      options.rest.isNotEmpty ? options.rest[0] : "lib/main.dart";

  Uri mainSource = executePath.resolve(enterPoint);
  String mainSourcePath = mainSource.toFilePath(windows: Platform.isWindows);
  Uri programRoot = findProjectRoot(mainSourcePath).uri;

  Uri pubSpecFile = programRoot.resolve("pubspec.yaml");
  String packageName = Pubspec.parse(
          File(pubSpecFile.toFilePath(windows: Platform.isWindows))
              .readAsStringSync())
      .name;
  String compileRegex = "package:${packageName}/+";

  String out = options["out"] ?? "${packageName}.data";

  String? jsonAstOut = options["json-ast-out"];
  String? astOut = options["ast-out"];
  String? externalMethodsOut = options["external-methods-out"];
  String? opOut = options["op-out"];

  RegExp regExp = RegExp(compileRegex);

  bool verbose = options["verbose"];

  if (verbose) {
    print("flutterPatchedSdk: $flutterPatchedSdk");
    print("sdkRoot: $sdkRoot");
    print("sdkSummary: $sdkSummary");
    print("enterPoint: $enterPoint");
    print("programRoot: $programRoot");
    print("mainSource: $mainSource");
    print("pubSpecFile: $pubSpecFile");
    print("verbose: $verbose");
    print("compileRegex: $compileRegex");
    print("out: $out");
    print("json-ast-out: $jsonAstOut");
    print("ast-out: $astOut");
    print("external-methods-out: $externalMethodsOut");
    print("op-out: $opOut");
  }

  String sdkSummaryPath = sdkSummary.toFilePath(windows: Platform.isWindows);
  if (!File(sdkSummaryPath).existsSync()) {
    print("error: sdkSummaryPath: $sdkSummary file not found");
    return 1;
  }

  if (!File(mainSourcePath).existsSync()) {
    print("error: mainSourcePath: $mainSourcePath file not found");
    return 1;
  }
  final CompilerOptions compilerOptions = CompilerOptions()
    ..sdkRoot = sdkRoot
    ..sdkSummary = sdkSummary
    ..verbose = verbose
    ..nnbdMode = NnbdMode.Strong;

  var program = await compilePlugin(mainSource, [], regExp, compilerOptions);
  var bytes = program.write().buffer.asByteData();
  File(out).writeAsBytesSync(bytes.buffer.asUint8List());

  if (jsonAstOut != null) {
    astToJson(jsonAstOut, regExp, program.component);
  }

  if (astOut != null) {
    writeComponentToText(program.component!, path: astOut);
  }
  if (externalMethodsOut != null) {
    File(externalMethodsOut)
        .writeAsStringSync(program.getExternalCallMethods());
  }

  if (opOut != null) {
    var engine = MicroDartEngine.fromData(bytes);
    File(opOut).writeAsStringSync(engine.getOpcodes());
  }
  return 0;
}

Directory findProjectRoot(String mainSourcePath) {
  var projectRoot = File(mainSourcePath).parent;
  while (true) {
    final files = projectRoot.listSync();
    if (files
        .any((file) => (file is File && file.path.endsWith('pubspec.yaml')))) {
      break;
    }
    projectRoot = projectRoot.parent;
  }
  return projectRoot;
}
