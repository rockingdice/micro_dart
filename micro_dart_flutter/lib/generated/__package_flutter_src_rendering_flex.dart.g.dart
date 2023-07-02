import 'package:flutter/src/rendering/flex.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug_overflow_indicator.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/layout_helper.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/rendering/flex.dart@FlexParentData@#as':
        (m.Scope scope, target) => () => target as FlexParentData,
    'package:flutter/src/rendering/flex.dart@FlexParentData@#is':
        (m.Scope scope, target) => () => target is FlexParentData,
    'package:flutter/src/rendering/flex.dart@FlexParentData@flex':
        (m.Scope scope, FlexParentData target) => target.flex,
    'package:flutter/src/rendering/flex.dart@FlexParentData@flex:set':
        (m.Scope scope, FlexParentData target) =>
            (other) => target.flex = other,
    'package:flutter/src/rendering/flex.dart@FlexParentData@fit':
        (m.Scope scope, FlexParentData target) => target.fit,
    'package:flutter/src/rendering/flex.dart@FlexParentData@fit:set':
        (m.Scope scope, FlexParentData target) => (other) => target.fit = other,
    'package:flutter/src/rendering/flex.dart@FlexParentData@':
        (m.Scope scope) => () {
              return FlexParentData();
            },
    'package:flutter/src/rendering/flex.dart@FlexParentData@toString':
        (m.Scope scope, FlexParentData target) => target.toString,
    'package:flutter/src/rendering/flex.dart@RenderFlex@#as':
        (m.Scope scope, target) => () => target as RenderFlex,
    'package:flutter/src/rendering/flex.dart@RenderFlex@#is':
        (m.Scope scope, target) => () => target is RenderFlex,
    'package:flutter/src/rendering/flex.dart@RenderFlex@direction':
        (m.Scope scope, RenderFlex target) => target.direction,
    'package:flutter/src/rendering/flex.dart@RenderFlex@direction:set':
        (m.Scope scope, RenderFlex target) =>
            (other) => target.direction = other,
    'package:flutter/src/rendering/flex.dart@RenderFlex@mainAxisAlignment':
        (m.Scope scope, RenderFlex target) => target.mainAxisAlignment,
    'package:flutter/src/rendering/flex.dart@RenderFlex@mainAxisAlignment:set':
        (m.Scope scope, RenderFlex target) =>
            (other) => target.mainAxisAlignment = other,
    'package:flutter/src/rendering/flex.dart@RenderFlex@mainAxisSize':
        (m.Scope scope, RenderFlex target) => target.mainAxisSize,
    'package:flutter/src/rendering/flex.dart@RenderFlex@mainAxisSize:set':
        (m.Scope scope, RenderFlex target) =>
            (other) => target.mainAxisSize = other,
    'package:flutter/src/rendering/flex.dart@RenderFlex@crossAxisAlignment':
        (m.Scope scope, RenderFlex target) => target.crossAxisAlignment,
    'package:flutter/src/rendering/flex.dart@RenderFlex@crossAxisAlignment:set':
        (m.Scope scope, RenderFlex target) =>
            (other) => target.crossAxisAlignment = other,
    'package:flutter/src/rendering/flex.dart@RenderFlex@textDirection':
        (m.Scope scope, RenderFlex target) => target.textDirection,
    'package:flutter/src/rendering/flex.dart@RenderFlex@textDirection:set':
        (m.Scope scope, RenderFlex target) =>
            (other) => target.textDirection = other,
    'package:flutter/src/rendering/flex.dart@RenderFlex@verticalDirection':
        (m.Scope scope, RenderFlex target) => target.verticalDirection,
    'package:flutter/src/rendering/flex.dart@RenderFlex@verticalDirection:set':
        (m.Scope scope, RenderFlex target) =>
            (other) => target.verticalDirection = other,
    'package:flutter/src/rendering/flex.dart@RenderFlex@textBaseline':
        (m.Scope scope, RenderFlex target) => target.textBaseline,
    'package:flutter/src/rendering/flex.dart@RenderFlex@textBaseline:set':
        (m.Scope scope, RenderFlex target) =>
            (other) => target.textBaseline = other,
    'package:flutter/src/rendering/flex.dart@RenderFlex@clipBehavior':
        (m.Scope scope, RenderFlex target) => target.clipBehavior,
    'package:flutter/src/rendering/flex.dart@RenderFlex@clipBehavior:set':
        (m.Scope scope, RenderFlex target) =>
            (other) => target.clipBehavior = other,
    'package:flutter/src/rendering/flex.dart@RenderFlex@': (m.Scope scope) => (
            {children,
            clipBehavior,
            crossAxisAlignment,
            direction,
            mainAxisAlignment,
            mainAxisSize,
            textBaseline,
            textDirection,
            verticalDirection}) {
          return RenderFlex(
              children: children,
              clipBehavior: clipBehavior ?? Clip.none,
              crossAxisAlignment:
                  crossAxisAlignment ?? CrossAxisAlignment.center,
              direction: direction ?? Axis.horizontal,
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
              mainAxisSize: mainAxisSize ?? MainAxisSize.max,
              textBaseline: textBaseline,
              textDirection: textDirection,
              verticalDirection: verticalDirection ?? VerticalDirection.down);
        },
    'package:flutter/src/rendering/flex.dart@RenderFlex@setupParentData':
        (m.Scope scope, RenderFlex target) => target.setupParentData,
    'package:flutter/src/rendering/flex.dart@RenderFlex@computeMinIntrinsicWidth':
        (m.Scope scope, RenderFlex target) => target.computeMinIntrinsicWidth,
    'package:flutter/src/rendering/flex.dart@RenderFlex@computeMaxIntrinsicWidth':
        (m.Scope scope, RenderFlex target) => target.computeMaxIntrinsicWidth,
    'package:flutter/src/rendering/flex.dart@RenderFlex@computeMinIntrinsicHeight':
        (m.Scope scope, RenderFlex target) => target.computeMinIntrinsicHeight,
    'package:flutter/src/rendering/flex.dart@RenderFlex@computeMaxIntrinsicHeight':
        (m.Scope scope, RenderFlex target) => target.computeMaxIntrinsicHeight,
    'package:flutter/src/rendering/flex.dart@RenderFlex@computeDistanceToActualBaseline':
        (m.Scope scope, RenderFlex target) =>
            target.computeDistanceToActualBaseline,
    'package:flutter/src/rendering/flex.dart@RenderFlex@computeDryLayout':
        (m.Scope scope, RenderFlex target) => target.computeDryLayout,
    'package:flutter/src/rendering/flex.dart@RenderFlex@performLayout':
        (m.Scope scope, RenderFlex target) => target.performLayout,
    'package:flutter/src/rendering/flex.dart@RenderFlex@hitTestChildren':
        (m.Scope scope, RenderFlex target) => target.hitTestChildren,
    'package:flutter/src/rendering/flex.dart@RenderFlex@paint':
        (m.Scope scope, RenderFlex target) => target.paint,
    'package:flutter/src/rendering/flex.dart@RenderFlex@dispose':
        (m.Scope scope, RenderFlex target) => target.dispose,
    'package:flutter/src/rendering/flex.dart@RenderFlex@describeApproximatePaintClip':
        (m.Scope scope, RenderFlex target) =>
            target.describeApproximatePaintClip,
    'package:flutter/src/rendering/flex.dart@RenderFlex@toStringShort':
        (m.Scope scope, RenderFlex target) => target.toStringShort,
    'package:flutter/src/rendering/flex.dart@RenderFlex@debugFillProperties':
        (m.Scope scope, RenderFlex target) => target.debugFillProperties,
    'package:flutter/src/rendering/flex.dart@MainAxisAlignment@center':
        (m.Scope scope) => MainAxisAlignment.center
  };
}
