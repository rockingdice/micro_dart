// @dart = 2.9

import 'dart:io';

import 'package:front_end/src/api_unstable/vm.dart';
import 'package:micro_dart_compiler/micro_dart_compiler.dart';
import 'package:micro_dart_runtime/runtime/runtime.dart';
import 'package:test/test.dart';

void main() {
  final compiler = MicroCompiler();
  final Uri sdkRoot = ensureFolderPath(
      "/Users/lixin/Documents/flutter_macos_stable/bin/cache/artifacts/engine/common/flutter_patched_sdk/");
  final CompilerOptions options = CompilerOptions()
    ..sdkRoot = sdkRoot
    ..sdkSummary = sdkRoot.resolve('platform_strong.dill')
    ..verbose = false
    ..nnbdMode = NnbdMode.Strong;

  group('Function tests', () {
    test('Local variable assignment with ints', () async {
      var file = File("../examples/testcases/base_main.dart");
      var sources = <String, String>{'main.dart': file.readAsStringSync()};

      var program = await compiler.compileSource(
          "org-dartlang-test:///a/b/c/main.dart", options, sources);

      var runtime = MicroRuntime(program.write().buffer.asByteData())..setup();
      runtime.printOpcodes();

      var returnValue = runtime
          .executeLib("org-dartlang-test:///a/b/c/main.dart", "main", [], {});
      print(returnValue);
    });
  });
}
