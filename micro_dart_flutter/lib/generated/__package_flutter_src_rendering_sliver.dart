// generated by micro_dart_generator
// ignore_for_file: non_constant_identifier_names

import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
import 'package:flutter/src/rendering/sliver.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/viewport.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';

const libraryMirror = m.LibraryMirror(
  'package:flutter/src/rendering/sliver.dart',
  {
    'SliverConstraints.': _SliverConstraints__$,
    'SliverGeometry.zero': _SliverGeometry_zero$,
    'SliverGeometry.': _SliverGeometry__$,
    'SliverHitTestResult.': _SliverHitTestResult__$,
    'SliverHitTestResult.wrap': _SliverHitTestResult_wrap_$,
    'SliverHitTestEntry.': _SliverHitTestEntry__$,
    'SliverLogicalParentData.': _SliverLogicalParentData__$,
    'SliverLogicalContainerParentData.': _SliverLogicalContainerParentData__$,
    'SliverPhysicalParentData.': _SliverPhysicalParentData__$,
    'SliverPhysicalContainerParentData.': _SliverPhysicalContainerParentData__$,
    'RenderSliverToBoxAdapter.': _RenderSliverToBoxAdapter__$,
    'GrowthDirection.forward': _GrowthDirection_forward$,
    'GrowthDirection.reverse': _GrowthDirection_reverse$,
    'GrowthDirection.values': _GrowthDirection_values$,
    'applyGrowthDirectionToAxisDirection':
        _applyGrowthDirectionToAxisDirection$,
    'applyGrowthDirectionToScrollDirection':
        _applyGrowthDirectionToScrollDirection$,
  },
  {},
  {
    'SliverConstraints': m.ClassMirror(
      'SliverConstraints',
      {
        '#as': SliverConstraints_as$,
        '#is': SliverConstraints_is$,
        'axisDirection': _SliverConstraints_axisDirection$,
        'growthDirection': _SliverConstraints_growthDirection$,
        'userScrollDirection': _SliverConstraints_userScrollDirection$,
        'scrollOffset': _SliverConstraints_scrollOffset$,
        'precedingScrollExtent': _SliverConstraints_precedingScrollExtent$,
        'overlap': _SliverConstraints_overlap$,
        'remainingPaintExtent': _SliverConstraints_remainingPaintExtent$,
        'crossAxisExtent': _SliverConstraints_crossAxisExtent$,
        'crossAxisDirection': _SliverConstraints_crossAxisDirection$,
        'viewportMainAxisExtent': _SliverConstraints_viewportMainAxisExtent$,
        'cacheOrigin': _SliverConstraints_cacheOrigin$,
        'remainingCacheExtent': _SliverConstraints_remainingCacheExtent$,
        'axis': _SliverConstraints_axis$,
        'normalizedGrowthDirection':
            _SliverConstraints_normalizedGrowthDirection$,
        'isTight': _SliverConstraints_isTight$,
        'isNormalized': _SliverConstraints_isNormalized$,
        'hashCode': _SliverConstraints_hashCode$,
        'copyWith': _SliverConstraints_copyWith$,
        'asBoxConstraints': _SliverConstraints_asBoxConstraints$,
        'debugAssertIsValid': _SliverConstraints_debugAssertIsValid$,
        '==': _SliverConstraints_eq$$,
        'toString': _SliverConstraints_toString$,
      },
      {},
    ),
    'SliverGeometry': m.ClassMirror(
      'SliverGeometry',
      {
        '#as': SliverGeometry_as$,
        '#is': SliverGeometry_is$,
        'scrollExtent': _SliverGeometry_scrollExtent$,
        'paintOrigin': _SliverGeometry_paintOrigin$,
        'paintExtent': _SliverGeometry_paintExtent$,
        'layoutExtent': _SliverGeometry_layoutExtent$,
        'maxPaintExtent': _SliverGeometry_maxPaintExtent$,
        'maxScrollObstructionExtent':
            _SliverGeometry_maxScrollObstructionExtent$,
        'hitTestExtent': _SliverGeometry_hitTestExtent$,
        'visible': _SliverGeometry_visible$,
        'hasVisualOverflow': _SliverGeometry_hasVisualOverflow$,
        'scrollOffsetCorrection': _SliverGeometry_scrollOffsetCorrection$,
        'cacheExtent': _SliverGeometry_cacheExtent$,
        'debugAssertIsValid': _SliverGeometry_debugAssertIsValid$,
        'toStringShort': _SliverGeometry_toStringShort$,
        'debugFillProperties': _SliverGeometry_debugFillProperties$,
      },
      {},
    ),
    'SliverHitTestResult': m.ClassMirror(
      'SliverHitTestResult',
      {
        '#as': SliverHitTestResult_as$,
        '#is': SliverHitTestResult_is$,
        'addWithAxisOffset': _SliverHitTestResult_addWithAxisOffset$,
      },
      {},
    ),
    'SliverHitTestEntry': m.ClassMirror(
      'SliverHitTestEntry',
      {
        '#as': SliverHitTestEntry_as$,
        '#is': SliverHitTestEntry_is$,
        'mainAxisPosition': _SliverHitTestEntry_mainAxisPosition$,
        'crossAxisPosition': _SliverHitTestEntry_crossAxisPosition$,
        'toString': _SliverHitTestEntry_toString$,
      },
      {},
    ),
    'SliverLogicalParentData': m.ClassMirror(
      'SliverLogicalParentData',
      {
        '#as': SliverLogicalParentData_as$,
        '#is': SliverLogicalParentData_is$,
        'layoutOffset': _SliverLogicalParentData_layoutOffset$,
        'toString': _SliverLogicalParentData_toString$,
      },
      {'layoutOffset': _SliverLogicalParentData_layoutOffset_set$},
    ),
    'SliverLogicalContainerParentData': m.ClassMirror(
      'SliverLogicalContainerParentData',
      {
        '#as': SliverLogicalContainerParentData_as$,
        '#is': SliverLogicalContainerParentData_is$,
      },
      {},
    ),
    'SliverPhysicalParentData': m.ClassMirror(
      'SliverPhysicalParentData',
      {
        '#as': SliverPhysicalParentData_as$,
        '#is': SliverPhysicalParentData_is$,
        'paintOffset': _SliverPhysicalParentData_paintOffset$,
        'applyPaintTransform': _SliverPhysicalParentData_applyPaintTransform$,
        'toString': _SliverPhysicalParentData_toString$,
      },
      {'paintOffset': _SliverPhysicalParentData_paintOffset_set$},
    ),
    'SliverPhysicalContainerParentData': m.ClassMirror(
      'SliverPhysicalContainerParentData',
      {
        '#as': SliverPhysicalContainerParentData_as$,
        '#is': SliverPhysicalContainerParentData_is$,
      },
      {},
    ),
    'RenderSliver': m.ClassMirror(
      'RenderSliver',
      {
        '#as': RenderSliver_as$,
        '#is': RenderSliver_is$,
        'constraints': _RenderSliver_constraints$,
        'geometry': _RenderSliver_geometry$,
        'semanticBounds': _RenderSliver_semanticBounds$,
        'paintBounds': _RenderSliver_paintBounds$,
        'centerOffsetAdjustment': _RenderSliver_centerOffsetAdjustment$,
        'debugResetSize': _RenderSliver_debugResetSize$,
        'debugAssertDoesMeetConstraints':
            _RenderSliver_debugAssertDoesMeetConstraints$,
        'performResize': _RenderSliver_performResize$,
        'hitTest': _RenderSliver_hitTest$,
        'hitTestSelf': _RenderSliver_hitTestSelf$,
        'hitTestChildren': _RenderSliver_hitTestChildren$,
        'calculatePaintOffset': _RenderSliver_calculatePaintOffset$,
        'calculateCacheOffset': _RenderSliver_calculateCacheOffset$,
        'childMainAxisPosition': _RenderSliver_childMainAxisPosition$,
        'childCrossAxisPosition': _RenderSliver_childCrossAxisPosition$,
        'childScrollOffset': _RenderSliver_childScrollOffset$,
        'applyPaintTransform': _RenderSliver_applyPaintTransform$,
        'getAbsoluteSizeRelativeToOrigin':
            _RenderSliver_getAbsoluteSizeRelativeToOrigin$,
        'getAbsoluteSize': _RenderSliver_getAbsoluteSize$,
        'debugPaint': _RenderSliver_debugPaint$,
        'handleEvent': _RenderSliver_handleEvent$,
        'debugFillProperties': _RenderSliver_debugFillProperties$,
      },
      {'geometry': _RenderSliver_geometry_set$},
    ),
    'RenderSliverSingleBoxAdapter': m.ClassMirror(
      'RenderSliverSingleBoxAdapter',
      {
        '#as': RenderSliverSingleBoxAdapter_as$,
        '#is': RenderSliverSingleBoxAdapter_is$,
        'setupParentData': _RenderSliverSingleBoxAdapter_setupParentData$,
        'setChildParentData': _RenderSliverSingleBoxAdapter_setChildParentData$,
        'hitTestChildren': _RenderSliverSingleBoxAdapter_hitTestChildren$,
        'childMainAxisPosition':
            _RenderSliverSingleBoxAdapter_childMainAxisPosition$,
        'applyPaintTransform':
            _RenderSliverSingleBoxAdapter_applyPaintTransform$,
        'paint': _RenderSliverSingleBoxAdapter_paint$,
      },
      {},
    ),
    'RenderSliverToBoxAdapter': m.ClassMirror(
      'RenderSliverToBoxAdapter',
      {
        '#as': RenderSliverToBoxAdapter_as$,
        '#is': RenderSliverToBoxAdapter_is$,
        'performLayout': _RenderSliverToBoxAdapter_performLayout$,
      },
      {},
    ),
    'GrowthDirection': m.ClassMirror(
      'GrowthDirection',
      {},
      {},
    ),
  },
);
Function SliverConstraints_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as SliverConstraints;
Function SliverConstraints_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is SliverConstraints;
Function _SliverConstraints_axisDirection$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.axisDirection;
    };
Function _SliverConstraints_growthDirection$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.growthDirection;
    };
Function _SliverConstraints_userScrollDirection$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.userScrollDirection;
    };
Function _SliverConstraints_scrollOffset$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.scrollOffset;
    };
Function _SliverConstraints_precedingScrollExtent$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.precedingScrollExtent;
    };
Function _SliverConstraints_overlap$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.overlap;
    };
Function _SliverConstraints_remainingPaintExtent$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.remainingPaintExtent;
    };
Function _SliverConstraints_crossAxisExtent$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.crossAxisExtent;
    };
Function _SliverConstraints_crossAxisDirection$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.crossAxisDirection;
    };
Function _SliverConstraints_viewportMainAxisExtent$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.viewportMainAxisExtent;
    };
Function _SliverConstraints_cacheOrigin$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.cacheOrigin;
    };
Function _SliverConstraints_remainingCacheExtent$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.remainingCacheExtent;
    };
Function _SliverConstraints_axis$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.axis;
    };
Function _SliverConstraints_normalizedGrowthDirection$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.normalizedGrowthDirection;
    };
Function _SliverConstraints_isTight$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.isTight;
    };
Function _SliverConstraints_isNormalized$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.isNormalized;
    };
Function _SliverConstraints_hashCode$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    () {
      return target$.hashCode;
    };
Function _SliverConstraints__$(m.Scope scope$) => ({
      required AxisDirection axisDirection,
      required GrowthDirection growthDirection,
      required ScrollDirection userScrollDirection,
      required double scrollOffset,
      required double precedingScrollExtent,
      required double overlap,
      required double remainingPaintExtent,
      required double crossAxisExtent,
      required AxisDirection crossAxisDirection,
      required double viewportMainAxisExtent,
      required double remainingCacheExtent,
      required double cacheOrigin,
    }) {
      return SliverConstraints(
        axisDirection: axisDirection,
        cacheOrigin: cacheOrigin,
        crossAxisDirection: crossAxisDirection,
        crossAxisExtent: crossAxisExtent,
        growthDirection: growthDirection,
        overlap: overlap,
        precedingScrollExtent: precedingScrollExtent,
        remainingCacheExtent: remainingCacheExtent,
        remainingPaintExtent: remainingPaintExtent,
        scrollOffset: scrollOffset,
        userScrollDirection: userScrollDirection,
        viewportMainAxisExtent: viewportMainAxisExtent,
      );
    };
Function _SliverConstraints_copyWith$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    target$.copyWith;
Function _SliverConstraints_asBoxConstraints$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    target$.asBoxConstraints;
Function _SliverConstraints_debugAssertIsValid$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    ({
      bool? isAppliedConstraint,
      m.FunctionPointer? informationCollector,
    }) {
      Iterable<DiagnosticsNode> informationCollectorProxy() =>
          scope$.engine.callFunctionPointer(
            scope$,
            informationCollector!,
            [],
            {},
          );
      return target$.debugAssertIsValid(
        informationCollector:
            informationCollector == null ? null : informationCollectorProxy,
        isAppliedConstraint: isAppliedConstraint ?? false,
      );
    };
Function _SliverConstraints_eq$$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    (Object other$) => target$ == other$;
Function _SliverConstraints_toString$(
  m.Scope scope$,
  SliverConstraints target$,
) =>
    target$.toString;
Function SliverGeometry_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as SliverGeometry;
Function SliverGeometry_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is SliverGeometry;
Function _SliverGeometry_zero$(m.Scope scope$) => () => SliverGeometry.zero;
Function _SliverGeometry_scrollExtent$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    () {
      return target$.scrollExtent;
    };
Function _SliverGeometry_paintOrigin$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    () {
      return target$.paintOrigin;
    };
Function _SliverGeometry_paintExtent$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    () {
      return target$.paintExtent;
    };
Function _SliverGeometry_layoutExtent$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    () {
      return target$.layoutExtent;
    };
Function _SliverGeometry_maxPaintExtent$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    () {
      return target$.maxPaintExtent;
    };
Function _SliverGeometry_maxScrollObstructionExtent$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    () {
      return target$.maxScrollObstructionExtent;
    };
Function _SliverGeometry_hitTestExtent$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    () {
      return target$.hitTestExtent;
    };
Function _SliverGeometry_visible$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    () {
      return target$.visible;
    };
Function _SliverGeometry_hasVisualOverflow$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    () {
      return target$.hasVisualOverflow;
    };
Function _SliverGeometry_scrollOffsetCorrection$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    () {
      return target$.scrollOffsetCorrection;
    };
Function _SliverGeometry_cacheExtent$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    () {
      return target$.cacheExtent;
    };
Function _SliverGeometry__$(m.Scope scope$) => ({
      double? scrollExtent,
      double? paintExtent,
      double? paintOrigin,
      double? layoutExtent,
      double? maxPaintExtent,
      double? maxScrollObstructionExtent,
      double? hitTestExtent,
      bool? visible,
      bool? hasVisualOverflow,
      double? scrollOffsetCorrection,
      double? cacheExtent,
    }) {
      return SliverGeometry(
        cacheExtent: cacheExtent,
        hasVisualOverflow: hasVisualOverflow ?? false,
        hitTestExtent: hitTestExtent,
        layoutExtent: layoutExtent,
        maxPaintExtent: maxPaintExtent ?? 0.0,
        maxScrollObstructionExtent: maxScrollObstructionExtent ?? 0.0,
        paintExtent: paintExtent ?? 0.0,
        paintOrigin: paintOrigin ?? 0.0,
        scrollExtent: scrollExtent ?? 0.0,
        scrollOffsetCorrection: scrollOffsetCorrection,
        visible: visible,
      );
    };
Function _SliverGeometry_debugAssertIsValid$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    ({m.FunctionPointer? informationCollector}) {
      Iterable<DiagnosticsNode> informationCollectorProxy() =>
          scope$.engine.callFunctionPointer(
            scope$,
            informationCollector!,
            [],
            {},
          );
      return target$.debugAssertIsValid(
          informationCollector:
              informationCollector == null ? null : informationCollectorProxy);
    };
Function _SliverGeometry_toStringShort$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    target$.toStringShort;
Function _SliverGeometry_debugFillProperties$(
  m.Scope scope$,
  SliverGeometry target$,
) =>
    target$.debugFillProperties;
Function SliverHitTestResult_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as SliverHitTestResult;
Function SliverHitTestResult_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is SliverHitTestResult;
Function _SliverHitTestResult__$(m.Scope scope$) => () {
      return SliverHitTestResult();
    };
Function _SliverHitTestResult_wrap_$(m.Scope scope$) =>
    SliverHitTestResult.wrap;
Function _SliverHitTestResult_addWithAxisOffset$(
  m.Scope scope$,
  SliverHitTestResult target$,
) =>
    ({
      required Offset? paintOffset,
      required double mainAxisOffset,
      required double crossAxisOffset,
      required double mainAxisPosition,
      required double crossAxisPosition,
      required m.FunctionPointer hitTest,
    }) {
      bool hitTestProxy(
        SliverHitTestResult hitTest_result$, {
        required double crossAxisPosition,
        required double mainAxisPosition,
      }) =>
          scope$.engine.callFunctionPointer(
            scope$,
            hitTest,
            [hitTest_result$],
            {
              'crossAxisPosition': crossAxisPosition,
              'mainAxisPosition': mainAxisPosition,
            },
          );
      return target$.addWithAxisOffset(
        crossAxisOffset: crossAxisOffset,
        crossAxisPosition: crossAxisPosition,
        hitTest: hitTestProxy,
        mainAxisOffset: mainAxisOffset,
        mainAxisPosition: mainAxisPosition,
        paintOffset: paintOffset,
      );
    };
Function SliverHitTestEntry_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as SliverHitTestEntry;
Function SliverHitTestEntry_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is SliverHitTestEntry;
Function _SliverHitTestEntry_mainAxisPosition$(
  m.Scope scope$,
  SliverHitTestEntry target$,
) =>
    () {
      return target$.mainAxisPosition;
    };
Function _SliverHitTestEntry_crossAxisPosition$(
  m.Scope scope$,
  SliverHitTestEntry target$,
) =>
    () {
      return target$.crossAxisPosition;
    };
Function _SliverHitTestEntry__$(m.Scope scope$) => (
      RenderSliver target, {
      required double mainAxisPosition,
      required double crossAxisPosition,
    }) {
      return SliverHitTestEntry(
        target,
        crossAxisPosition: crossAxisPosition,
        mainAxisPosition: mainAxisPosition,
      );
    };
Function _SliverHitTestEntry_toString$(
  m.Scope scope$,
  SliverHitTestEntry target$,
) =>
    target$.toString;
Function SliverLogicalParentData_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as SliverLogicalParentData;
Function SliverLogicalParentData_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is SliverLogicalParentData;
Function _SliverLogicalParentData_layoutOffset$(
  m.Scope scope$,
  SliverLogicalParentData target$,
) =>
    () {
      return target$.layoutOffset;
    };
void _SliverLogicalParentData_layoutOffset_set$(
  m.Scope scope$,
  SliverLogicalParentData target$,
) =>
    (dynamic other$) {
      target$.layoutOffset = other$;
    };
Function _SliverLogicalParentData__$(m.Scope scope$) => () {
      return SliverLogicalParentData();
    };
Function _SliverLogicalParentData_toString$(
  m.Scope scope$,
  SliverLogicalParentData target$,
) =>
    target$.toString;
Function SliverLogicalContainerParentData_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as SliverLogicalContainerParentData;
Function SliverLogicalContainerParentData_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is SliverLogicalContainerParentData;
Function _SliverLogicalContainerParentData__$(m.Scope scope$) => () {
      return SliverLogicalContainerParentData();
    };
Function SliverPhysicalParentData_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as SliverPhysicalParentData;
Function SliverPhysicalParentData_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is SliverPhysicalParentData;
Function _SliverPhysicalParentData_paintOffset$(
  m.Scope scope$,
  SliverPhysicalParentData target$,
) =>
    () {
      return target$.paintOffset;
    };
void _SliverPhysicalParentData_paintOffset_set$(
  m.Scope scope$,
  SliverPhysicalParentData target$,
) =>
    (dynamic other$) {
      target$.paintOffset = other$;
    };
Function _SliverPhysicalParentData__$(m.Scope scope$) => () {
      return SliverPhysicalParentData();
    };
Function _SliverPhysicalParentData_applyPaintTransform$(
  m.Scope scope$,
  SliverPhysicalParentData target$,
) =>
    target$.applyPaintTransform;
Function _SliverPhysicalParentData_toString$(
  m.Scope scope$,
  SliverPhysicalParentData target$,
) =>
    target$.toString;
Function SliverPhysicalContainerParentData_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as SliverPhysicalContainerParentData;
Function SliverPhysicalContainerParentData_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is SliverPhysicalContainerParentData;
Function _SliverPhysicalContainerParentData__$(m.Scope scope$) => () {
      return SliverPhysicalContainerParentData();
    };
Function RenderSliver_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as RenderSliver;
Function RenderSliver_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is RenderSliver;
Function _RenderSliver_constraints$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    () {
      return target$.constraints;
    };
Function _RenderSliver_geometry$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    () {
      return target$.geometry;
    };
void _RenderSliver_geometry_set$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    (dynamic other$) {
      target$.geometry = other$;
    };
Function _RenderSliver_semanticBounds$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    () {
      return target$.semanticBounds;
    };
Function _RenderSliver_paintBounds$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    () {
      return target$.paintBounds;
    };
Function _RenderSliver_centerOffsetAdjustment$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    () {
      return target$.centerOffsetAdjustment;
    };
Function _RenderSliver_debugResetSize$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.debugResetSize;
Function _RenderSliver_debugAssertDoesMeetConstraints$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.debugAssertDoesMeetConstraints;
Function _RenderSliver_performResize$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.performResize;
Function _RenderSliver_hitTest$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.hitTest;
Function _RenderSliver_hitTestSelf$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.hitTestSelf;
Function _RenderSliver_hitTestChildren$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.hitTestChildren;
Function _RenderSliver_calculatePaintOffset$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.calculatePaintOffset;
Function _RenderSliver_calculateCacheOffset$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.calculateCacheOffset;
Function _RenderSliver_childMainAxisPosition$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.childMainAxisPosition;
Function _RenderSliver_childCrossAxisPosition$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.childCrossAxisPosition;
Function _RenderSliver_childScrollOffset$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.childScrollOffset;
Function _RenderSliver_applyPaintTransform$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.applyPaintTransform;
Function _RenderSliver_getAbsoluteSizeRelativeToOrigin$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.getAbsoluteSizeRelativeToOrigin;
Function _RenderSliver_getAbsoluteSize$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.getAbsoluteSize;
Function _RenderSliver_debugPaint$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.debugPaint;
Function _RenderSliver_handleEvent$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.handleEvent;
Function _RenderSliver_debugFillProperties$(
  m.Scope scope$,
  RenderSliver target$,
) =>
    target$.debugFillProperties;
Function RenderSliverSingleBoxAdapter_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as RenderSliverSingleBoxAdapter;
Function RenderSliverSingleBoxAdapter_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is RenderSliverSingleBoxAdapter;
Function _RenderSliverSingleBoxAdapter_setupParentData$(
  m.Scope scope$,
  RenderSliverSingleBoxAdapter target$,
) =>
    target$.setupParentData;
Function _RenderSliverSingleBoxAdapter_setChildParentData$(
  m.Scope scope$,
  RenderSliverSingleBoxAdapter target$,
) =>
    target$.setChildParentData;
Function _RenderSliverSingleBoxAdapter_hitTestChildren$(
  m.Scope scope$,
  RenderSliverSingleBoxAdapter target$,
) =>
    target$.hitTestChildren;
Function _RenderSliverSingleBoxAdapter_childMainAxisPosition$(
  m.Scope scope$,
  RenderSliverSingleBoxAdapter target$,
) =>
    target$.childMainAxisPosition;
Function _RenderSliverSingleBoxAdapter_applyPaintTransform$(
  m.Scope scope$,
  RenderSliverSingleBoxAdapter target$,
) =>
    target$.applyPaintTransform;
Function _RenderSliverSingleBoxAdapter_paint$(
  m.Scope scope$,
  RenderSliverSingleBoxAdapter target$,
) =>
    target$.paint;
Function RenderSliverToBoxAdapter_as$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ as RenderSliverToBoxAdapter;
Function RenderSliverToBoxAdapter_is$(
  m.Scope scope$,
  dynamic target$,
) =>
    () => target$ is RenderSliverToBoxAdapter;
Function _RenderSliverToBoxAdapter__$(m.Scope scope$) => ({RenderBox? child}) {
      return RenderSliverToBoxAdapter(child: child);
    };
Function _RenderSliverToBoxAdapter_performLayout$(
  m.Scope scope$,
  RenderSliverToBoxAdapter target$,
) =>
    target$.performLayout;
Function _GrowthDirection_forward$(m.Scope scope$) =>
    () => GrowthDirection.forward;
Function _GrowthDirection_reverse$(m.Scope scope$) =>
    () => GrowthDirection.reverse;
Function _GrowthDirection_values$(m.Scope scope$) =>
    () => GrowthDirection.values;
Function _applyGrowthDirectionToAxisDirection$(m.Scope scope$) =>
    applyGrowthDirectionToAxisDirection;
Function _applyGrowthDirectionToScrollDirection$(m.Scope scope$) =>
    applyGrowthDirectionToScrollDirection;
