import 'package:flutter/src/rendering/stack.dart';
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/layout_helper.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/rendering/stack.dart@RelativeRect@#as':
        (m.Scope scope, target) => () => target as RelativeRect,
    'package:flutter/src/rendering/stack.dart@RelativeRect@#is':
        (m.Scope scope, target) => () => target is RelativeRect,
    'package:flutter/src/rendering/stack.dart@RelativeRect@fill':
        (m.Scope scope) => RelativeRect.fill,
    'package:flutter/src/rendering/stack.dart@RelativeRect@left':
        (m.Scope scope, RelativeRect target) => target.left,
    'package:flutter/src/rendering/stack.dart@RelativeRect@top':
        (m.Scope scope, RelativeRect target) => target.top,
    'package:flutter/src/rendering/stack.dart@RelativeRect@right':
        (m.Scope scope, RelativeRect target) => target.right,
    'package:flutter/src/rendering/stack.dart@RelativeRect@bottom':
        (m.Scope scope, RelativeRect target) => target.bottom,
    'package:flutter/src/rendering/stack.dart@RelativeRect@hasInsets':
        (m.Scope scope, RelativeRect target) => target.hasInsets,
    'package:flutter/src/rendering/stack.dart@RelativeRect@hashCode':
        (m.Scope scope, RelativeRect target) => target.hashCode,
    'package:flutter/src/rendering/stack.dart@RelativeRect@fromLTRB':
        (m.Scope scope) => RelativeRect.fromLTRB,
    'package:flutter/src/rendering/stack.dart@RelativeRect@fromSize':
        (m.Scope scope) => RelativeRect.fromSize,
    'package:flutter/src/rendering/stack.dart@RelativeRect@fromRect':
        (m.Scope scope) => RelativeRect.fromRect,
    'package:flutter/src/rendering/stack.dart@RelativeRect@fromDirectional':
        (m.Scope scope) => RelativeRect.fromDirectional,
    'package:flutter/src/rendering/stack.dart@RelativeRect@shift':
        (m.Scope scope, RelativeRect target) => target.shift,
    'package:flutter/src/rendering/stack.dart@RelativeRect@inflate':
        (m.Scope scope, RelativeRect target) => target.inflate,
    'package:flutter/src/rendering/stack.dart@RelativeRect@deflate':
        (m.Scope scope, RelativeRect target) => target.deflate,
    'package:flutter/src/rendering/stack.dart@RelativeRect@intersect':
        (m.Scope scope, RelativeRect target) => target.intersect,
    'package:flutter/src/rendering/stack.dart@RelativeRect@toRect':
        (m.Scope scope, RelativeRect target) => target.toRect,
    'package:flutter/src/rendering/stack.dart@RelativeRect@toSize':
        (m.Scope scope, RelativeRect target) => target.toSize,
    'package:flutter/src/rendering/stack.dart@RelativeRect@lerp':
        (m.Scope scope) => RelativeRect.lerp,
    'package:flutter/src/rendering/stack.dart@RelativeRect@==':
        (m.Scope scope, RelativeRect target) => (other) => target == other,
    'package:flutter/src/rendering/stack.dart@RelativeRect@toString':
        (m.Scope scope, RelativeRect target) => target.toString,
    'package:flutter/src/rendering/stack.dart@StackParentData@#as':
        (m.Scope scope, target) => () => target as StackParentData,
    'package:flutter/src/rendering/stack.dart@StackParentData@#is':
        (m.Scope scope, target) => () => target is StackParentData,
    'package:flutter/src/rendering/stack.dart@StackParentData@top':
        (m.Scope scope, StackParentData target) => target.top,
    'package:flutter/src/rendering/stack.dart@StackParentData@top:set':
        (m.Scope scope, StackParentData target) =>
            (other) => target.top = other,
    'package:flutter/src/rendering/stack.dart@StackParentData@right':
        (m.Scope scope, StackParentData target) => target.right,
    'package:flutter/src/rendering/stack.dart@StackParentData@right:set':
        (m.Scope scope, StackParentData target) =>
            (other) => target.right = other,
    'package:flutter/src/rendering/stack.dart@StackParentData@bottom':
        (m.Scope scope, StackParentData target) => target.bottom,
    'package:flutter/src/rendering/stack.dart@StackParentData@bottom:set':
        (m.Scope scope, StackParentData target) =>
            (other) => target.bottom = other,
    'package:flutter/src/rendering/stack.dart@StackParentData@left':
        (m.Scope scope, StackParentData target) => target.left,
    'package:flutter/src/rendering/stack.dart@StackParentData@left:set':
        (m.Scope scope, StackParentData target) =>
            (other) => target.left = other,
    'package:flutter/src/rendering/stack.dart@StackParentData@width':
        (m.Scope scope, StackParentData target) => target.width,
    'package:flutter/src/rendering/stack.dart@StackParentData@width:set':
        (m.Scope scope, StackParentData target) =>
            (other) => target.width = other,
    'package:flutter/src/rendering/stack.dart@StackParentData@height':
        (m.Scope scope, StackParentData target) => target.height,
    'package:flutter/src/rendering/stack.dart@StackParentData@height:set':
        (m.Scope scope, StackParentData target) =>
            (other) => target.height = other,
    'package:flutter/src/rendering/stack.dart@StackParentData@rect':
        (m.Scope scope, StackParentData target) => target.rect,
    'package:flutter/src/rendering/stack.dart@StackParentData@rect:set':
        (m.Scope scope, StackParentData target) =>
            (other) => target.rect = other,
    'package:flutter/src/rendering/stack.dart@StackParentData@isPositioned':
        (m.Scope scope, StackParentData target) => target.isPositioned,
    'package:flutter/src/rendering/stack.dart@StackParentData@':
        (m.Scope scope) => () {
              return StackParentData();
            },
    'package:flutter/src/rendering/stack.dart@StackParentData@toString':
        (m.Scope scope, StackParentData target) => target.toString,
    'package:flutter/src/rendering/stack.dart@RenderStack@#as':
        (m.Scope scope, target) => () => target as RenderStack,
    'package:flutter/src/rendering/stack.dart@RenderStack@#is':
        (m.Scope scope, target) => () => target is RenderStack,
    'package:flutter/src/rendering/stack.dart@RenderStack@alignment':
        (m.Scope scope, RenderStack target) => target.alignment,
    'package:flutter/src/rendering/stack.dart@RenderStack@alignment:set':
        (m.Scope scope, RenderStack target) =>
            (other) => target.alignment = other,
    'package:flutter/src/rendering/stack.dart@RenderStack@textDirection':
        (m.Scope scope, RenderStack target) => target.textDirection,
    'package:flutter/src/rendering/stack.dart@RenderStack@textDirection:set':
        (m.Scope scope, RenderStack target) =>
            (other) => target.textDirection = other,
    'package:flutter/src/rendering/stack.dart@RenderStack@fit':
        (m.Scope scope, RenderStack target) => target.fit,
    'package:flutter/src/rendering/stack.dart@RenderStack@fit:set':
        (m.Scope scope, RenderStack target) => (other) => target.fit = other,
    'package:flutter/src/rendering/stack.dart@RenderStack@clipBehavior':
        (m.Scope scope, RenderStack target) => target.clipBehavior,
    'package:flutter/src/rendering/stack.dart@RenderStack@clipBehavior:set':
        (m.Scope scope, RenderStack target) =>
            (other) => target.clipBehavior = other,
    'package:flutter/src/rendering/stack.dart@RenderStack@': (m.Scope scope) =>
        ({alignment, children, clipBehavior, fit, textDirection}) {
          return RenderStack(
              alignment: alignment ?? AlignmentDirectional.topStart,
              children: children,
              clipBehavior: clipBehavior ?? Clip.hardEdge,
              fit: fit ?? StackFit.loose,
              textDirection: textDirection);
        },
    'package:flutter/src/rendering/stack.dart@RenderStack@setupParentData':
        (m.Scope scope, RenderStack target) => target.setupParentData,
    'package:flutter/src/rendering/stack.dart@RenderStack@getIntrinsicDimension':
        (m.Scope scope) => (firstChild, mainChildSizeGetter) {
              double mainChildSizeGetterProxy(child) {
                return engine.callFunctionPointer(
                    scope, mainChildSizeGetter!, [child], {});
              }

              return RenderStack.getIntrinsicDimension(
                  firstChild, mainChildSizeGetterProxy);
            },
    'package:flutter/src/rendering/stack.dart@RenderStack@computeMinIntrinsicWidth':
        (m.Scope scope, RenderStack target) => target.computeMinIntrinsicWidth,
    'package:flutter/src/rendering/stack.dart@RenderStack@computeMaxIntrinsicWidth':
        (m.Scope scope, RenderStack target) => target.computeMaxIntrinsicWidth,
    'package:flutter/src/rendering/stack.dart@RenderStack@computeMinIntrinsicHeight':
        (m.Scope scope, RenderStack target) => target.computeMinIntrinsicHeight,
    'package:flutter/src/rendering/stack.dart@RenderStack@computeMaxIntrinsicHeight':
        (m.Scope scope, RenderStack target) => target.computeMaxIntrinsicHeight,
    'package:flutter/src/rendering/stack.dart@RenderStack@computeDistanceToActualBaseline':
        (m.Scope scope, RenderStack target) =>
            target.computeDistanceToActualBaseline,
    'package:flutter/src/rendering/stack.dart@RenderStack@layoutPositionedChild':
        (m.Scope scope) => RenderStack.layoutPositionedChild,
    'package:flutter/src/rendering/stack.dart@RenderStack@computeDryLayout':
        (m.Scope scope, RenderStack target) => target.computeDryLayout,
    'package:flutter/src/rendering/stack.dart@RenderStack@performLayout':
        (m.Scope scope, RenderStack target) => target.performLayout,
    'package:flutter/src/rendering/stack.dart@RenderStack@hitTestChildren':
        (m.Scope scope, RenderStack target) => target.hitTestChildren,
    'package:flutter/src/rendering/stack.dart@RenderStack@paintStack':
        (m.Scope scope, RenderStack target) => target.paintStack,
    'package:flutter/src/rendering/stack.dart@RenderStack@paint':
        (m.Scope scope, RenderStack target) => target.paint,
    'package:flutter/src/rendering/stack.dart@RenderStack@dispose':
        (m.Scope scope, RenderStack target) => target.dispose,
    'package:flutter/src/rendering/stack.dart@RenderStack@describeApproximatePaintClip':
        (m.Scope scope, RenderStack target) =>
            target.describeApproximatePaintClip,
    'package:flutter/src/rendering/stack.dart@RenderStack@debugFillProperties':
        (m.Scope scope, RenderStack target) => target.debugFillProperties,
    'package:flutter/src/rendering/stack.dart@RenderIndexedStack@#as':
        (m.Scope scope, target) => () => target as RenderIndexedStack,
    'package:flutter/src/rendering/stack.dart@RenderIndexedStack@#is':
        (m.Scope scope, target) => () => target is RenderIndexedStack,
    'package:flutter/src/rendering/stack.dart@RenderIndexedStack@index':
        (m.Scope scope, RenderIndexedStack target) => target.index,
    'package:flutter/src/rendering/stack.dart@RenderIndexedStack@index:set':
        (m.Scope scope, RenderIndexedStack target) =>
            (other) => target.index = other,
    'package:flutter/src/rendering/stack.dart@RenderIndexedStack@':
        (m.Scope scope) =>
            ({alignment, children, clipBehavior, fit, index, textDirection}) {
              return RenderIndexedStack(
                  alignment: alignment ?? AlignmentDirectional.topStart,
                  children: children,
                  clipBehavior: clipBehavior ?? Clip.hardEdge,
                  fit: fit ?? StackFit.loose,
                  index: index ?? 0,
                  textDirection: textDirection);
            },
    'package:flutter/src/rendering/stack.dart@RenderIndexedStack@visitChildrenForSemantics':
        (m.Scope scope, RenderIndexedStack target) => (visitor) {
              void visitorProxy(child) {
                engine.callFunctionPointer(scope, visitor!, [child], {});
              }

              target.visitChildrenForSemantics(visitorProxy);
            },
    'package:flutter/src/rendering/stack.dart@RenderIndexedStack@hitTestChildren':
        (m.Scope scope, RenderIndexedStack target) => target.hitTestChildren,
    'package:flutter/src/rendering/stack.dart@RenderIndexedStack@paintStack':
        (m.Scope scope, RenderIndexedStack target) => target.paintStack,
    'package:flutter/src/rendering/stack.dart@RenderIndexedStack@debugFillProperties':
        (m.Scope scope, RenderIndexedStack target) =>
            target.debugFillProperties,
    'package:flutter/src/rendering/stack.dart@RenderIndexedStack@debugDescribeChildren':
        (m.Scope scope, RenderIndexedStack target) =>
            target.debugDescribeChildren,
    'package:flutter/src/rendering/stack.dart@StackFit@expand':
        (m.Scope scope) => StackFit.expand,
    'package:flutter/src/rendering/stack.dart@StackFit@loose':
        (m.Scope scope) => StackFit.loose,
    'package:flutter/src/rendering/stack.dart@StackFit@passthrough':
        (m.Scope scope) => StackFit.passthrough,
    'package:flutter/src/rendering/stack.dart@StackFit@values':
        (m.Scope scope) => StackFit.values,
  };
}
