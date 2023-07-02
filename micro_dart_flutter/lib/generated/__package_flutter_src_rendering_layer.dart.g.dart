import 'package:flutter/src/rendering/layer.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/scheduler.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/rendering/layer.dart@AnnotationEntry@#as':
        (m.Scope scope, target) => () => target as AnnotationEntry,
    'package:flutter/src/rendering/layer.dart@AnnotationEntry@#is':
        (m.Scope scope, target) => () => target is AnnotationEntry,
    'package:flutter/src/rendering/layer.dart@AnnotationEntry@annotation':
        (m.Scope scope, AnnotationEntry target) => target.annotation,
    'package:flutter/src/rendering/layer.dart@AnnotationEntry@localPosition':
        (m.Scope scope, AnnotationEntry target) => target.localPosition,
    'package:flutter/src/rendering/layer.dart@AnnotationEntry@':
        (m.Scope scope) => <T>({annotation, localPosition}) {
              return AnnotationEntry(
                  annotation: annotation, localPosition: localPosition);
            },
    'package:flutter/src/rendering/layer.dart@AnnotationEntry@toString':
        (m.Scope scope, AnnotationEntry target) => target.toString,
    'package:flutter/src/rendering/layer.dart@AnnotationResult@#as':
        (m.Scope scope, target) => () => target as AnnotationResult,
    'package:flutter/src/rendering/layer.dart@AnnotationResult@#is':
        (m.Scope scope, target) => () => target is AnnotationResult,
    'package:flutter/src/rendering/layer.dart@AnnotationResult@entries':
        (m.Scope scope, AnnotationResult target) => target.entries,
    'package:flutter/src/rendering/layer.dart@AnnotationResult@annotations':
        (m.Scope scope, AnnotationResult target) => target.annotations,
    'package:flutter/src/rendering/layer.dart@AnnotationResult@':
        (m.Scope scope) => <T>() {
              return AnnotationResult();
            },
    'package:flutter/src/rendering/layer.dart@AnnotationResult@add':
        (m.Scope scope, AnnotationResult target) => target.add,
    'package:flutter/src/rendering/layer.dart@Layer@#as':
        (m.Scope scope, target) => () => target as Layer,
    'package:flutter/src/rendering/layer.dart@Layer@#is':
        (m.Scope scope, target) => () => target is Layer,
    'package:flutter/src/rendering/layer.dart@Layer@debugCreator':
        (m.Scope scope, Layer target) => target.debugCreator,
    'package:flutter/src/rendering/layer.dart@Layer@debugCreator:set':
        (m.Scope scope, Layer target) => (other) => target.debugCreator = other,
    'package:flutter/src/rendering/layer.dart@Layer@subtreeHasCompositionCallbacks':
        (m.Scope scope, Layer target) => target.subtreeHasCompositionCallbacks,
    'package:flutter/src/rendering/layer.dart@Layer@debugDisposed':
        (m.Scope scope, Layer target) => target.debugDisposed,
    'package:flutter/src/rendering/layer.dart@Layer@debugHandleCount':
        (m.Scope scope, Layer target) => target.debugHandleCount,
    'package:flutter/src/rendering/layer.dart@Layer@parent':
        (m.Scope scope, Layer target) => target.parent,
    'package:flutter/src/rendering/layer.dart@Layer@alwaysNeedsAddToScene':
        (m.Scope scope, Layer target) => target.alwaysNeedsAddToScene,
    'package:flutter/src/rendering/layer.dart@Layer@debugSubtreeNeedsAddToScene':
        (m.Scope scope, Layer target) => target.debugSubtreeNeedsAddToScene,
    'package:flutter/src/rendering/layer.dart@Layer@engineLayer':
        (m.Scope scope, Layer target) => target.engineLayer,
    'package:flutter/src/rendering/layer.dart@Layer@engineLayer:set':
        (m.Scope scope, Layer target) => (other) => target.engineLayer = other,
    'package:flutter/src/rendering/layer.dart@Layer@nextSibling':
        (m.Scope scope, Layer target) => target.nextSibling,
    'package:flutter/src/rendering/layer.dart@Layer@previousSibling':
        (m.Scope scope, Layer target) => target.previousSibling,
    'package:flutter/src/rendering/layer.dart@Layer@supportsRasterization':
        (m.Scope scope, Layer target) => target.supportsRasterization,
    'package:flutter/src/rendering/layer.dart@Layer@describeClipBounds':
        (m.Scope scope, Layer target) => target.describeClipBounds,
    'package:flutter/src/rendering/layer.dart@Layer@addCompositionCallback':
        (m.Scope scope, Layer target) => (callback) {
              void callbackProxy($p0) {
                engine.callFunctionPointer(scope, callback!, [$p0], {});
              }

              return target.addCompositionCallback(callbackProxy);
            },
    'package:flutter/src/rendering/layer.dart@Layer@dispose':
        (m.Scope scope, Layer target) => target.dispose,
    'package:flutter/src/rendering/layer.dart@Layer@markNeedsAddToScene':
        (m.Scope scope, Layer target) => target.markNeedsAddToScene,
    'package:flutter/src/rendering/layer.dart@Layer@debugMarkClean':
        (m.Scope scope, Layer target) => target.debugMarkClean,
    'package:flutter/src/rendering/layer.dart@Layer@updateSubtreeNeedsAddToScene':
        (m.Scope scope, Layer target) => target.updateSubtreeNeedsAddToScene,
    'package:flutter/src/rendering/layer.dart@Layer@dropChild':
        (m.Scope scope, Layer target) => target.dropChild,
    'package:flutter/src/rendering/layer.dart@Layer@adoptChild':
        (m.Scope scope, Layer target) => target.adoptChild,
    'package:flutter/src/rendering/layer.dart@Layer@remove':
        (m.Scope scope, Layer target) => target.remove,
    'package:flutter/src/rendering/layer.dart@Layer@findAnnotations':
        (m.Scope scope, Layer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@Layer@find':
        (m.Scope scope, Layer target) => target.find,
    'package:flutter/src/rendering/layer.dart@Layer@findAllAnnotations':
        (m.Scope scope, Layer target) => target.findAllAnnotations,
    'package:flutter/src/rendering/layer.dart@Layer@addToScene':
        (m.Scope scope, Layer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@Layer@toStringShort':
        (m.Scope scope, Layer target) => target.toStringShort,
    'package:flutter/src/rendering/layer.dart@Layer@debugFillProperties':
        (m.Scope scope, Layer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@LayerHandle@#as':
        (m.Scope scope, target) => () => target as LayerHandle,
    'package:flutter/src/rendering/layer.dart@LayerHandle@#is':
        (m.Scope scope, target) => () => target is LayerHandle,
    'package:flutter/src/rendering/layer.dart@LayerHandle@layer':
        (m.Scope scope, LayerHandle target) => target.layer,
    'package:flutter/src/rendering/layer.dart@LayerHandle@layer:set':
        (m.Scope scope, LayerHandle target) => (other) => target.layer = other,
    'package:flutter/src/rendering/layer.dart@LayerHandle@': (m.Scope scope) =>
        <T>([Layer? _layer]) {
          if (_layer == null) {
            return LayerHandle();
          }
          return LayerHandle(_layer!);
        },
    'package:flutter/src/rendering/layer.dart@LayerHandle@toString':
        (m.Scope scope, LayerHandle target) => target.toString,
    'package:flutter/src/rendering/layer.dart@PictureLayer@#as':
        (m.Scope scope, target) => () => target as PictureLayer,
    'package:flutter/src/rendering/layer.dart@PictureLayer@#is':
        (m.Scope scope, target) => () => target is PictureLayer,
    'package:flutter/src/rendering/layer.dart@PictureLayer@canvasBounds':
        (m.Scope scope, PictureLayer target) => target.canvasBounds,
    'package:flutter/src/rendering/layer.dart@PictureLayer@picture':
        (m.Scope scope, PictureLayer target) => target.picture,
    'package:flutter/src/rendering/layer.dart@PictureLayer@picture:set':
        (m.Scope scope, PictureLayer target) =>
            (other) => target.picture = other,
    'package:flutter/src/rendering/layer.dart@PictureLayer@isComplexHint':
        (m.Scope scope, PictureLayer target) => target.isComplexHint,
    'package:flutter/src/rendering/layer.dart@PictureLayer@isComplexHint:set':
        (m.Scope scope, PictureLayer target) =>
            (other) => target.isComplexHint = other,
    'package:flutter/src/rendering/layer.dart@PictureLayer@willChangeHint':
        (m.Scope scope, PictureLayer target) => target.willChangeHint,
    'package:flutter/src/rendering/layer.dart@PictureLayer@willChangeHint:set':
        (m.Scope scope, PictureLayer target) =>
            (other) => target.willChangeHint = other,
    'package:flutter/src/rendering/layer.dart@PictureLayer@': (m.Scope scope) =>
        (canvasBounds) {
          return PictureLayer(canvasBounds);
        },
    'package:flutter/src/rendering/layer.dart@PictureLayer@dispose':
        (m.Scope scope, PictureLayer target) => target.dispose,
    'package:flutter/src/rendering/layer.dart@PictureLayer@addToScene':
        (m.Scope scope, PictureLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@PictureLayer@debugFillProperties':
        (m.Scope scope, PictureLayer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@PictureLayer@findAnnotations':
        (m.Scope scope, PictureLayer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@TextureLayer@#as':
        (m.Scope scope, target) => () => target as TextureLayer,
    'package:flutter/src/rendering/layer.dart@TextureLayer@#is':
        (m.Scope scope, target) => () => target is TextureLayer,
    'package:flutter/src/rendering/layer.dart@TextureLayer@rect':
        (m.Scope scope, TextureLayer target) => target.rect,
    'package:flutter/src/rendering/layer.dart@TextureLayer@textureId':
        (m.Scope scope, TextureLayer target) => target.textureId,
    'package:flutter/src/rendering/layer.dart@TextureLayer@freeze':
        (m.Scope scope, TextureLayer target) => target.freeze,
    'package:flutter/src/rendering/layer.dart@TextureLayer@filterQuality':
        (m.Scope scope, TextureLayer target) => target.filterQuality,
    'package:flutter/src/rendering/layer.dart@TextureLayer@': (m.Scope scope) =>
        ({filterQuality, freeze, rect, textureId}) {
          return TextureLayer(
              filterQuality: filterQuality ?? FilterQuality.low,
              freeze: freeze ?? false,
              rect: rect,
              textureId: textureId);
        },
    'package:flutter/src/rendering/layer.dart@TextureLayer@addToScene':
        (m.Scope scope, TextureLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@TextureLayer@findAnnotations':
        (m.Scope scope, TextureLayer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@PlatformViewLayer@#as':
        (m.Scope scope, target) => () => target as PlatformViewLayer,
    'package:flutter/src/rendering/layer.dart@PlatformViewLayer@#is':
        (m.Scope scope, target) => () => target is PlatformViewLayer,
    'package:flutter/src/rendering/layer.dart@PlatformViewLayer@rect':
        (m.Scope scope, PlatformViewLayer target) => target.rect,
    'package:flutter/src/rendering/layer.dart@PlatformViewLayer@viewId':
        (m.Scope scope, PlatformViewLayer target) => target.viewId,
    'package:flutter/src/rendering/layer.dart@PlatformViewLayer@':
        (m.Scope scope) => ({rect, viewId}) {
              return PlatformViewLayer(rect: rect, viewId: viewId);
            },
    'package:flutter/src/rendering/layer.dart@PlatformViewLayer@supportsRasterization':
        (m.Scope scope, PlatformViewLayer target) =>
            target.supportsRasterization,
    'package:flutter/src/rendering/layer.dart@PlatformViewLayer@addToScene':
        (m.Scope scope, PlatformViewLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@PerformanceOverlayLayer@#as':
        (m.Scope scope, target) => () => target as PerformanceOverlayLayer,
    'package:flutter/src/rendering/layer.dart@PerformanceOverlayLayer@#is':
        (m.Scope scope, target) => () => target is PerformanceOverlayLayer,
    'package:flutter/src/rendering/layer.dart@PerformanceOverlayLayer@optionsMask':
        (m.Scope scope, PerformanceOverlayLayer target) => target.optionsMask,
    'package:flutter/src/rendering/layer.dart@PerformanceOverlayLayer@rasterizerThreshold':
        (m.Scope scope, PerformanceOverlayLayer target) =>
            target.rasterizerThreshold,
    'package:flutter/src/rendering/layer.dart@PerformanceOverlayLayer@checkerboardRasterCacheImages':
        (m.Scope scope, PerformanceOverlayLayer target) =>
            target.checkerboardRasterCacheImages,
    'package:flutter/src/rendering/layer.dart@PerformanceOverlayLayer@checkerboardOffscreenLayers':
        (m.Scope scope, PerformanceOverlayLayer target) =>
            target.checkerboardOffscreenLayers,
    'package:flutter/src/rendering/layer.dart@PerformanceOverlayLayer@overlayRect':
        (m.Scope scope, PerformanceOverlayLayer target) => target.overlayRect,
    'package:flutter/src/rendering/layer.dart@PerformanceOverlayLayer@overlayRect:set':
        (m.Scope scope, PerformanceOverlayLayer target) =>
            (other) => target.overlayRect = other,
    'package:flutter/src/rendering/layer.dart@PerformanceOverlayLayer@':
        (m.Scope scope) => (
                {checkerboardOffscreenLayers,
                checkerboardRasterCacheImages,
                optionsMask,
                overlayRect,
                rasterizerThreshold}) {
              return PerformanceOverlayLayer(
                  checkerboardOffscreenLayers: checkerboardOffscreenLayers,
                  checkerboardRasterCacheImages: checkerboardRasterCacheImages,
                  optionsMask: optionsMask,
                  overlayRect: overlayRect,
                  rasterizerThreshold: rasterizerThreshold);
            },
    'package:flutter/src/rendering/layer.dart@PerformanceOverlayLayer@addToScene':
        (m.Scope scope, PerformanceOverlayLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@PerformanceOverlayLayer@findAnnotations':
        (m.Scope scope, PerformanceOverlayLayer target) =>
            target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@#as':
        (m.Scope scope, target) => () => target as ContainerLayer,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@#is':
        (m.Scope scope, target) => () => target is ContainerLayer,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@firstChild':
        (m.Scope scope, ContainerLayer target) => target.firstChild,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@lastChild':
        (m.Scope scope, ContainerLayer target) => target.lastChild,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@hasChildren':
        (m.Scope scope, ContainerLayer target) => target.hasChildren,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@':
        (m.Scope scope) => () {
              return ContainerLayer();
            },
    'package:flutter/src/rendering/layer.dart@ContainerLayer@supportsRasterization':
        (m.Scope scope, ContainerLayer target) => target.supportsRasterization,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@buildScene':
        (m.Scope scope, ContainerLayer target) => target.buildScene,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@dispose':
        (m.Scope scope, ContainerLayer target) => target.dispose,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@updateSubtreeNeedsAddToScene':
        (m.Scope scope, ContainerLayer target) =>
            target.updateSubtreeNeedsAddToScene,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@findAnnotations':
        (m.Scope scope, ContainerLayer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@attach':
        (m.Scope scope, ContainerLayer target) => target.attach,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@detach':
        (m.Scope scope, ContainerLayer target) => target.detach,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@append':
        (m.Scope scope, ContainerLayer target) => target.append,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@removeAllChildren':
        (m.Scope scope, ContainerLayer target) => target.removeAllChildren,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@addToScene':
        (m.Scope scope, ContainerLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@addChildrenToScene':
        (m.Scope scope, ContainerLayer target) => target.addChildrenToScene,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@applyTransform':
        (m.Scope scope, ContainerLayer target) => target.applyTransform,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@depthFirstIterateChildren':
        (m.Scope scope, ContainerLayer target) =>
            target.depthFirstIterateChildren,
    'package:flutter/src/rendering/layer.dart@ContainerLayer@debugDescribeChildren':
        (m.Scope scope, ContainerLayer target) => target.debugDescribeChildren,
    'package:flutter/src/rendering/layer.dart@OffsetLayer@#as':
        (m.Scope scope, target) => () => target as OffsetLayer,
    'package:flutter/src/rendering/layer.dart@OffsetLayer@#is':
        (m.Scope scope, target) => () => target is OffsetLayer,
    'package:flutter/src/rendering/layer.dart@OffsetLayer@offset':
        (m.Scope scope, OffsetLayer target) => target.offset,
    'package:flutter/src/rendering/layer.dart@OffsetLayer@offset:set':
        (m.Scope scope, OffsetLayer target) => (other) => target.offset = other,
    'package:flutter/src/rendering/layer.dart@OffsetLayer@': (m.Scope scope) =>
        ({offset}) {
          return OffsetLayer(offset: offset ?? Offset.zero);
        },
    'package:flutter/src/rendering/layer.dart@OffsetLayer@findAnnotations':
        (m.Scope scope, OffsetLayer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@OffsetLayer@applyTransform':
        (m.Scope scope, OffsetLayer target) => target.applyTransform,
    'package:flutter/src/rendering/layer.dart@OffsetLayer@addToScene':
        (m.Scope scope, OffsetLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@OffsetLayer@debugFillProperties':
        (m.Scope scope, OffsetLayer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@OffsetLayer@toImage':
        (m.Scope scope, OffsetLayer target) => target.toImage,
    'package:flutter/src/rendering/layer.dart@OffsetLayer@toImageSync':
        (m.Scope scope, OffsetLayer target) => target.toImageSync,
    'package:flutter/src/rendering/layer.dart@ClipRectLayer@#as':
        (m.Scope scope, target) => () => target as ClipRectLayer,
    'package:flutter/src/rendering/layer.dart@ClipRectLayer@#is':
        (m.Scope scope, target) => () => target is ClipRectLayer,
    'package:flutter/src/rendering/layer.dart@ClipRectLayer@clipRect':
        (m.Scope scope, ClipRectLayer target) => target.clipRect,
    'package:flutter/src/rendering/layer.dart@ClipRectLayer@clipRect:set':
        (m.Scope scope, ClipRectLayer target) =>
            (other) => target.clipRect = other,
    'package:flutter/src/rendering/layer.dart@ClipRectLayer@clipBehavior':
        (m.Scope scope, ClipRectLayer target) => target.clipBehavior,
    'package:flutter/src/rendering/layer.dart@ClipRectLayer@clipBehavior:set':
        (m.Scope scope, ClipRectLayer target) =>
            (other) => target.clipBehavior = other,
    'package:flutter/src/rendering/layer.dart@ClipRectLayer@':
        (m.Scope scope) => ({clipBehavior, clipRect}) {
              return ClipRectLayer(
                  clipBehavior: clipBehavior ?? Clip.hardEdge,
                  clipRect: clipRect);
            },
    'package:flutter/src/rendering/layer.dart@ClipRectLayer@describeClipBounds':
        (m.Scope scope, ClipRectLayer target) => target.describeClipBounds,
    'package:flutter/src/rendering/layer.dart@ClipRectLayer@findAnnotations':
        (m.Scope scope, ClipRectLayer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@ClipRectLayer@addToScene':
        (m.Scope scope, ClipRectLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@ClipRectLayer@debugFillProperties':
        (m.Scope scope, ClipRectLayer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@ClipRRectLayer@#as':
        (m.Scope scope, target) => () => target as ClipRRectLayer,
    'package:flutter/src/rendering/layer.dart@ClipRRectLayer@#is':
        (m.Scope scope, target) => () => target is ClipRRectLayer,
    'package:flutter/src/rendering/layer.dart@ClipRRectLayer@clipRRect':
        (m.Scope scope, ClipRRectLayer target) => target.clipRRect,
    'package:flutter/src/rendering/layer.dart@ClipRRectLayer@clipRRect:set':
        (m.Scope scope, ClipRRectLayer target) =>
            (other) => target.clipRRect = other,
    'package:flutter/src/rendering/layer.dart@ClipRRectLayer@clipBehavior':
        (m.Scope scope, ClipRRectLayer target) => target.clipBehavior,
    'package:flutter/src/rendering/layer.dart@ClipRRectLayer@clipBehavior:set':
        (m.Scope scope, ClipRRectLayer target) =>
            (other) => target.clipBehavior = other,
    'package:flutter/src/rendering/layer.dart@ClipRRectLayer@':
        (m.Scope scope) => ({clipBehavior, clipRRect}) {
              return ClipRRectLayer(
                  clipBehavior: clipBehavior ?? Clip.antiAlias,
                  clipRRect: clipRRect);
            },
    'package:flutter/src/rendering/layer.dart@ClipRRectLayer@describeClipBounds':
        (m.Scope scope, ClipRRectLayer target) => target.describeClipBounds,
    'package:flutter/src/rendering/layer.dart@ClipRRectLayer@findAnnotations':
        (m.Scope scope, ClipRRectLayer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@ClipRRectLayer@addToScene':
        (m.Scope scope, ClipRRectLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@ClipRRectLayer@debugFillProperties':
        (m.Scope scope, ClipRRectLayer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@ClipPathLayer@#as':
        (m.Scope scope, target) => () => target as ClipPathLayer,
    'package:flutter/src/rendering/layer.dart@ClipPathLayer@#is':
        (m.Scope scope, target) => () => target is ClipPathLayer,
    'package:flutter/src/rendering/layer.dart@ClipPathLayer@clipPath':
        (m.Scope scope, ClipPathLayer target) => target.clipPath,
    'package:flutter/src/rendering/layer.dart@ClipPathLayer@clipPath:set':
        (m.Scope scope, ClipPathLayer target) =>
            (other) => target.clipPath = other,
    'package:flutter/src/rendering/layer.dart@ClipPathLayer@clipBehavior':
        (m.Scope scope, ClipPathLayer target) => target.clipBehavior,
    'package:flutter/src/rendering/layer.dart@ClipPathLayer@clipBehavior:set':
        (m.Scope scope, ClipPathLayer target) =>
            (other) => target.clipBehavior = other,
    'package:flutter/src/rendering/layer.dart@ClipPathLayer@':
        (m.Scope scope) => ({clipBehavior, clipPath}) {
              return ClipPathLayer(
                  clipBehavior: clipBehavior ?? Clip.antiAlias,
                  clipPath: clipPath);
            },
    'package:flutter/src/rendering/layer.dart@ClipPathLayer@describeClipBounds':
        (m.Scope scope, ClipPathLayer target) => target.describeClipBounds,
    'package:flutter/src/rendering/layer.dart@ClipPathLayer@findAnnotations':
        (m.Scope scope, ClipPathLayer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@ClipPathLayer@addToScene':
        (m.Scope scope, ClipPathLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@ClipPathLayer@debugFillProperties':
        (m.Scope scope, ClipPathLayer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@ColorFilterLayer@#as':
        (m.Scope scope, target) => () => target as ColorFilterLayer,
    'package:flutter/src/rendering/layer.dart@ColorFilterLayer@#is':
        (m.Scope scope, target) => () => target is ColorFilterLayer,
    'package:flutter/src/rendering/layer.dart@ColorFilterLayer@colorFilter':
        (m.Scope scope, ColorFilterLayer target) => target.colorFilter,
    'package:flutter/src/rendering/layer.dart@ColorFilterLayer@colorFilter:set':
        (m.Scope scope, ColorFilterLayer target) =>
            (other) => target.colorFilter = other,
    'package:flutter/src/rendering/layer.dart@ColorFilterLayer@':
        (m.Scope scope) => ({colorFilter}) {
              return ColorFilterLayer(colorFilter: colorFilter);
            },
    'package:flutter/src/rendering/layer.dart@ColorFilterLayer@addToScene':
        (m.Scope scope, ColorFilterLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@ColorFilterLayer@debugFillProperties':
        (m.Scope scope, ColorFilterLayer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@ImageFilterLayer@#as':
        (m.Scope scope, target) => () => target as ImageFilterLayer,
    'package:flutter/src/rendering/layer.dart@ImageFilterLayer@#is':
        (m.Scope scope, target) => () => target is ImageFilterLayer,
    'package:flutter/src/rendering/layer.dart@ImageFilterLayer@imageFilter':
        (m.Scope scope, ImageFilterLayer target) => target.imageFilter,
    'package:flutter/src/rendering/layer.dart@ImageFilterLayer@imageFilter:set':
        (m.Scope scope, ImageFilterLayer target) =>
            (other) => target.imageFilter = other,
    'package:flutter/src/rendering/layer.dart@ImageFilterLayer@':
        (m.Scope scope) => ({imageFilter, offset}) {
              return ImageFilterLayer(
                  imageFilter: imageFilter, offset: offset ?? Offset.zero);
            },
    'package:flutter/src/rendering/layer.dart@ImageFilterLayer@addToScene':
        (m.Scope scope, ImageFilterLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@ImageFilterLayer@debugFillProperties':
        (m.Scope scope, ImageFilterLayer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@TransformLayer@#as':
        (m.Scope scope, target) => () => target as TransformLayer,
    'package:flutter/src/rendering/layer.dart@TransformLayer@#is':
        (m.Scope scope, target) => () => target is TransformLayer,
    'package:flutter/src/rendering/layer.dart@TransformLayer@transform':
        (m.Scope scope, TransformLayer target) => target.transform,
    'package:flutter/src/rendering/layer.dart@TransformLayer@transform:set':
        (m.Scope scope, TransformLayer target) =>
            (other) => target.transform = other,
    'package:flutter/src/rendering/layer.dart@TransformLayer@':
        (m.Scope scope) => ({offset, transform}) {
              return TransformLayer(
                  offset: offset ?? Offset.zero, transform: transform);
            },
    'package:flutter/src/rendering/layer.dart@TransformLayer@addToScene':
        (m.Scope scope, TransformLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@TransformLayer@findAnnotations':
        (m.Scope scope, TransformLayer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@TransformLayer@applyTransform':
        (m.Scope scope, TransformLayer target) => target.applyTransform,
    'package:flutter/src/rendering/layer.dart@TransformLayer@debugFillProperties':
        (m.Scope scope, TransformLayer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@OpacityLayer@#as':
        (m.Scope scope, target) => () => target as OpacityLayer,
    'package:flutter/src/rendering/layer.dart@OpacityLayer@#is':
        (m.Scope scope, target) => () => target is OpacityLayer,
    'package:flutter/src/rendering/layer.dart@OpacityLayer@alpha':
        (m.Scope scope, OpacityLayer target) => target.alpha,
    'package:flutter/src/rendering/layer.dart@OpacityLayer@alpha:set':
        (m.Scope scope, OpacityLayer target) => (other) => target.alpha = other,
    'package:flutter/src/rendering/layer.dart@OpacityLayer@': (m.Scope scope) =>
        ({alpha, offset}) {
          return OpacityLayer(alpha: alpha, offset: offset ?? Offset.zero);
        },
    'package:flutter/src/rendering/layer.dart@OpacityLayer@addToScene':
        (m.Scope scope, OpacityLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@OpacityLayer@debugFillProperties':
        (m.Scope scope, OpacityLayer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@ShaderMaskLayer@#as':
        (m.Scope scope, target) => () => target as ShaderMaskLayer,
    'package:flutter/src/rendering/layer.dart@ShaderMaskLayer@#is':
        (m.Scope scope, target) => () => target is ShaderMaskLayer,
    'package:flutter/src/rendering/layer.dart@ShaderMaskLayer@shader':
        (m.Scope scope, ShaderMaskLayer target) => target.shader,
    'package:flutter/src/rendering/layer.dart@ShaderMaskLayer@shader:set':
        (m.Scope scope, ShaderMaskLayer target) =>
            (other) => target.shader = other,
    'package:flutter/src/rendering/layer.dart@ShaderMaskLayer@maskRect':
        (m.Scope scope, ShaderMaskLayer target) => target.maskRect,
    'package:flutter/src/rendering/layer.dart@ShaderMaskLayer@maskRect:set':
        (m.Scope scope, ShaderMaskLayer target) =>
            (other) => target.maskRect = other,
    'package:flutter/src/rendering/layer.dart@ShaderMaskLayer@blendMode':
        (m.Scope scope, ShaderMaskLayer target) => target.blendMode,
    'package:flutter/src/rendering/layer.dart@ShaderMaskLayer@blendMode:set':
        (m.Scope scope, ShaderMaskLayer target) =>
            (other) => target.blendMode = other,
    'package:flutter/src/rendering/layer.dart@ShaderMaskLayer@':
        (m.Scope scope) => ({blendMode, maskRect, shader}) {
              return ShaderMaskLayer(
                  blendMode: blendMode, maskRect: maskRect, shader: shader);
            },
    'package:flutter/src/rendering/layer.dart@ShaderMaskLayer@addToScene':
        (m.Scope scope, ShaderMaskLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@ShaderMaskLayer@debugFillProperties':
        (m.Scope scope, ShaderMaskLayer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@BackdropFilterLayer@#as':
        (m.Scope scope, target) => () => target as BackdropFilterLayer,
    'package:flutter/src/rendering/layer.dart@BackdropFilterLayer@#is':
        (m.Scope scope, target) => () => target is BackdropFilterLayer,
    'package:flutter/src/rendering/layer.dart@BackdropFilterLayer@filter':
        (m.Scope scope, BackdropFilterLayer target) => target.filter,
    'package:flutter/src/rendering/layer.dart@BackdropFilterLayer@filter:set':
        (m.Scope scope, BackdropFilterLayer target) =>
            (other) => target.filter = other,
    'package:flutter/src/rendering/layer.dart@BackdropFilterLayer@blendMode':
        (m.Scope scope, BackdropFilterLayer target) => target.blendMode,
    'package:flutter/src/rendering/layer.dart@BackdropFilterLayer@blendMode:set':
        (m.Scope scope, BackdropFilterLayer target) =>
            (other) => target.blendMode = other,
    'package:flutter/src/rendering/layer.dart@BackdropFilterLayer@':
        (m.Scope scope) => ({blendMode, filter}) {
              return BackdropFilterLayer(
                  blendMode: blendMode ?? BlendMode.srcOver, filter: filter);
            },
    'package:flutter/src/rendering/layer.dart@BackdropFilterLayer@addToScene':
        (m.Scope scope, BackdropFilterLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@BackdropFilterLayer@debugFillProperties':
        (m.Scope scope, BackdropFilterLayer target) =>
            target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@#as':
        (m.Scope scope, target) => () => target as PhysicalModelLayer,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@#is':
        (m.Scope scope, target) => () => target is PhysicalModelLayer,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@clipPath':
        (m.Scope scope, PhysicalModelLayer target) => target.clipPath,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@clipPath:set':
        (m.Scope scope, PhysicalModelLayer target) =>
            (other) => target.clipPath = other,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@clipBehavior':
        (m.Scope scope, PhysicalModelLayer target) => target.clipBehavior,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@clipBehavior:set':
        (m.Scope scope, PhysicalModelLayer target) =>
            (other) => target.clipBehavior = other,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@elevation':
        (m.Scope scope, PhysicalModelLayer target) => target.elevation,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@elevation:set':
        (m.Scope scope, PhysicalModelLayer target) =>
            (other) => target.elevation = other,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@color':
        (m.Scope scope, PhysicalModelLayer target) => target.color,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@color:set':
        (m.Scope scope, PhysicalModelLayer target) =>
            (other) => target.color = other,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@shadowColor':
        (m.Scope scope, PhysicalModelLayer target) => target.shadowColor,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@shadowColor:set':
        (m.Scope scope, PhysicalModelLayer target) =>
            (other) => target.shadowColor = other,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@findAnnotations':
        (m.Scope scope, PhysicalModelLayer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@addToScene':
        (m.Scope scope, PhysicalModelLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@PhysicalModelLayer@debugFillProperties':
        (m.Scope scope, PhysicalModelLayer target) =>
            target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@LayerLink@#as':
        (m.Scope scope, target) => () => target as LayerLink,
    'package:flutter/src/rendering/layer.dart@LayerLink@#is':
        (m.Scope scope, target) => () => target is LayerLink,
    'package:flutter/src/rendering/layer.dart@LayerLink@leaderSize':
        (m.Scope scope, LayerLink target) => target.leaderSize,
    'package:flutter/src/rendering/layer.dart@LayerLink@leaderSize:set':
        (m.Scope scope, LayerLink target) =>
            (other) => target.leaderSize = other,
    'package:flutter/src/rendering/layer.dart@LayerLink@leader':
        (m.Scope scope, LayerLink target) => target.leader,
    'package:flutter/src/rendering/layer.dart@LayerLink@': (m.Scope scope) =>
        () {
          return LayerLink();
        },
    'package:flutter/src/rendering/layer.dart@LayerLink@toString':
        (m.Scope scope, LayerLink target) => target.toString,
    'package:flutter/src/rendering/layer.dart@LeaderLayer@#as':
        (m.Scope scope, target) => () => target as LeaderLayer,
    'package:flutter/src/rendering/layer.dart@LeaderLayer@#is':
        (m.Scope scope, target) => () => target is LeaderLayer,
    'package:flutter/src/rendering/layer.dart@LeaderLayer@link':
        (m.Scope scope, LeaderLayer target) => target.link,
    'package:flutter/src/rendering/layer.dart@LeaderLayer@link:set':
        (m.Scope scope, LeaderLayer target) => (other) => target.link = other,
    'package:flutter/src/rendering/layer.dart@LeaderLayer@offset':
        (m.Scope scope, LeaderLayer target) => target.offset,
    'package:flutter/src/rendering/layer.dart@LeaderLayer@offset:set':
        (m.Scope scope, LeaderLayer target) => (other) => target.offset = other,
    'package:flutter/src/rendering/layer.dart@LeaderLayer@': (m.Scope scope) =>
        ({link, offset}) {
          return LeaderLayer(link: link, offset: offset ?? Offset.zero);
        },
    'package:flutter/src/rendering/layer.dart@LeaderLayer@attach':
        (m.Scope scope, LeaderLayer target) => target.attach,
    'package:flutter/src/rendering/layer.dart@LeaderLayer@detach':
        (m.Scope scope, LeaderLayer target) => target.detach,
    'package:flutter/src/rendering/layer.dart@LeaderLayer@findAnnotations':
        (m.Scope scope, LeaderLayer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@LeaderLayer@addToScene':
        (m.Scope scope, LeaderLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@LeaderLayer@applyTransform':
        (m.Scope scope, LeaderLayer target) => target.applyTransform,
    'package:flutter/src/rendering/layer.dart@LeaderLayer@debugFillProperties':
        (m.Scope scope, LeaderLayer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@#as':
        (m.Scope scope, target) => () => target as FollowerLayer,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@#is':
        (m.Scope scope, target) => () => target is FollowerLayer,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@link':
        (m.Scope scope, FollowerLayer target) => target.link,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@link:set':
        (m.Scope scope, FollowerLayer target) => (other) => target.link = other,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@showWhenUnlinked':
        (m.Scope scope, FollowerLayer target) => target.showWhenUnlinked,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@showWhenUnlinked:set':
        (m.Scope scope, FollowerLayer target) =>
            (other) => target.showWhenUnlinked = other,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@unlinkedOffset':
        (m.Scope scope, FollowerLayer target) => target.unlinkedOffset,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@unlinkedOffset:set':
        (m.Scope scope, FollowerLayer target) =>
            (other) => target.unlinkedOffset = other,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@linkedOffset':
        (m.Scope scope, FollowerLayer target) => target.linkedOffset,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@linkedOffset:set':
        (m.Scope scope, FollowerLayer target) =>
            (other) => target.linkedOffset = other,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@alwaysNeedsAddToScene':
        (m.Scope scope, FollowerLayer target) => target.alwaysNeedsAddToScene,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@':
        (m.Scope scope) =>
            ({link, linkedOffset, showWhenUnlinked, unlinkedOffset}) {
              return FollowerLayer(
                  link: link,
                  linkedOffset: linkedOffset ?? Offset.zero,
                  showWhenUnlinked: showWhenUnlinked ?? true,
                  unlinkedOffset: unlinkedOffset ?? Offset.zero);
            },
    'package:flutter/src/rendering/layer.dart@FollowerLayer@findAnnotations':
        (m.Scope scope, FollowerLayer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@getLastTransform':
        (m.Scope scope, FollowerLayer target) => target.getLastTransform,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@addToScene':
        (m.Scope scope, FollowerLayer target) => target.addToScene,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@applyTransform':
        (m.Scope scope, FollowerLayer target) => target.applyTransform,
    'package:flutter/src/rendering/layer.dart@FollowerLayer@debugFillProperties':
        (m.Scope scope, FollowerLayer target) => target.debugFillProperties,
    'package:flutter/src/rendering/layer.dart@AnnotatedRegionLayer@#as':
        (m.Scope scope, target) => () => target as AnnotatedRegionLayer,
    'package:flutter/src/rendering/layer.dart@AnnotatedRegionLayer@#is':
        (m.Scope scope, target) => () => target is AnnotatedRegionLayer,
    'package:flutter/src/rendering/layer.dart@AnnotatedRegionLayer@value':
        (m.Scope scope, AnnotatedRegionLayer target) => target.value,
    'package:flutter/src/rendering/layer.dart@AnnotatedRegionLayer@size':
        (m.Scope scope, AnnotatedRegionLayer target) => target.size,
    'package:flutter/src/rendering/layer.dart@AnnotatedRegionLayer@offset':
        (m.Scope scope, AnnotatedRegionLayer target) => target.offset,
    'package:flutter/src/rendering/layer.dart@AnnotatedRegionLayer@opaque':
        (m.Scope scope, AnnotatedRegionLayer target) => target.opaque,
    'package:flutter/src/rendering/layer.dart@AnnotatedRegionLayer@':
        (m.Scope scope) => <T extends Object>(value, {offset, opaque, size}) {
              return AnnotatedRegionLayer<T>(value,
                  offset: offset, opaque: opaque ?? false, size: size);
            },
    'package:flutter/src/rendering/layer.dart@AnnotatedRegionLayer@findAnnotations':
        (m.Scope scope, AnnotatedRegionLayer target) => target.findAnnotations,
    'package:flutter/src/rendering/layer.dart@AnnotatedRegionLayer@debugFillProperties':
        (m.Scope scope, AnnotatedRegionLayer target) =>
            target.debugFillProperties,
  };
}
