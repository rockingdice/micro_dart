// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart' show AxisDirection;
import 'package:flutter/physics.dart';
import 'package:flutter/src/widgets/binding.dart' show WidgetsBinding;
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/overscroll_indicator.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_simulation.dart';
import 'package:flutter/src/widgets/view.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/widgets/scroll_physics.dart',
  {
    'ScrollPhysics.': _ScrollPhysics__$,
    'RangeMaintainingScrollPhysics.': _RangeMaintainingScrollPhysics__$,
    'BouncingScrollPhysics.': _BouncingScrollPhysics__$,
    'ClampingScrollPhysics.': _ClampingScrollPhysics__$,
    'AlwaysScrollableScrollPhysics.': _AlwaysScrollableScrollPhysics__$,
    'NeverScrollableScrollPhysics.': _NeverScrollableScrollPhysics__$,
    'ScrollDecelerationRate.normal': _ScrollDecelerationRate_normal$,
    'ScrollDecelerationRate.fast': _ScrollDecelerationRate_fast$,
    'ScrollDecelerationRate.values': _ScrollDecelerationRate_values$,
  },
  {},
  {
    'ScrollPhysics': m.ClassMirror(
      'ScrollPhysics',
      {
        '#as': ScrollPhysics_as$,
        '#is': ScrollPhysics_is$,
        'parent': _ScrollPhysics_parent$,
        'spring': _ScrollPhysics_spring$,
        'minFlingDistance': _ScrollPhysics_minFlingDistance$,
        'minFlingVelocity': _ScrollPhysics_minFlingVelocity$,
        'maxFlingVelocity': _ScrollPhysics_maxFlingVelocity$,
        'dragStartDistanceMotionThreshold':
            _ScrollPhysics_dragStartDistanceMotionThreshold$,
        'allowImplicitScrolling': _ScrollPhysics_allowImplicitScrolling$,
        'buildParent': _ScrollPhysics_buildParent$,
        'applyTo': _ScrollPhysics_applyTo$,
        'applyPhysicsToUserOffset': _ScrollPhysics_applyPhysicsToUserOffset$,
        'shouldAcceptUserOffset': _ScrollPhysics_shouldAcceptUserOffset$,
        'recommendDeferredLoading': _ScrollPhysics_recommendDeferredLoading$,
        'applyBoundaryConditions': _ScrollPhysics_applyBoundaryConditions$,
        'adjustPositionForNewDimensions':
            _ScrollPhysics_adjustPositionForNewDimensions$,
        'createBallisticSimulation': _ScrollPhysics_createBallisticSimulation$,
        'toleranceFor': _ScrollPhysics_toleranceFor$,
        'carriedMomentum': _ScrollPhysics_carriedMomentum$,
        'toString': _ScrollPhysics_toString$,
      },
      {},
    ),
    'RangeMaintainingScrollPhysics': m.ClassMirror(
      'RangeMaintainingScrollPhysics',
      {
        '#as': RangeMaintainingScrollPhysics_as$,
        '#is': RangeMaintainingScrollPhysics_is$,
        'applyTo': _RangeMaintainingScrollPhysics_applyTo$,
        'adjustPositionForNewDimensions':
            _RangeMaintainingScrollPhysics_adjustPositionForNewDimensions$,
      },
      {},
    ),
    'BouncingScrollPhysics': m.ClassMirror(
      'BouncingScrollPhysics',
      {
        '#as': BouncingScrollPhysics_as$,
        '#is': BouncingScrollPhysics_is$,
        'decelerationRate': _BouncingScrollPhysics_decelerationRate$,
        'minFlingVelocity': _BouncingScrollPhysics_minFlingVelocity$,
        'dragStartDistanceMotionThreshold':
            _BouncingScrollPhysics_dragStartDistanceMotionThreshold$,
        'maxFlingVelocity': _BouncingScrollPhysics_maxFlingVelocity$,
        'spring': _BouncingScrollPhysics_spring$,
        'applyTo': _BouncingScrollPhysics_applyTo$,
        'frictionFactor': _BouncingScrollPhysics_frictionFactor$,
        'applyPhysicsToUserOffset':
            _BouncingScrollPhysics_applyPhysicsToUserOffset$,
        'applyBoundaryConditions':
            _BouncingScrollPhysics_applyBoundaryConditions$,
        'createBallisticSimulation':
            _BouncingScrollPhysics_createBallisticSimulation$,
        'carriedMomentum': _BouncingScrollPhysics_carriedMomentum$,
      },
      {},
    ),
    'ClampingScrollPhysics': m.ClassMirror(
      'ClampingScrollPhysics',
      {
        '#as': ClampingScrollPhysics_as$,
        '#is': ClampingScrollPhysics_is$,
        'applyTo': _ClampingScrollPhysics_applyTo$,
        'applyBoundaryConditions':
            _ClampingScrollPhysics_applyBoundaryConditions$,
        'createBallisticSimulation':
            _ClampingScrollPhysics_createBallisticSimulation$,
      },
      {},
    ),
    'AlwaysScrollableScrollPhysics': m.ClassMirror(
      'AlwaysScrollableScrollPhysics',
      {
        '#as': AlwaysScrollableScrollPhysics_as$,
        '#is': AlwaysScrollableScrollPhysics_is$,
        'applyTo': _AlwaysScrollableScrollPhysics_applyTo$,
        'shouldAcceptUserOffset':
            _AlwaysScrollableScrollPhysics_shouldAcceptUserOffset$,
      },
      {},
    ),
    'NeverScrollableScrollPhysics': m.ClassMirror(
      'NeverScrollableScrollPhysics',
      {
        '#as': NeverScrollableScrollPhysics_as$,
        '#is': NeverScrollableScrollPhysics_is$,
        'allowImplicitScrolling':
            _NeverScrollableScrollPhysics_allowImplicitScrolling$,
        'applyTo': _NeverScrollableScrollPhysics_applyTo$,
        'shouldAcceptUserOffset':
            _NeverScrollableScrollPhysics_shouldAcceptUserOffset$,
      },
      {},
    ),
    'ScrollDecelerationRate': m.ClassMirror(
      'ScrollDecelerationRate',
      {},
      {},
    ),
  },
);
Function ScrollPhysics_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ScrollPhysics;
Function ScrollPhysics_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ScrollPhysics;
Function _ScrollPhysics_parent$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    () {
      return target$.parent;
    };
Function _ScrollPhysics_spring$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    () {
      return target$.spring;
    };
Function _ScrollPhysics_minFlingDistance$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    () {
      return target$.minFlingDistance;
    };
Function _ScrollPhysics_minFlingVelocity$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    () {
      return target$.minFlingVelocity;
    };
Function _ScrollPhysics_maxFlingVelocity$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    () {
      return target$.maxFlingVelocity;
    };
Function _ScrollPhysics_dragStartDistanceMotionThreshold$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    () {
      return target$.dragStartDistanceMotionThreshold;
    };
Function _ScrollPhysics_allowImplicitScrolling$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    () {
      return target$.allowImplicitScrolling;
    };
Function _ScrollPhysics__$(m.Scope scope$) => ({ScrollPhysics? parent}) {
      return ScrollPhysics(parent: parent);
    };
Function _ScrollPhysics_buildParent$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    target$.buildParent;
Function _ScrollPhysics_applyTo$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    target$.applyTo;
Function _ScrollPhysics_applyPhysicsToUserOffset$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    target$.applyPhysicsToUserOffset;
Function _ScrollPhysics_shouldAcceptUserOffset$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    target$.shouldAcceptUserOffset;
Function _ScrollPhysics_recommendDeferredLoading$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    target$.recommendDeferredLoading;
Function _ScrollPhysics_applyBoundaryConditions$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    target$.applyBoundaryConditions;
Function _ScrollPhysics_adjustPositionForNewDimensions$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    target$.adjustPositionForNewDimensions;
Function _ScrollPhysics_createBallisticSimulation$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    target$.createBallisticSimulation;
Function _ScrollPhysics_toleranceFor$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    target$.toleranceFor;
Function _ScrollPhysics_carriedMomentum$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    target$.carriedMomentum;
Function _ScrollPhysics_toString$(
  m.Scope scope$,
  ScrollPhysics target$,
) =>
    target$.toString;
Function RangeMaintainingScrollPhysics_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as RangeMaintainingScrollPhysics;
Function RangeMaintainingScrollPhysics_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is RangeMaintainingScrollPhysics;
Function _RangeMaintainingScrollPhysics__$(m.Scope scope$) =>
    ({ScrollPhysics? parent}) {
      return RangeMaintainingScrollPhysics(parent: parent);
    };
Function _RangeMaintainingScrollPhysics_applyTo$(
  m.Scope scope$,
  RangeMaintainingScrollPhysics target$,
) =>
    target$.applyTo;
Function _RangeMaintainingScrollPhysics_adjustPositionForNewDimensions$(
  m.Scope scope$,
  RangeMaintainingScrollPhysics target$,
) =>
    target$.adjustPositionForNewDimensions;
Function BouncingScrollPhysics_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as BouncingScrollPhysics;
Function BouncingScrollPhysics_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is BouncingScrollPhysics;
Function _BouncingScrollPhysics_decelerationRate$(
  m.Scope scope$,
  BouncingScrollPhysics target$,
) =>
    () {
      return target$.decelerationRate;
    };
Function _BouncingScrollPhysics_minFlingVelocity$(
  m.Scope scope$,
  BouncingScrollPhysics target$,
) =>
    () {
      return target$.minFlingVelocity;
    };
Function _BouncingScrollPhysics_dragStartDistanceMotionThreshold$(
  m.Scope scope$,
  BouncingScrollPhysics target$,
) =>
    () {
      return target$.dragStartDistanceMotionThreshold;
    };
Function _BouncingScrollPhysics_maxFlingVelocity$(
  m.Scope scope$,
  BouncingScrollPhysics target$,
) =>
    () {
      return target$.maxFlingVelocity;
    };
Function _BouncingScrollPhysics_spring$(
  m.Scope scope$,
  BouncingScrollPhysics target$,
) =>
    () {
      return target$.spring;
    };
Function _BouncingScrollPhysics__$(m.Scope scope$) => ({
      ScrollDecelerationRate? decelerationRate,
      ScrollPhysics? parent,
    }) {
      return BouncingScrollPhysics(
        decelerationRate: decelerationRate ?? ScrollDecelerationRate.normal,
        parent: parent,
      );
    };
Function _BouncingScrollPhysics_applyTo$(
  m.Scope scope$,
  BouncingScrollPhysics target$,
) =>
    target$.applyTo;
Function _BouncingScrollPhysics_frictionFactor$(
  m.Scope scope$,
  BouncingScrollPhysics target$,
) =>
    target$.frictionFactor;
Function _BouncingScrollPhysics_applyPhysicsToUserOffset$(
  m.Scope scope$,
  BouncingScrollPhysics target$,
) =>
    target$.applyPhysicsToUserOffset;
Function _BouncingScrollPhysics_applyBoundaryConditions$(
  m.Scope scope$,
  BouncingScrollPhysics target$,
) =>
    target$.applyBoundaryConditions;
Function _BouncingScrollPhysics_createBallisticSimulation$(
  m.Scope scope$,
  BouncingScrollPhysics target$,
) =>
    target$.createBallisticSimulation;
Function _BouncingScrollPhysics_carriedMomentum$(
  m.Scope scope$,
  BouncingScrollPhysics target$,
) =>
    target$.carriedMomentum;
Function ClampingScrollPhysics_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as ClampingScrollPhysics;
Function ClampingScrollPhysics_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is ClampingScrollPhysics;
Function _ClampingScrollPhysics__$(m.Scope scope$) =>
    ({ScrollPhysics? parent}) {
      return ClampingScrollPhysics(parent: parent);
    };
Function _ClampingScrollPhysics_applyTo$(
  m.Scope scope$,
  ClampingScrollPhysics target$,
) =>
    target$.applyTo;
Function _ClampingScrollPhysics_applyBoundaryConditions$(
  m.Scope scope$,
  ClampingScrollPhysics target$,
) =>
    target$.applyBoundaryConditions;
Function _ClampingScrollPhysics_createBallisticSimulation$(
  m.Scope scope$,
  ClampingScrollPhysics target$,
) =>
    target$.createBallisticSimulation;
Function AlwaysScrollableScrollPhysics_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as AlwaysScrollableScrollPhysics;
Function AlwaysScrollableScrollPhysics_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is AlwaysScrollableScrollPhysics;
Function _AlwaysScrollableScrollPhysics__$(m.Scope scope$) =>
    ({ScrollPhysics? parent}) {
      return AlwaysScrollableScrollPhysics(parent: parent);
    };
Function _AlwaysScrollableScrollPhysics_applyTo$(
  m.Scope scope$,
  AlwaysScrollableScrollPhysics target$,
) =>
    target$.applyTo;
Function _AlwaysScrollableScrollPhysics_shouldAcceptUserOffset$(
  m.Scope scope$,
  AlwaysScrollableScrollPhysics target$,
) =>
    target$.shouldAcceptUserOffset;
Function NeverScrollableScrollPhysics_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as NeverScrollableScrollPhysics;
Function NeverScrollableScrollPhysics_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is NeverScrollableScrollPhysics;
Function _NeverScrollableScrollPhysics_allowImplicitScrolling$(
  m.Scope scope$,
  NeverScrollableScrollPhysics target$,
) =>
    () {
      return target$.allowImplicitScrolling;
    };
Function _NeverScrollableScrollPhysics__$(m.Scope scope$) =>
    ({ScrollPhysics? parent}) {
      return NeverScrollableScrollPhysics(parent: parent);
    };
Function _NeverScrollableScrollPhysics_applyTo$(
  m.Scope scope$,
  NeverScrollableScrollPhysics target$,
) =>
    target$.applyTo;
Function _NeverScrollableScrollPhysics_shouldAcceptUserOffset$(
  m.Scope scope$,
  NeverScrollableScrollPhysics target$,
) =>
    target$.shouldAcceptUserOffset;
Function _ScrollDecelerationRate_normal$(m.Scope scope$) =>
    () => ScrollDecelerationRate.normal;
Function _ScrollDecelerationRate_fast$(m.Scope scope$) =>
    () => ScrollDecelerationRate.fast;
Function _ScrollDecelerationRate_values$(m.Scope scope$) =>
    () => ScrollDecelerationRate.values;
