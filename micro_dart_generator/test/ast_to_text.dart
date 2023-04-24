import 'package:front_end/src/api_unstable/vm.dart';
import 'package:micro_dart_compiler/util.dart';
import 'package:micro_dart_generator/ast_to_text.dart';

import 'package:front_end/src/api_prototype/kernel_generator.dart'
    show kernelForProgramInternal;

const String pluginUri = "test:///main.dart";
const String testCasePath = "../examples/cli_example/";
const String flatterPatchedSdk =
    "/Users/lixin/Documents/flutter_macos_stable/bin/cache/artifacts/engine/common/flutter_patched_sdk/";
final Uri sdkRoot = ensureFolderPath(flatterPatchedSdk);
final Uri sdkSummary = sdkRoot.resolve('platform_strong.dill');
final CompilerOptions options = CompilerOptions()
  ..sdkRoot = sdkRoot
  ..sdkSummary = sdkSummary
  ..verbose = true
  ..fileSystem = StandardFileSystem.instance
  ..packagesFileUri =
      resolveInputUri("../examples/cli_example/.dart_tool/package_config.json")
  ..nnbdMode = NnbdMode.Strong;

void main() async {
  String fileName = "cli_example.g.dart.txt";
  Uri mainUri = resolveInputUri("../examples/cli_example/bin/cli_example.dart");
  var result = await kernelForProgramInternal(mainUri, options,
      additionalSources: [], requireMain: false);
  writeComponentToText(result!.component!, path: "testprint/$fileName");
}
