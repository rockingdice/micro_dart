import 'dart:io';
import 'package:path/path.dart' as path;

import 'package:front_end/src/api_unstable/vm.dart';
import 'package:micro_dart_compiler/micro_dart_compiler.dart';

export 'package:micro_dart_compiler/micro_dart_compiler.dart';
export 'package:micro_dart_runtime/micro_dart_runtime.dart';
export 'package:micro_dart_proxy_core/generated/core.g.dart';

export 'package:micro_dart_compiler/compiler/ast/ast_to_json.dart';
export 'package:micro_dart_compiler/compiler/ast/ast_to_text.dart';

final RegExp pluginUriRegExp = RegExp(r"test:///main.dart");
const String pluginUri = "test:///main.dart";
const String flutterExampleUri = "pacakge://flutter_example/main.dart";
const String testCasePath = "test/testcases/";
const String flutterExamplePath = "../examples/flutter_example/";
final String flutterPatchedSdk =
    "${path.dirname(path.dirname(path.dirname(Platform.resolvedExecutable)))}/artifacts/engine/common/flutter_patched_sdk/";
final Uri sdkRoot = ensureFolderPath(flutterPatchedSdk);
final Uri sdkSummary = sdkRoot.resolve('platform_strong.dill');
final CompilerOptions options = CompilerOptions()
  ..sdkRoot = sdkRoot
  ..sdkSummary = sdkSummary
  ..verbose = false
  ..nnbdMode = NnbdMode.Strong;

const bool astToJsonFlag = true;
const bool printOp = true;
