// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Defines the front-end API for converting source code to Dart Kernel objects.

import 'package:_fe_analyzer_shared/src/messages/codes.dart'
    show messageMissingMain, noLength;

import 'package:_fe_analyzer_shared/src/messages/severity.dart' show Severity;

import 'package:kernel/ast.dart' show Component;

import 'package:front_end/src/base/processed_options.dart'
    show ProcessedOptions;

import 'package:front_end/src/fasta/compiler_context.dart' show CompilerContext;

import 'kernel_generator_impl.dart' show generateKernel, generateKernelInternal;

import 'package:front_end/src/api_prototype/kernel_generator.dart';

import 'package:front_end/src/api_prototype/compiler_options.dart'
    show CompilerOptions;

/// Generates a kernel representation of the program whose main library is in
/// the given [source].
///
/// Intended for whole-program (non-modular) compilation.
///
/// Given the Uri of a file containing a program's `main` method, this function
/// follows `import`, `export`, and `part` declarations to discover the whole
/// program, and converts the result to Dart Kernel format.
///
/// If `compileSdk` in [options] is true, the generated [CompilerResult] will
/// include code for the SDK.
///
/// If summaries are provided in [options], the compiler will use them instead
/// of compiling the libraries contained in those summaries. This is useful, for
/// example, when compiling for platforms that already embed those sources (like
/// the sdk in the standalone VM).
///
/// The input [source] is expected to be a script with a main method, otherwise
/// an error is reported.
// TODO(sigmund): rename to kernelForScript?
Future<CompilerResult?> kernelForProgram(Uri source, CompilerOptions options,
    {List<Uri> additionalSources = const <Uri>[]}) async {
  return (await kernelForProgramInternal(source, options,
      additionalSources: additionalSources));
}

Future<CompilerResult?> kernelForProgramInternal(
    Uri source, CompilerOptions options,
    {List<Uri> additionalSources = const <Uri>[],
    bool retainDataForTesting = false,
    bool requireMain = true}) async {
  ProcessedOptions pOptions = new ProcessedOptions(
      options: options, inputs: [source, ...additionalSources]);
  return await CompilerContext.runWithOptions(pOptions, (context) async {
    CompilerResult result = await generateKernelInternal(
        includeHierarchyAndCoreTypes: true,
        retainDataForTesting: retainDataForTesting);
    Component? component = result.component;
    if (component == null) return null;

    if (requireMain && component.mainMethod == null) {
      context.options.report(
          messageMissingMain.withLocation(source, -1, noLength),
          Severity.error);
      return null;
    }
    return result;
  });
}

/// Generates a kernel representation for a module containing [sources].
///
/// A module is a collection of libraries that are compiled together. Libraries
/// in the module may depend on each other and may have dependencies to
/// libraries in other modules. Unlike library dependencies, module dependencies
/// must be acyclic.
///
/// This API is intended for modular compilation. Dependencies to other modules
/// are specified using [CompilerOptions.additionalDills]. Any dependency
/// of [sources] that is not listed in [CompilerOptions.additionalDills] and
/// [CompilerOptions.sdkSummary] is treated as an additional source file for the
/// module.
///
/// Any `part` declarations found in [sources] must refer to part files which
/// are also listed in the module sources, otherwise an error results.  (It
/// is not permitted to refer to a part file declared in another module).
///
/// The return value is a [CompilerResult] object with no main method set in
/// the [Component] of its `component` property. The [Component] includes
/// external libraries for those libraries loaded through summaries.
Future<CompilerResult> kernelForModule(
    List<Uri> sources, CompilerOptions options) async {
  return (await generateKernel(
      ProcessedOptions(options: options, inputs: sources),
      includeHierarchyAndCoreTypes: true));
}
