import 'package:flutter/src/widgets/interactive_viewer.dart';
import 'dart:math';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/gestures.dart';
import 'package:flutter/physics.dart';
import 'package:vector_math/vector_math_64.dart' show Matrix4, Quad, Vector3;
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/layout_builder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@#as':
        (m.Scope scope, target) => () => target as InteractiveViewer,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@#is':
        (m.Scope scope, target) => () => target is InteractiveViewer,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@alignment':
        (m.Scope scope, InteractiveViewer target) => target.alignment,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@clipBehavior':
        (m.Scope scope, InteractiveViewer target) => target.clipBehavior,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@alignPanAxis':
        (m.Scope scope, InteractiveViewer target) => target.alignPanAxis,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@panAxis':
        (m.Scope scope, InteractiveViewer target) => target.panAxis,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@boundaryMargin':
        (m.Scope scope, InteractiveViewer target) => target.boundaryMargin,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@builder':
        (m.Scope scope, InteractiveViewer target) => target.builder,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@child':
        (m.Scope scope, InteractiveViewer target) => target.child,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@constrained':
        (m.Scope scope, InteractiveViewer target) => target.constrained,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@panEnabled':
        (m.Scope scope, InteractiveViewer target) => target.panEnabled,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@scaleEnabled':
        (m.Scope scope, InteractiveViewer target) => target.scaleEnabled,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@trackpadScrollCausesScale':
        (m.Scope scope, InteractiveViewer target) =>
            target.trackpadScrollCausesScale,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@scaleFactor':
        (m.Scope scope, InteractiveViewer target) => target.scaleFactor,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@maxScale':
        (m.Scope scope, InteractiveViewer target) => target.maxScale,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@minScale':
        (m.Scope scope, InteractiveViewer target) => target.minScale,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@interactionEndFrictionCoefficient':
        (m.Scope scope, InteractiveViewer target) =>
            target.interactionEndFrictionCoefficient,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@onInteractionEnd':
        (m.Scope scope, InteractiveViewer target) => target.onInteractionEnd,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@onInteractionStart':
        (m.Scope scope, InteractiveViewer target) => target.onInteractionStart,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@onInteractionUpdate':
        (m.Scope scope, InteractiveViewer target) => target.onInteractionUpdate,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@transformationController':
        (m.Scope scope, InteractiveViewer target) =>
            target.transformationController,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@':
        (m.Scope scope) => (
                {alignPanAxis,
                alignment,
                boundaryMargin,
                child,
                clipBehavior,
                constrained,
                interactionEndFrictionCoefficient,
                key,
                maxScale,
                minScale,
                onInteractionEnd,
                onInteractionStart,
                onInteractionUpdate,
                panAxis,
                panEnabled,
                scaleEnabled,
                scaleFactor,
                trackpadScrollCausesScale,
                transformationController}) {
              void onInteractionEndProxy(details) {
                engine.callFunctionPointer(
                    scope, onInteractionEnd!, [details], {});
              }

              void onInteractionStartProxy(details) {
                engine.callFunctionPointer(
                    scope, onInteractionStart!, [details], {});
              }

              void onInteractionUpdateProxy(details) {
                engine.callFunctionPointer(
                    scope, onInteractionUpdate!, [details], {});
              }

              return InteractiveViewer(
                  alignPanAxis: alignPanAxis ?? false,
                  alignment: alignment,
                  boundaryMargin: boundaryMargin ?? EdgeInsets.zero,
                  child: child,
                  clipBehavior: clipBehavior ?? Clip.hardEdge,
                  constrained: constrained ?? true,
                  interactionEndFrictionCoefficient:
                      interactionEndFrictionCoefficient ?? 0.0000135,
                  key: key,
                  maxScale: maxScale ?? 2.5,
                  minScale: minScale ?? 0.8,
                  onInteractionEnd:
                      onInteractionEnd == null ? null : onInteractionEndProxy,
                  onInteractionStart: onInteractionStart == null
                      ? null
                      : onInteractionStartProxy,
                  onInteractionUpdate: onInteractionUpdate == null
                      ? null
                      : onInteractionUpdateProxy,
                  panAxis: panAxis ?? PanAxis.free,
                  panEnabled: panEnabled ?? true,
                  scaleEnabled: scaleEnabled ?? true,
                  scaleFactor: scaleFactor ?? kDefaultMouseScrollToScaleFactor,
                  trackpadScrollCausesScale: trackpadScrollCausesScale ?? false,
                  transformationController: transformationController);
            },
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@builder':
        (m.Scope scope) => (
                {alignPanAxis,
                alignment,
                boundaryMargin,
                builder,
                clipBehavior,
                interactionEndFrictionCoefficient,
                key,
                maxScale,
                minScale,
                onInteractionEnd,
                onInteractionStart,
                onInteractionUpdate,
                panAxis,
                panEnabled,
                scaleEnabled,
                scaleFactor,
                trackpadScrollCausesScale,
                transformationController}) {
              Widget builderProxy(context, viewport) {
                return engine.callFunctionPointer(
                    scope, builder!, [context, viewport], {});
              }

              void onInteractionEndProxy(details) {
                engine.callFunctionPointer(
                    scope, onInteractionEnd!, [details], {});
              }

              void onInteractionStartProxy(details) {
                engine.callFunctionPointer(
                    scope, onInteractionStart!, [details], {});
              }

              void onInteractionUpdateProxy(details) {
                engine.callFunctionPointer(
                    scope, onInteractionUpdate!, [details], {});
              }

              return InteractiveViewer.builder(
                  alignPanAxis: alignPanAxis ?? false,
                  alignment: alignment,
                  boundaryMargin: boundaryMargin ?? EdgeInsets.zero,
                  builder: builderProxy,
                  clipBehavior: clipBehavior ?? Clip.hardEdge,
                  interactionEndFrictionCoefficient:
                      interactionEndFrictionCoefficient ?? 0.0000135,
                  key: key,
                  maxScale: maxScale ?? 2.5,
                  minScale: minScale ?? 0.8,
                  onInteractionEnd:
                      onInteractionEnd == null ? null : onInteractionEndProxy,
                  onInteractionStart: onInteractionStart == null
                      ? null
                      : onInteractionStartProxy,
                  onInteractionUpdate: onInteractionUpdate == null
                      ? null
                      : onInteractionUpdateProxy,
                  panAxis: panAxis ?? PanAxis.free,
                  panEnabled: panEnabled ?? true,
                  scaleEnabled: scaleEnabled ?? true,
                  scaleFactor: scaleFactor ?? 200.0,
                  trackpadScrollCausesScale: trackpadScrollCausesScale ?? false,
                  transformationController: transformationController);
            },
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@getNearestPointOnLine':
        (m.Scope scope) => InteractiveViewer.getNearestPointOnLine,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@getAxisAlignedBoundingBox':
        (m.Scope scope) => InteractiveViewer.getAxisAlignedBoundingBox,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@pointIsInside':
        (m.Scope scope) => InteractiveViewer.pointIsInside,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@getNearestPointInside':
        (m.Scope scope) => InteractiveViewer.getNearestPointInside,
    'package:flutter/src/widgets/interactive_viewer.dart@InteractiveViewer@createState':
        (m.Scope scope, InteractiveViewer target) => target.createState,
    'package:flutter/src/widgets/interactive_viewer.dart@TransformationController@#as':
        (m.Scope scope, target) => () => target as TransformationController,
    'package:flutter/src/widgets/interactive_viewer.dart@TransformationController@#is':
        (m.Scope scope, target) => () => target is TransformationController,
    'package:flutter/src/widgets/interactive_viewer.dart@TransformationController@':
        (m.Scope scope) => ([Matrix4? value]) {
              if (value == null) {
                return TransformationController();
              }
              return TransformationController(value!);
            },
    'package:flutter/src/widgets/interactive_viewer.dart@TransformationController@toScene':
        (m.Scope scope, TransformationController target) => target.toScene,
  };
}
