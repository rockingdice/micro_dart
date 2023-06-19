// Copyright (c) 2017, the Dart Team. All rights reserved. Use of this
// source code is governed by a BSD-style license that can be found in
// the LICENSE file.

library reflectable.reflectable_builder;

import 'dart:async';
import 'dart:io';
import 'package:build/build.dart';
import 'package:build_config/build_config.dart';
import 'package:build_runner_core/build_runner_core.dart';

import 'generator.dart';

class GeneratorBuilder implements Builder {
  BuilderOptions builderOptions;

  final namedSystem = NamedSystem();

  GeneratorBuilder(this.builderOptions);

  static const String generatePath = "lib/generated/micro_dart";

  @override
  Future<void> build(BuildStep buildStep) async {
    var generateDirectory = Directory(generatePath);
    if (!generateDirectory.existsSync()) {
      generateDirectory.createSync(recursive: true);
    }
    generateDirectory.listSync().forEach((element) {
      element.deleteSync(recursive: true);
    });

    var resolver = buildStep.resolver;
    var inputId = buildStep.inputId;

    var visibleLibraries = await resolver.libraries.toList();

    for (var element in visibleLibraries) {
      if (element.identifier.startsWith("dart:_") ||
          element.identifier.startsWith("package:_")) {
        continue;
      }
      var generator = Generator(namedSystem);
      generator.visitLibraryElement(element);
      File("$generatePath/${namedSystem.getLibraryName(element.identifier)}.g.dart")
          .writeAsStringSync(generator.generate().toString());
    }
    await buildStep.writeAsString(
        AssetId(inputId.package, '$generatePath/micro_dart.dart'),
        namedSystem.generate().toString());
  }

  @override
  Map<String, List<String>> get buildExtensions => const {
        'lib/main.dart': ['$generatePath/micro_dart.dart'],
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
