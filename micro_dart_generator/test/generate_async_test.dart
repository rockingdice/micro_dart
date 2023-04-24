// @dart = 2.9

import 'package:micro_dart_generator/generator.dart';
import 'package:test/test.dart';

const String flatterPatchedSdk =
    "/Users/lixin/Documents/flutter_macos_stable/bin/cache/artifacts/engine/common/flutter_patched_sdk/";

void main() {
  group('generate async test', () {
    test(':generate test', () async {
      final output = "../examples/cli_example/lib/async.g.dart";
      await MicroDartGenerator().generateModule(
          "/Users/lixin/.pub-cache/hosted/pub.flutter-io.cn/async-2.11.0/",
          flatterPatchedSdk,
          "../examples/cli_example/.dart_tool/package_config.json",
          output);
    });
  });
}
