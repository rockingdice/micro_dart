import 'package:flutter/src/rendering/list_wheel_viewport.dart';
import 'dart:math';
import 'package:flutter/animation.dart';
import 'package:vector_math/vector_math_64.dart' show Matrix4;
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/proxy_box.dart';
import 'package:flutter/src/rendering/viewport.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelChildManager@#as':
        (m.Scope scope, target) => () => target as ListWheelChildManager,
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelChildManager@#is':
        (m.Scope scope, target) => () => target is ListWheelChildManager,
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelChildManager@childCount':
        (m.Scope scope, ListWheelChildManager target) => target.childCount,
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelChildManager@childExistsAt':
        (m.Scope scope, ListWheelChildManager target) => target.childExistsAt,
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelChildManager@createChild':
        (m.Scope scope, ListWheelChildManager target) => target.createChild,
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelChildManager@removeChild':
        (m.Scope scope, ListWheelChildManager target) => target.removeChild,
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelParentData@#as':
        (m.Scope scope, target) => () => target as ListWheelParentData,
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelParentData@#is':
        (m.Scope scope, target) => () => target is ListWheelParentData,
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelParentData@index':
        (m.Scope scope, ListWheelParentData target) => target.index,
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelParentData@index:set':
        (m.Scope scope, ListWheelParentData target) =>
            (other) => target.index = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelParentData@transform':
        (m.Scope scope, ListWheelParentData target) => target.transform,
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelParentData@transform:set':
        (m.Scope scope, ListWheelParentData target) =>
            (other) => target.transform = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@ListWheelParentData@':
        (m.Scope scope) => () {
              return ListWheelParentData();
            },
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@#as':
        (m.Scope scope, target) => () => target as RenderListWheelViewport,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@#is':
        (m.Scope scope, target) => () => target is RenderListWheelViewport,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@defaultDiameterRatio':
        (m.Scope scope) => RenderListWheelViewport.defaultDiameterRatio,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@defaultPerspective':
        (m.Scope scope) => RenderListWheelViewport.defaultPerspective,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@diameterRatioZeroMessage':
        (m.Scope scope) => RenderListWheelViewport.diameterRatioZeroMessage,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@perspectiveTooHighMessage':
        (m.Scope scope) => RenderListWheelViewport.perspectiveTooHighMessage,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@clipBehaviorAndRenderChildrenOutsideViewportConflict':
        (m.Scope scope) => RenderListWheelViewport
            .clipBehaviorAndRenderChildrenOutsideViewportConflict,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@childManager':
        (m.Scope scope, RenderListWheelViewport target) => target.childManager,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@offset':
        (m.Scope scope, RenderListWheelViewport target) => target.offset,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@offset:set':
        (m.Scope scope, RenderListWheelViewport target) =>
            (other) => target.offset = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@diameterRatio':
        (m.Scope scope, RenderListWheelViewport target) => target.diameterRatio,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@diameterRatio:set':
        (m.Scope scope, RenderListWheelViewport target) =>
            (other) => target.diameterRatio = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@perspective':
        (m.Scope scope, RenderListWheelViewport target) => target.perspective,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@perspective:set':
        (m.Scope scope, RenderListWheelViewport target) =>
            (other) => target.perspective = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@offAxisFraction':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.offAxisFraction,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@offAxisFraction:set':
        (m.Scope scope, RenderListWheelViewport target) =>
            (other) => target.offAxisFraction = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@useMagnifier':
        (m.Scope scope, RenderListWheelViewport target) => target.useMagnifier,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@useMagnifier:set':
        (m.Scope scope, RenderListWheelViewport target) =>
            (other) => target.useMagnifier = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@magnification':
        (m.Scope scope, RenderListWheelViewport target) => target.magnification,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@magnification:set':
        (m.Scope scope, RenderListWheelViewport target) =>
            (other) => target.magnification = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@overAndUnderCenterOpacity':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.overAndUnderCenterOpacity,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@overAndUnderCenterOpacity:set':
        (m.Scope scope, RenderListWheelViewport target) =>
            (other) => target.overAndUnderCenterOpacity = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@itemExtent':
        (m.Scope scope, RenderListWheelViewport target) => target.itemExtent,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@itemExtent:set':
        (m.Scope scope, RenderListWheelViewport target) =>
            (other) => target.itemExtent = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@squeeze':
        (m.Scope scope, RenderListWheelViewport target) => target.squeeze,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@squeeze:set':
        (m.Scope scope, RenderListWheelViewport target) =>
            (other) => target.squeeze = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@renderChildrenOutsideViewport':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.renderChildrenOutsideViewport,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@renderChildrenOutsideViewport:set':
        (m.Scope scope, RenderListWheelViewport target) =>
            (other) => target.renderChildrenOutsideViewport = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@clipBehavior':
        (m.Scope scope, RenderListWheelViewport target) => target.clipBehavior,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@clipBehavior:set':
        (m.Scope scope, RenderListWheelViewport target) =>
            (other) => target.clipBehavior = other,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@isRepaintBoundary':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.isRepaintBoundary,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@sizedByParent':
        (m.Scope scope, RenderListWheelViewport target) => target.sizedByParent,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@':
        (m.Scope scope) => (
                {childManager,
                children,
                clipBehavior,
                diameterRatio,
                itemExtent,
                magnification,
                offAxisFraction,
                offset,
                overAndUnderCenterOpacity,
                perspective,
                renderChildrenOutsideViewport,
                squeeze,
                useMagnifier}) {
              return RenderListWheelViewport(
                  childManager: childManager,
                  children: children,
                  clipBehavior: clipBehavior ?? Clip.none,
                  diameterRatio: diameterRatio ??
                      RenderListWheelViewport.defaultDiameterRatio,
                  itemExtent: itemExtent,
                  magnification: magnification ?? 1,
                  offAxisFraction: offAxisFraction ?? 0,
                  offset: offset,
                  overAndUnderCenterOpacity: overAndUnderCenterOpacity ?? 1,
                  perspective:
                      perspective ?? RenderListWheelViewport.defaultPerspective,
                  renderChildrenOutsideViewport:
                      renderChildrenOutsideViewport ?? false,
                  squeeze: squeeze ?? 1,
                  useMagnifier: useMagnifier ?? false);
            },
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@setupParentData':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.setupParentData,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@attach':
        (m.Scope scope, RenderListWheelViewport target) => target.attach,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@detach':
        (m.Scope scope, RenderListWheelViewport target) => target.detach,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@computeMinIntrinsicWidth':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.computeMinIntrinsicWidth,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@computeMaxIntrinsicWidth':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.computeMaxIntrinsicWidth,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@computeMinIntrinsicHeight':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.computeMinIntrinsicHeight,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@computeMaxIntrinsicHeight':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.computeMaxIntrinsicHeight,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@computeDryLayout':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.computeDryLayout,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@indexOf':
        (m.Scope scope, RenderListWheelViewport target) => target.indexOf,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@scrollOffsetToIndex':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.scrollOffsetToIndex,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@indexToScrollOffset':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.indexToScrollOffset,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@performLayout':
        (m.Scope scope, RenderListWheelViewport target) => target.performLayout,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@paint':
        (m.Scope scope, RenderListWheelViewport target) => target.paint,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@dispose':
        (m.Scope scope, RenderListWheelViewport target) => target.dispose,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@applyPaintTransform':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.applyPaintTransform,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@describeApproximatePaintClip':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.describeApproximatePaintClip,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@hitTestChildren':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.hitTestChildren,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@getOffsetToReveal':
        (m.Scope scope, RenderListWheelViewport target) =>
            target.getOffsetToReveal,
    'package:flutter/src/rendering/list_wheel_viewport.dart@RenderListWheelViewport@showOnScreen':
        (m.Scope scope, RenderListWheelViewport target) => target.showOnScreen,
  };
}
