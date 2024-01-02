// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library fasta.kernel_target;

import 'package:_fe_analyzer_shared/src/messages/severity.dart' show Severity;
import 'package:kernel/ast.dart';
import 'package:kernel/class_hierarchy.dart' show ClassHierarchy;
import 'package:kernel/core_types.dart';
import 'package:kernel/reference_from_index.dart' show IndexedClass;
import 'package:kernel/target/changed_structure_notifier.dart'
    show ChangedStructureNotifier;
import 'package:kernel/target/targets.dart' show DiagnosticReporter, Target;
import 'package:kernel/transformations/value_class.dart' as valueClass;
import 'package:kernel/type_algebra.dart' show Substitution;
import 'package:kernel/type_environment.dart' show TypeEnvironment;
import 'package:kernel/verifier.dart' as verifier;
import 'package:package_config/package_config.dart' hide LanguageVersion;

import 'package:front_end/src/api_prototype/experimental_flags.dart'
    show ExperimentalFlag, GlobalFeatures;
import 'package:front_end/src/api_prototype/file_system.dart' show FileSystem;
import 'package:front_end/src/base/nnbd_mode.dart';
import 'package:front_end/src/base/processed_options.dart'
    show ProcessedOptions;
import 'package:front_end/src/fasta/builder/builder.dart';
import 'package:front_end/src/fasta/builder/class_builder.dart';
import 'package:front_end/src/fasta/builder/dynamic_type_declaration_builder.dart';
import 'package:front_end/src/fasta/builder/field_builder.dart';
import 'package:front_end/src/fasta/builder/invalid_type_declaration_builder.dart';
import 'package:front_end/src/fasta/builder/library_builder.dart';
import 'package:front_end/src/fasta/builder/member_builder.dart';
import 'package:front_end/src/fasta/builder/name_iterator.dart';
import 'package:front_end/src/fasta/builder/named_type_builder.dart';
import 'package:front_end/src/fasta/builder/never_type_declaration_builder.dart';
import 'package:front_end/src/fasta/builder/nullability_builder.dart';
import 'package:front_end/src/fasta/builder/procedure_builder.dart';
import 'package:front_end/src/fasta/builder/type_alias_builder.dart';
import 'package:front_end/src/fasta/builder/type_builder.dart';
import 'package:front_end/src/fasta/builder/type_declaration_builder.dart';
import 'package:front_end/src/fasta/builder/type_variable_builder.dart';
import 'package:front_end/src/fasta/builder/void_type_declaration_builder.dart';
import 'package:front_end/src/fasta/compiler_context.dart' show CompilerContext;
import 'package:front_end/src/fasta/crash.dart' show withCrashReporting;
import 'package:front_end/src/fasta/dill/dill_target.dart' show DillTarget;
import 'package:front_end/src/fasta/kernel/constructor_tearoff_lowering.dart';
import 'package:front_end/src/fasta/loader.dart' show Loader;
import 'package:front_end/src/fasta/messages.dart'
    show
        FormattedMessage,
        LocatedMessage,
        Message,
        messageConstConstructorLateFinalFieldCause,
        messageConstConstructorLateFinalFieldError,
        messageConstConstructorNonFinalField,
        messageConstConstructorNonFinalFieldCause,
        messageConstConstructorRedirectionToNonConst,
        noLength,
        templateFieldNonNullableNotInitializedByConstructorError,
        templateFieldNonNullableWithoutInitializerError,
        templateFinalFieldNotInitialized,
        templateFinalFieldNotInitializedByConstructor,
        templateMissingImplementationCause,
        templateSuperclassHasNoDefaultConstructor;
import 'package:front_end/src/fasta/problems.dart' show unhandled;
import 'package:front_end/src/fasta/scope.dart' show AmbiguousBuilder;
import 'package:front_end/src/fasta/source/class_declaration.dart';
import 'package:front_end/src/fasta/source/constructor_declaration.dart';
import 'package:front_end/src/fasta/source/source_class_builder.dart'
    show SourceClassBuilder;
import 'package:front_end/src/fasta/source/source_constructor_builder.dart';
import 'package:front_end/src/fasta/source/source_field_builder.dart';
import 'package:front_end/src/fasta/source/source_inline_class_builder.dart';
import 'package:front_end/src/fasta/source/source_library_builder.dart'
    show SourceLibraryBuilder;
import 'package:front_end/src/fasta/source/source_loader.dart'
    show SourceLoader;
import 'package:front_end/src/fasta/target_implementation.dart'
    show TargetImplementation;
import 'package:front_end/src/fasta/ticker.dart' show Ticker;
import 'package:front_end/src/fasta/type_inference/type_schema.dart';
import 'package:front_end/src/fasta/uri_translator.dart' show UriTranslator;
import 'package:front_end/src/fasta/kernel/benchmarker.dart'
    show BenchmarkPhases, Benchmarker;
import 'package:front_end/src/fasta/kernel/constant_evaluator.dart' as constants
    show
        EvaluationMode,
        transformProcedure,
        ConstantCoverage,
        ConstantEvaluationData;
import 'package:front_end/src/fasta/kernel/kernel_constants.dart'
    show KernelConstantErrorReporter;
import 'package:front_end/src/fasta/kernel/kernel_helper.dart';
import 'package:front_end/src/fasta/kernel/macro/macro.dart';
import 'package:front_end/src/fasta/kernel/verifier.dart'
    show verifyComponent, verifyGetStaticType;

import 'package:front_end/src/fasta/kernel/kernel_target.dart' as kt;

import 'constant_evaluator.dart';

class KernelTargetProxy extends kt.KernelTarget {
  KernelTargetProxy(super.fileSystem, super.includeComments, super.dillTarget,
      super.uriTranslator);

  /// Build the kernel representation of the component loaded by this
  /// target. The component will contain full bodies for the code loaded from
  /// sources, and only references to the code loaded by the [DillTarget],
  /// which may or may not include method bodies (depending on what was loaded
  /// into that target, an outline or a full kernel component).
  ///
  /// If [verify], run the default kernel verification on the resulting
  /// component.
  Future<kt.BuildResult> buildComponent(
      {required MacroApplications? macroApplications,
      bool verify = false,
      bool allowVerificationErrorForTesting = false}) async {
    if (loader.roots.isEmpty) {
      return kt.BuildResult(macroApplications: macroApplications);
    }
    return withCrashReporting<kt.BuildResult>(() async {
      ticker.logMs("Building component");

      if (macroApplications != null) {
        benchmarker?.enterPhase(BenchmarkPhases.body_applyDefinitionMacros);
        List<SourceLibraryBuilder> augmentationLibraries =
            await macroApplications.applyDefinitionMacros();
        benchmarker
            ?.enterPhase(BenchmarkPhases.body_buildMacroDefinitionsForPhase1);
        await _buildForPhase1(augmentationLibraries);
        benchmarker
            ?.enterPhase(BenchmarkPhases.body_buildMacroDefinitionsForPhase2);
        _buildForPhase2(augmentationLibraries);
        benchmarker
            ?.enterPhase(BenchmarkPhases.body_buildMacroDefinitionsForPhase3);
        _buildForPhase3(augmentationLibraries);
      }

      benchmarker?.enterPhase(BenchmarkPhases.body_buildBodies);
      await loader.buildBodies(loader.sourceLibraryBuilders);

      benchmarker?.enterPhase(BenchmarkPhases.body_checkMixinSuperAccesses);
      loader.checkMixinSuperAccesses();

      benchmarker?.enterPhase(BenchmarkPhases.body_finishSynthesizedParameters);
      finishSynthesizedParameters();

      benchmarker?.enterPhase(BenchmarkPhases.body_finishDeferredLoadTearoffs);
      loader.finishDeferredLoadTearoffs();

      benchmarker
          ?.enterPhase(BenchmarkPhases.body_finishNoSuchMethodForwarders);
      loader.finishNoSuchMethodForwarders();

      benchmarker?.enterPhase(BenchmarkPhases.body_collectSourceClasses);
      List<SourceClassBuilder>? sourceClasses = [];
      List<SourceInlineClassBuilder>? inlineClasses = [];
      loader.collectSourceClasses(sourceClasses, inlineClasses);

      benchmarker?.enterPhase(BenchmarkPhases.body_finishNativeMethods);
      loader.finishNativeMethods();

      benchmarker?.enterPhase(BenchmarkPhases.body_finishPatchMethods);
      loader.buildBodyNodes();

      benchmarker?.enterPhase(BenchmarkPhases.body_finishAllConstructors);
      finishAllConstructors(sourceClasses, inlineClasses);

      benchmarker?.enterPhase(BenchmarkPhases.body_runBuildTransformations);
      runBuildTransformations();

      if (verify) {
        benchmarker?.enterPhase(BenchmarkPhases.body_verify);
        _verify(
            allowVerificationErrorForTesting: allowVerificationErrorForTesting);
      }

      benchmarker?.enterPhase(BenchmarkPhases.body_installAllComponentProblems);
      installAllComponentProblems(loader.allComponentProblems);

      benchmarker?.enterPhase(BenchmarkPhases.unknownBuildComponent);

      // For whatever reason sourceClasses is kept alive for some amount
      // of time, meaning that all source library builders will be kept alive
      // (for whatever amount of time) even though we convert them to dill
      // library builders. To avoid it we null it out here.
      sourceClasses = null;
      inlineClasses = null;
      return kt.BuildResult(
          component: component, macroApplications: macroApplications);
    }, () => loader.currentUriForCrashReporting);
  }

  void _verify({required bool allowVerificationErrorForTesting}) {
    // TODO(ahe): How to handle errors.
    List<LocatedMessage> errors = verifyComponent(context.options.target,
        verifier.VerificationStage.afterModularTransformations, component!,
        skipPlatform: context.options.skipPlatformVerification);
    assert(allowVerificationErrorForTesting || errors.isEmpty,
        "Verification errors found.");
    ClassHierarchy hierarchy =
        new ClassHierarchy(component!, new CoreTypes(component!),
            onAmbiguousSupertypes: (Class cls, Supertype a, Supertype b) {
      // An error has already been reported.
    });
    verifyGetStaticType(
        new TypeEnvironment(loader.coreTypes, hierarchy), component!,
        skipPlatform: context.options.skipPlatformVerification);
    ticker.logMs("Verified component");
  }

  /// Run all transformations that are needed when building a bundle of
  /// libraries for the first time.

  @override
  void runBuildTransformations() {
    backendTarget.performPreConstantEvaluationTransformations(component!,
        loader.coreTypes, loader.libraries, kt.KernelDiagnosticReporter(loader),
        logger: (String msg) => ticker.logMs(msg),
        changedStructureNotifier: changedStructureNotifier);

    TypeEnvironment environment =
        new TypeEnvironment(loader.coreTypes, loader.hierarchy);
    constants.EvaluationMode evaluationMode = _getConstantEvaluationMode();

    constants.ConstantEvaluationData constantEvaluationData =
        transformLibraries(
            component!,
            loader.libraries,
            backendTarget,
            environmentDefines,
            environment,
            new KernelConstantErrorReporter(loader),
            evaluationMode,
            evaluateAnnotations: true,
            enableTripleShift: globalFeatures.tripleShift.isEnabled,
            enableConstFunctions: globalFeatures.constFunctions.isEnabled,
            enableConstructorTearOff:
                globalFeatures.constructorTearoffs.isEnabled,
            errorOnUnevaluatedConstant: errorOnUnevaluatedConstant,
            exhaustivenessDataForTesting:
                loader.dataForTesting?.exhaustivenessData);
    ticker.logMs("Evaluated constants");

    markLibrariesUsed(constantEvaluationData.visitedLibraries);

    constants.ConstantCoverage coverage = constantEvaluationData.coverage;
    coverage.constructorCoverage.forEach((Uri fileUri, Set<Reference> value) {
      Source? source = uriToSource[fileUri];
      // ignore: unnecessary_null_comparison
      if (source != null && fileUri != null) {
        source.constantCoverageConstructors ??= new Set<Reference>();
        source.constantCoverageConstructors!.addAll(value);
      }
    });
    ticker.logMs("Added constant coverage");

    if (loader.target.context.options.globalFeatures.valueClass.isEnabled) {
      valueClass.transformComponent(component!, loader.coreTypes,
          loader.hierarchy, loader.referenceFromIndex, environment);
      ticker.logMs("Lowered value classes");
    }

    backendTarget.performModularTransformationsOnLibraries(
        component!,
        loader.coreTypes,
        loader.hierarchy,
        loader.libraries,
        environmentDefines,
        kt.KernelDiagnosticReporter(loader),
        loader.referenceFromIndex,
        logger: (String msg) => ticker.logMs(msg),
        changedStructureNotifier: changedStructureNotifier);
  }

  constants.EvaluationMode _getConstantEvaluationMode() {
    // If nnbd is not enabled we will use weak evaluation mode. This is needed
    // because the SDK might be agnostic and therefore needs to be weakened
    // for legacy mode.
    assert(
        globalFeatures.nonNullable.isEnabled ||
            loader.nnbdMode == NnbdMode.Weak,
        "Non-weak nnbd mode found without experiment enabled: "
        "${loader.nnbdMode}.");
    return constants.EvaluationMode.fromNnbdMode(loader.nnbdMode);
  }

  /// Builds [augmentationLibraries] to the state expected after applying phase
  /// 1 macros.
  Future<void> _buildForPhase1(
      Iterable<SourceLibraryBuilder> augmentationLibraries) async {
    await loader.buildOutlines();
    // Normally patch libraries are applied in [SourceLoader.resolveParts].
    // For augmentation libraries we instead apply them directly here.
    for (SourceLibraryBuilder augmentationLibrary in augmentationLibraries) {
      augmentationLibrary.applyPatches();
    }
    loader.computeLibraryScopes(augmentationLibraries);
    // TODO(johnniwinther): Support computation of macro applications in
    // augmentation libraries?
    loader.resolveTypes(augmentationLibraries);
  }

  /// Builds [augmentationLibraries] to the state expected after applying phase
  /// 2 macros.
  void _buildForPhase2(List<SourceLibraryBuilder> augmentationLibraries) {
    loader.finishTypeVariables(
        augmentationLibraries, objectClassBuilder, dynamicType);
    for (SourceLibraryBuilder augmentationLibrary in augmentationLibraries) {
      augmentationLibrary.buildOutlineNodes(loader.coreLibrary,
          modifyTarget: false);
    }
    loader.resolveConstructors(augmentationLibraries);
  }

  /// Builds [augmentationLibraries] to the state expected after applying phase
  /// 3 macros.
  void _buildForPhase3(List<SourceLibraryBuilder> augmentationLibraries) {
    // Currently there nothing to do here. The method is left in for symmetry.
  }
}
