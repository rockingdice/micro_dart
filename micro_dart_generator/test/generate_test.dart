// @dart = 2.9

import 'package:micro_dart_generator/generator.dart';
import 'package:test/test.dart';

const String flatterPatchedSdk =
    "/Users/lixin/Documents/flutter_macos_stable/bin/cache/artifacts/engine/common/flutter_patched_sdk/";

void main() {
  group('generate test', () {
    test(':generate test', () async {
      final output = "../examples/cli_example/lib/cli_example.g.dart";
      await MicroDartGenerator().generate("../examples/cli_example/",
          "bin/cli_example.dart", flatterPatchedSdk, output);
    });
  });
}
