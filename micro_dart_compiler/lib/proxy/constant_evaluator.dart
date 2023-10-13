// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// This library implements a kernel2kernel constant evaluation transformation.
///
/// Even though it is expected that the frontend does not emit kernel AST which
/// contains compile-time errors, this transformation still performs some
/// validation and throws a [ConstantEvaluationError] if there was a
/// compile-time errors.
///
/// Due to the lack information which is only available in the front-end,
/// this validation is incomplete (e.g. whether an integer literal used the
/// hexadecimal syntax or not).
///
/// Furthermore due to the lowering of certain constructs in the front-end
/// (e.g. '??') we need to support a super-set of the normal constant expression
/// language.  Issue(http://dartbug.com/31799)

import 'dart:io' as io;

import 'package:kernel/ast.dart';
import 'package:kernel/class_hierarchy.dart';
import 'package:kernel/core_types.dart';
import 'package:kernel/src/const_canonical_type.dart';
import 'package:kernel/src/legacy_erasure.dart';
import 'package:kernel/src/norm.dart';
import 'package:kernel/src/printer.dart'
    show AstPrinter, AstTextStrategy, defaultAstTextStrategy;
import 'package:kernel/type_algebra.dart';
import 'package:kernel/type_environment.dart';
import 'package:kernel/target/targets.dart';
import 'package:_fe_analyzer_shared/src/exhaustiveness/space.dart';
import 'package:_fe_analyzer_shared/src/exhaustiveness/exhaustive.dart';
import 'package:_fe_analyzer_shared/src/exhaustiveness/static_type.dart';

import 'package:front_end/src/api_prototype/lowering_predicates.dart';
import 'package:front_end/src/base/nnbd_mode.dart';
import 'package:front_end/src/fasta/fasta_codes.dart';

import 'package:front_end/src/fasta/type_inference/delayed_expressions.dart';
import 'package:front_end/src/fasta/type_inference/external_ast_helper.dart';
import 'package:front_end/src/fasta/type_inference/matching_cache.dart';
import 'package:front_end/src/fasta/type_inference/matching_expressions.dart';
import 'package:front_end/src/fasta/kernel/constant_int_folder.dart';
import 'package:front_end/src/fasta/kernel/exhaustiveness.dart';
import 'package:front_end/src/fasta/kernel/static_weak_references.dart'
    show StaticWeakReferences;

import 'package:front_end/src/fasta/kernel/constant_evaluator.dart';

Component transformComponent(
    Target target,
    Component component,
    Map<String, String> environmentDefines,
    ErrorReporter errorReporter,
    EvaluationMode evaluationMode,
    {required bool evaluateAnnotations,
    required bool desugarSets,
    required bool enableTripleShift,
    required bool enableConstFunctions,
    required bool enableConstructorTearOff,
    required bool errorOnUnevaluatedConstant,
    CoreTypes? coreTypes,
    ClassHierarchy? hierarchy,
    ExhaustivenessDataForTesting? exhaustivenessDataForTesting}) {
  // ignore: unnecessary_null_comparison
  assert(evaluateAnnotations != null);
  // ignore: unnecessary_null_comparison
  assert(desugarSets != null);
  // ignore: unnecessary_null_comparison
  assert(enableTripleShift != null);
  // ignore: unnecessary_null_comparison
  assert(enableConstFunctions != null);
  // ignore: unnecessary_null_comparison
  assert(errorOnUnevaluatedConstant != null);
  // ignore: unnecessary_null_comparison
  assert(enableConstructorTearOff != null);
  coreTypes ??= new CoreTypes(component);
  hierarchy ??= new ClassHierarchy(component, coreTypes);

  final TypeEnvironment typeEnvironment =
      new TypeEnvironment(coreTypes, hierarchy);

  transformLibraries(component, component.libraries, target, environmentDefines,
      typeEnvironment, errorReporter, evaluationMode,
      enableTripleShift: enableTripleShift,
      enableConstFunctions: enableConstFunctions,
      errorOnUnevaluatedConstant: errorOnUnevaluatedConstant,
      evaluateAnnotations: evaluateAnnotations,
      enableConstructorTearOff: enableConstructorTearOff);
  return component;
}

ConstantEvaluationData transformLibraries(
    Component component,
    List<Library> libraries,
    Target target,
    Map<String, String>? environmentDefines,
    TypeEnvironment typeEnvironment,
    ErrorReporter errorReporter,
    EvaluationMode evaluationMode,
    {required bool evaluateAnnotations,
    required bool enableTripleShift,
    required bool enableConstFunctions,
    required bool errorOnUnevaluatedConstant,
    required bool enableConstructorTearOff,
    ExhaustivenessDataForTesting? exhaustivenessDataForTesting}) {
  // ignore: unnecessary_null_comparison
  assert(evaluateAnnotations != null);
  // ignore: unnecessary_null_comparison
  assert(enableTripleShift != null);
  // ignore: unnecessary_null_comparison
  assert(enableConstFunctions != null);
  // ignore: unnecessary_null_comparison
  assert(errorOnUnevaluatedConstant != null);
  // ignore: unnecessary_null_comparison
  assert(enableConstructorTearOff != null);
  final ConstantsTransformer constantsTransformer = ConstantsTransformerProxy(
      target,
      environmentDefines,
      evaluateAnnotations,
      enableTripleShift,
      enableConstFunctions,
      enableConstructorTearOff,
      errorOnUnevaluatedConstant,
      component,
      typeEnvironment,
      errorReporter,
      evaluationMode,
      exhaustivenessDataForTesting: exhaustivenessDataForTesting);
  for (final Library library in libraries) {
    constantsTransformer.convertLibrary(library);
  }

  return new ConstantEvaluationData(
      constantsTransformer.constantEvaluator.getConstantCoverage(),
      constantsTransformer.constantEvaluator.visitedLibraries);
}

void transformProcedure(
    Procedure procedure,
    Target target,
    Component component,
    Map<String, String>? environmentDefines,
    TypeEnvironment typeEnvironment,
    ErrorReporter errorReporter,
    EvaluationMode evaluationMode,
    {required bool evaluateAnnotations,
    required bool enableTripleShift,
    required bool enableConstFunctions,
    required bool enableConstructorTearOff,
    required bool errorOnUnevaluatedConstant}) {
  // ignore: unnecessary_null_comparison
  assert(evaluateAnnotations != null);
  // ignore: unnecessary_null_comparison
  assert(enableTripleShift != null);
  // ignore: unnecessary_null_comparison
  assert(enableConstFunctions != null);
  // ignore: unnecessary_null_comparison
  assert(errorOnUnevaluatedConstant != null);
  // ignore: unnecessary_null_comparison
  assert(enableConstructorTearOff != null);
  final ConstantsTransformer constantsTransformer = ConstantsTransformerProxy(
      target,
      environmentDefines,
      evaluateAnnotations,
      enableTripleShift,
      enableConstFunctions,
      enableConstructorTearOff,
      errorOnUnevaluatedConstant,
      component,
      typeEnvironment,
      errorReporter,
      evaluationMode);
  constantsTransformer.visitProcedure(procedure, null);
}

class ConstantsTransformerProxy extends ConstantsTransformer {
  ConstantsTransformerProxy(
      super.target,
      super.environmentDefines,
      super.evaluateAnnotations,
      super.enableTripleShift,
      super.enableConstFunctions,
      super.enableConstructorTearOff,
      super.errorOnUnevaluatedConstant,
      super.component,
      super.typeEnvironment,
      super.errorReporter,
      super.evaluationMode,
      {super.exhaustivenessDataForTesting});

  void convertLibrary(Library library) {}

  @override
  TreeNode visitConstructorInvocation(
      ConstructorInvocation node, TreeNode? removalSentinel) {
    if (node.isConst) {
      print("visitConstructorInvocation: ${node.name.text}");
    }
    return node;
  }

  @override
  TreeNode visitField(Field node, TreeNode? removalSentinel) {
    if (node.isConst) {
      print("visitStaticGet ${node.name.text}");
    }
    return node;
  }

  @override
  TreeNode visitStaticGet(StaticGet node, TreeNode? removalSentinel) {
    if (node.target.isConst) {
      print("visitStaticGet ${node.target.name.text}");
    }

    return node;
  }

  @override
  TreeNode visitConstantExpression(
      ConstantExpression node, TreeNode? removalSentinel) {
    return node;
  }

  @override
  TreeNode visitSwitchStatement(
      SwitchStatement node, TreeNode? removalSentinel) {
    for (SwitchCase switchCase in node.cases) {
      for (Expression caseExpression in switchCase.expressions) {
        if (caseExpression is ConstantExpression) {
          print("visitSwitchStatement ${caseExpression.constant.toString()}");
        }
      }
    }
    return super.visitSwitchStatement(node, removalSentinel);
  }
}
