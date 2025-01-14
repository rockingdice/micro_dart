// Copyright (c) 2017, the Dart Team. All rights reserved. Use of this
// source code is governed by a BSD-style license that can be found in
// the LICENSE file.

library reflectable.reflectable_builder;

import 'dart:async';
import 'dart:io';
import 'package:build/build.dart';
import 'package:build_config/build_config.dart';
import 'package:build_runner_core/build_runner_core.dart';

import 'code_gen_mirror.dart';
import 'external_methods.dart';
import 'named_system.dart';
import 'overwrite_strategy.dart';

class GeneratorBuilder implements Builder {
  BuilderOptions builderOptions;

  final namedSystem = NamedSystem();

  GeneratorBuilder(this.builderOptions);

  static const String generatePath = "lib/generated";

  static const String externalMethodPath = "micro_dart_external_methods.json";

  static const String overwriteStrategyPath = "overwrite_strategy.json";

  final flutterRegExp = RegExp(r'dart:+|package:flutter/+');

  final skipRegExp =
      RegExp(r'package:micro_dart_flutter/+|package:micro_dart_runtime/+');

  @override
  Future<void> build(BuildStep buildStep) async {
    var generateDirectory = Directory(generatePath);

    var gFile = Directory(overwriteStrategyPath);
    var eFile = Directory(externalMethodPath);

    if (!generateDirectory.existsSync()) {
      generateDirectory.createSync(recursive: true);
    }
    generateDirectory.listSync().forEach((element) {
      element.deleteSync(recursive: true);
    });

    var overwriteStrategy =
        OverwriteStrategy.fromFile(File(gFile.absolute.path));

    ExternalMethods? externalMethods;
    if (File(eFile.absolute.path).existsSync()) {
      externalMethods = ExternalMethods.fromFile(File(eFile.absolute.path));
      print("external methods is: ${externalMethods.libraries}");
    } else {
      print("external methods not exists ${File(eFile.absolute.path).path}");
    }

    var resolver = buildStep.resolver;
    var inputId = buildStep.inputId;

    var visibleLibraries = await resolver.libraries.toList();
    bool isMicroDartFlutter = false;
    print(inputId.path);
    if (inputId.path == "lib/micro_dart_flutter.dart") {
      isMicroDartFlutter = true;
    }

    for (var element in visibleLibraries) {
      if (element.identifier.startsWith("dart:_") ||
          element.identifier.startsWith("package:_")) {
        continue;
      }

      if (skipRegExp.hasMatch(element.identifier)) {
        continue;
      }
      if (externalMethods != null &&
          !externalMethods.hasLibrary(element.identifier)) {
        continue;
      }
      var generator =
          CodeGenMirror(namedSystem, overwriteStrategy, externalMethods);
      generator.visitLibraryElement(element);
      if (generator.libraryName != null) {
        File("$generatePath/${namedSystem.getLibraryNameFileName(element.identifier)}")
            .writeAsStringSync(generator.generate().toString());
      }
    }
    await buildStep.writeAsString(
        AssetId(inputId.package, '$generatePath/micro_dart.dart'),
        namedSystem.generate2().toString());
  }

  @override
  Map<String, List<String>> get buildExtensions => const {
        'lib/main.dart': ['$generatePath/micro_dart.dart'],
        'lib/micro_dart_flutter.dart': ['$generatePath/micro_dart.dart'],
      };
}

GeneratorBuilder generatorBuilder(BuilderOptions options) {
  var config = Map<String, Object>.from(options.config);
  config.putIfAbsent('entry_points', () => ['**.dart']);
  return GeneratorBuilder(options);
}

Future<BuildResult> generatorBuild(List<String> arguments) async {
  if (arguments.isEmpty) {
    // Globbing may produce an empty argument list, and it might be ok,
    // but we should give at least notify the caller.
    print('micro_dart_generator: No arguments given, exiting.');
    return BuildResult(BuildStatus.success, []);
  } else {
    // TODO(eernst) feature: We should support some customization of
    // the settings, e.g., specifying options like `suppress_warnings`.
    var options = BuilderOptions(
        <String, dynamic>{'entry_points': arguments, 'formatted': true},
        isRoot: true);
    final builder = GeneratorBuilder(options);
    var builders = <BuilderApplication>[
      applyToRoot(builder, generateFor: InputSet(include: arguments))
    ];
    var packageGraph = await PackageGraph.forThisPackage();
    var environment = OverrideableEnvironment(IOEnvironment(packageGraph));
    var buildOptions = await BuildOptions.create(
      LogSubscription(environment),
      deleteFilesByDefault: true,
      packageGraph: packageGraph,
    );
    try {
      var build = await BuildRunner.create(
          buildOptions, environment, builders, const {},
          isReleaseBuild: false);
      var result = await build.run(const {});
      await build.beforeExit();
      return result;
    } finally {
      await buildOptions.logListener.cancel();
    }
  }
}
