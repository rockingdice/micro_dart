import 'dart:ui';
import 'dart:async';
import 'dart:collection';
import 'dart:developer';
import 'dart:io';
import 'dart:isolate' show SendPort;
import 'dart:math';
import 'dart:nativewrappers';
import 'dart:typed_data';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'dart:ui@@keepToString': (m.Scope scope) => keepToString,
    'dart:ui@@channelBuffers': (m.Scope scope) => channelBuffers,
    'dart:ui@ChannelBuffers@#as': (m.Scope scope, target) =>
        () => target as ChannelBuffers,
    'dart:ui@ChannelBuffers@#is': (m.Scope scope, target) =>
        () => target is ChannelBuffers,
    'dart:ui@ChannelBuffers@kDefaultBufferSize': (m.Scope scope) =>
        ChannelBuffers.kDefaultBufferSize,
    'dart:ui@ChannelBuffers@kControlChannelName': (m.Scope scope) =>
        ChannelBuffers.kControlChannelName,
    'dart:ui@ChannelBuffers@': (m.Scope scope) => () {
          return ChannelBuffers();
        },
    'dart:ui@ChannelBuffers@push': (m.Scope scope, ChannelBuffers target) =>
        (name, data, callback) {
          void callbackProxy(data) {
            engine.callFunctionPointer(scope, callback!, [data], {});
          }

          target.push(name, data, callbackProxy);
        },
    'dart:ui@ChannelBuffers@setListener': (m.Scope scope,
            ChannelBuffers target) =>
        (name, callback) {
          void callbackProxy(data, callback) {
            engine.callFunctionPointer(scope, callback!, [data, callback], {});
          }

          target.setListener(name, callbackProxy);
        },
    'dart:ui@ChannelBuffers@clearListener':
        (m.Scope scope, ChannelBuffers target) => target.clearListener,
    'dart:ui@ChannelBuffers@drain': (m.Scope scope, ChannelBuffers target) =>
        (name, callback) {
          Future callbackProxy(data, callback) async {
            return await engine.callFunctionPointerAsync(
                scope, callback!, [data, callback], {});
          }

          return target.drain(name, callbackProxy);
        },
    'dart:ui@ChannelBuffers@handleMessage':
        (m.Scope scope, ChannelBuffers target) => target.handleMessage,
    'dart:ui@ChannelBuffers@resize': (m.Scope scope, ChannelBuffers target) =>
        target.resize,
    'dart:ui@ChannelBuffers@allowOverflow':
        (m.Scope scope, ChannelBuffers target) => target.allowOverflow,
    'dart:ui@Scene@#as': (m.Scope scope, target) => () => target as Scene,
    'dart:ui@Scene@#is': (m.Scope scope, target) => () => target is Scene,
    'dart:ui@Scene@toImageSync': (m.Scope scope, Scene target) =>
        target.toImageSync,
    'dart:ui@Scene@toImage': (m.Scope scope, Scene target) => target.toImage,
    'dart:ui@Scene@dispose': (m.Scope scope, Scene target) => target.dispose,
    'dart:ui@TransformEngineLayer@#as': (m.Scope scope, target) =>
        () => target as TransformEngineLayer,
    'dart:ui@TransformEngineLayer@#is': (m.Scope scope, target) =>
        () => target is TransformEngineLayer,
    'dart:ui@OffsetEngineLayer@#as': (m.Scope scope, target) =>
        () => target as OffsetEngineLayer,
    'dart:ui@OffsetEngineLayer@#is': (m.Scope scope, target) =>
        () => target is OffsetEngineLayer,
    'dart:ui@ClipRectEngineLayer@#as': (m.Scope scope, target) =>
        () => target as ClipRectEngineLayer,
    'dart:ui@ClipRectEngineLayer@#is': (m.Scope scope, target) =>
        () => target is ClipRectEngineLayer,
    'dart:ui@ClipRRectEngineLayer@#as': (m.Scope scope, target) =>
        () => target as ClipRRectEngineLayer,
    'dart:ui@ClipRRectEngineLayer@#is': (m.Scope scope, target) =>
        () => target is ClipRRectEngineLayer,
    'dart:ui@ClipPathEngineLayer@#as': (m.Scope scope, target) =>
        () => target as ClipPathEngineLayer,
    'dart:ui@ClipPathEngineLayer@#is': (m.Scope scope, target) =>
        () => target is ClipPathEngineLayer,
    'dart:ui@OpacityEngineLayer@#as': (m.Scope scope, target) =>
        () => target as OpacityEngineLayer,
    'dart:ui@OpacityEngineLayer@#is': (m.Scope scope, target) =>
        () => target is OpacityEngineLayer,
    'dart:ui@ColorFilterEngineLayer@#as': (m.Scope scope, target) =>
        () => target as ColorFilterEngineLayer,
    'dart:ui@ColorFilterEngineLayer@#is': (m.Scope scope, target) =>
        () => target is ColorFilterEngineLayer,
    'dart:ui@ImageFilterEngineLayer@#as': (m.Scope scope, target) =>
        () => target as ImageFilterEngineLayer,
    'dart:ui@ImageFilterEngineLayer@#is': (m.Scope scope, target) =>
        () => target is ImageFilterEngineLayer,
    'dart:ui@BackdropFilterEngineLayer@#as': (m.Scope scope, target) =>
        () => target as BackdropFilterEngineLayer,
    'dart:ui@BackdropFilterEngineLayer@#is': (m.Scope scope, target) =>
        () => target is BackdropFilterEngineLayer,
    'dart:ui@ShaderMaskEngineLayer@#as': (m.Scope scope, target) =>
        () => target as ShaderMaskEngineLayer,
    'dart:ui@ShaderMaskEngineLayer@#is': (m.Scope scope, target) =>
        () => target is ShaderMaskEngineLayer,
    'dart:ui@PhysicalShapeEngineLayer@#as': (m.Scope scope, target) =>
        () => target as PhysicalShapeEngineLayer,
    'dart:ui@PhysicalShapeEngineLayer@#is': (m.Scope scope, target) =>
        () => target is PhysicalShapeEngineLayer,
    'dart:ui@SceneBuilder@#as': (m.Scope scope, target) =>
        () => target as SceneBuilder,
    'dart:ui@SceneBuilder@#is': (m.Scope scope, target) =>
        () => target is SceneBuilder,
    'dart:ui@SceneBuilder@': (m.Scope scope) => () {
          return SceneBuilder();
        },
    'dart:ui@SceneBuilder@pushTransform':
        (m.Scope scope, SceneBuilder target) => target.pushTransform,
    'dart:ui@SceneBuilder@pushOffset': (m.Scope scope, SceneBuilder target) =>
        target.pushOffset,
    'dart:ui@SceneBuilder@pushClipRect': (m.Scope scope, SceneBuilder target) =>
        target.pushClipRect,
    'dart:ui@SceneBuilder@pushClipRRect':
        (m.Scope scope, SceneBuilder target) => target.pushClipRRect,
    'dart:ui@SceneBuilder@pushClipPath': (m.Scope scope, SceneBuilder target) =>
        target.pushClipPath,
    'dart:ui@SceneBuilder@pushOpacity': (m.Scope scope, SceneBuilder target) =>
        target.pushOpacity,
    'dart:ui@SceneBuilder@pushColorFilter':
        (m.Scope scope, SceneBuilder target) => target.pushColorFilter,
    'dart:ui@SceneBuilder@pushImageFilter':
        (m.Scope scope, SceneBuilder target) => target.pushImageFilter,
    'dart:ui@SceneBuilder@pushBackdropFilter':
        (m.Scope scope, SceneBuilder target) => target.pushBackdropFilter,
    'dart:ui@SceneBuilder@pushShaderMask':
        (m.Scope scope, SceneBuilder target) => target.pushShaderMask,
    'dart:ui@SceneBuilder@pop': (m.Scope scope, SceneBuilder target) =>
        target.pop,
    'dart:ui@SceneBuilder@addRetained': (m.Scope scope, SceneBuilder target) =>
        target.addRetained,
    'dart:ui@SceneBuilder@addPerformanceOverlay':
        (m.Scope scope, SceneBuilder target) => target.addPerformanceOverlay,
    'dart:ui@SceneBuilder@addPicture': (m.Scope scope, SceneBuilder target) =>
        target.addPicture,
    'dart:ui@SceneBuilder@addTexture': (m.Scope scope, SceneBuilder target) =>
        target.addTexture,
    'dart:ui@SceneBuilder@addPlatformView':
        (m.Scope scope, SceneBuilder target) => target.addPlatformView,
    'dart:ui@SceneBuilder@setRasterizerTracingThreshold':
        (m.Scope scope, SceneBuilder target) =>
            target.setRasterizerTracingThreshold,
    'dart:ui@SceneBuilder@setCheckerboardRasterCacheImages':
        (m.Scope scope, SceneBuilder target) =>
            target.setCheckerboardRasterCacheImages,
    'dart:ui@SceneBuilder@setCheckerboardOffscreenLayers':
        (m.Scope scope, SceneBuilder target) =>
            target.setCheckerboardOffscreenLayers,
    'dart:ui@SceneBuilder@build': (m.Scope scope, SceneBuilder target) =>
        target.build,
    'dart:ui@OffsetBase@#as': (m.Scope scope, target) =>
        () => target as OffsetBase,
    'dart:ui@OffsetBase@#is': (m.Scope scope, target) =>
        () => target is OffsetBase,
    'dart:ui@OffsetBase@isInfinite': (m.Scope scope, OffsetBase target) =>
        target.isInfinite,
    'dart:ui@OffsetBase@isFinite': (m.Scope scope, OffsetBase target) =>
        target.isFinite,
    'dart:ui@OffsetBase@hashCode': (m.Scope scope, OffsetBase target) =>
        target.hashCode,
    'dart:ui@OffsetBase@<': (m.Scope scope, OffsetBase target) =>
        (other) => target < other,
    'dart:ui@OffsetBase@<=': (m.Scope scope, OffsetBase target) =>
        (other) => target <= other,
    'dart:ui@OffsetBase@>': (m.Scope scope, OffsetBase target) =>
        (other) => target > other,
    'dart:ui@OffsetBase@>=': (m.Scope scope, OffsetBase target) =>
        (other) => target >= other,
    'dart:ui@OffsetBase@==': (m.Scope scope, OffsetBase target) =>
        (other) => target == other,
    'dart:ui@OffsetBase@toString': (m.Scope scope, OffsetBase target) =>
        target.toString,
    'dart:ui@Offset@#as': (m.Scope scope, target) => () => target as Offset,
    'dart:ui@Offset@#is': (m.Scope scope, target) => () => target is Offset,
    'dart:ui@Offset@zero': (m.Scope scope) => Offset.zero,
    'dart:ui@Offset@infinite': (m.Scope scope) => Offset.infinite,
    'dart:ui@Offset@dx': (m.Scope scope, Offset target) => target.dx,
    'dart:ui@Offset@dy': (m.Scope scope, Offset target) => target.dy,
    'dart:ui@Offset@distance': (m.Scope scope, Offset target) =>
        target.distance,
    'dart:ui@Offset@distanceSquared': (m.Scope scope, Offset target) =>
        target.distanceSquared,
    'dart:ui@Offset@direction': (m.Scope scope, Offset target) =>
        target.direction,
    'dart:ui@Offset@hashCode': (m.Scope scope, Offset target) =>
        target.hashCode,
    'dart:ui@Offset@': (m.Scope scope) => (dx, dy) {
          return Offset(dx, dy);
        },
    'dart:ui@Offset@fromDirection': (m.Scope scope) => Offset.fromDirection,
    'dart:ui@Offset@scale': (m.Scope scope, Offset target) => target.scale,
    'dart:ui@Offset@translate': (m.Scope scope, Offset target) =>
        target.translate,
    'dart:ui@Offset@unary-': (m.Scope scope, Offset target) => () => -target,
    'dart:ui@Offset@-': (m.Scope scope, Offset target) =>
        (other) => target - other,
    'dart:ui@Offset@+': (m.Scope scope, Offset target) =>
        (other) => target + other,
    'dart:ui@Offset@*': (m.Scope scope, Offset target) =>
        (other) => target * other,
    'dart:ui@Offset@/': (m.Scope scope, Offset target) =>
        (other) => target / other,
    'dart:ui@Offset@~/': (m.Scope scope, Offset target) =>
        (other) => target ~/ other,
    'dart:ui@Offset@%': (m.Scope scope, Offset target) =>
        (other) => target % other,
    'dart:ui@Offset@&': (m.Scope scope, Offset target) =>
        (other) => target & other,
    'dart:ui@Offset@lerp': (m.Scope scope) => Offset.lerp,
    'dart:ui@Offset@==': (m.Scope scope, Offset target) =>
        (other) => target == other,
    'dart:ui@Offset@toString': (m.Scope scope, Offset target) =>
        target.toString,
    'dart:ui@Size@#as': (m.Scope scope, target) => () => target as Size,
    'dart:ui@Size@#is': (m.Scope scope, target) => () => target is Size,
    'dart:ui@Size@zero': (m.Scope scope) => Size.zero,
    'dart:ui@Size@infinite': (m.Scope scope) => Size.infinite,
    'dart:ui@Size@width': (m.Scope scope, Size target) => target.width,
    'dart:ui@Size@height': (m.Scope scope, Size target) => target.height,
    'dart:ui@Size@aspectRatio': (m.Scope scope, Size target) =>
        target.aspectRatio,
    'dart:ui@Size@isEmpty': (m.Scope scope, Size target) => target.isEmpty,
    'dart:ui@Size@shortestSide': (m.Scope scope, Size target) =>
        target.shortestSide,
    'dart:ui@Size@longestSide': (m.Scope scope, Size target) =>
        target.longestSide,
    'dart:ui@Size@flipped': (m.Scope scope, Size target) => target.flipped,
    'dart:ui@Size@hashCode': (m.Scope scope, Size target) => target.hashCode,
    'dart:ui@Size@': (m.Scope scope) => (width, height) {
          return Size(width, height);
        },
    'dart:ui@Size@copy': (m.Scope scope) => Size.copy,
    'dart:ui@Size@square': (m.Scope scope) => Size.square,
    'dart:ui@Size@fromWidth': (m.Scope scope) => Size.fromWidth,
    'dart:ui@Size@fromHeight': (m.Scope scope) => Size.fromHeight,
    'dart:ui@Size@fromRadius': (m.Scope scope) => Size.fromRadius,
    'dart:ui@Size@-': (m.Scope scope, Size target) => (other) => target - other,
    'dart:ui@Size@+': (m.Scope scope, Size target) => (other) => target + other,
    'dart:ui@Size@*': (m.Scope scope, Size target) => (other) => target * other,
    'dart:ui@Size@/': (m.Scope scope, Size target) => (other) => target / other,
    'dart:ui@Size@~/': (m.Scope scope, Size target) =>
        (other) => target ~/ other,
    'dart:ui@Size@%': (m.Scope scope, Size target) => (other) => target % other,
    'dart:ui@Size@topLeft': (m.Scope scope, Size target) => target.topLeft,
    'dart:ui@Size@topCenter': (m.Scope scope, Size target) => target.topCenter,
    'dart:ui@Size@topRight': (m.Scope scope, Size target) => target.topRight,
    'dart:ui@Size@centerLeft': (m.Scope scope, Size target) =>
        target.centerLeft,
    'dart:ui@Size@center': (m.Scope scope, Size target) => target.center,
    'dart:ui@Size@centerRight': (m.Scope scope, Size target) =>
        target.centerRight,
    'dart:ui@Size@bottomLeft': (m.Scope scope, Size target) =>
        target.bottomLeft,
    'dart:ui@Size@bottomCenter': (m.Scope scope, Size target) =>
        target.bottomCenter,
    'dart:ui@Size@bottomRight': (m.Scope scope, Size target) =>
        target.bottomRight,
    'dart:ui@Size@contains': (m.Scope scope, Size target) => target.contains,
    'dart:ui@Size@lerp': (m.Scope scope) => Size.lerp,
    'dart:ui@Size@==': (m.Scope scope, Size target) =>
        (other) => target == other,
    'dart:ui@Size@toString': (m.Scope scope, Size target) => target.toString,
    'dart:ui@Rect@#as': (m.Scope scope, target) => () => target as Rect,
    'dart:ui@Rect@#is': (m.Scope scope, target) => () => target is Rect,
    'dart:ui@Rect@left': (m.Scope scope, Rect target) => target.left,
    'dart:ui@Rect@top': (m.Scope scope, Rect target) => target.top,
    'dart:ui@Rect@right': (m.Scope scope, Rect target) => target.right,
    'dart:ui@Rect@bottom': (m.Scope scope, Rect target) => target.bottom,
    'dart:ui@Rect@zero': (m.Scope scope) => Rect.zero,
    'dart:ui@Rect@largest': (m.Scope scope) => Rect.largest,
    'dart:ui@Rect@width': (m.Scope scope, Rect target) => target.width,
    'dart:ui@Rect@height': (m.Scope scope, Rect target) => target.height,
    'dart:ui@Rect@size': (m.Scope scope, Rect target) => target.size,
    'dart:ui@Rect@hasNaN': (m.Scope scope, Rect target) => target.hasNaN,
    'dart:ui@Rect@isInfinite': (m.Scope scope, Rect target) =>
        target.isInfinite,
    'dart:ui@Rect@isFinite': (m.Scope scope, Rect target) => target.isFinite,
    'dart:ui@Rect@isEmpty': (m.Scope scope, Rect target) => target.isEmpty,
    'dart:ui@Rect@shortestSide': (m.Scope scope, Rect target) =>
        target.shortestSide,
    'dart:ui@Rect@longestSide': (m.Scope scope, Rect target) =>
        target.longestSide,
    'dart:ui@Rect@topLeft': (m.Scope scope, Rect target) => target.topLeft,
    'dart:ui@Rect@topCenter': (m.Scope scope, Rect target) => target.topCenter,
    'dart:ui@Rect@topRight': (m.Scope scope, Rect target) => target.topRight,
    'dart:ui@Rect@centerLeft': (m.Scope scope, Rect target) =>
        target.centerLeft,
    'dart:ui@Rect@center': (m.Scope scope, Rect target) => target.center,
    'dart:ui@Rect@centerRight': (m.Scope scope, Rect target) =>
        target.centerRight,
    'dart:ui@Rect@bottomLeft': (m.Scope scope, Rect target) =>
        target.bottomLeft,
    'dart:ui@Rect@bottomCenter': (m.Scope scope, Rect target) =>
        target.bottomCenter,
    'dart:ui@Rect@bottomRight': (m.Scope scope, Rect target) =>
        target.bottomRight,
    'dart:ui@Rect@hashCode': (m.Scope scope, Rect target) => target.hashCode,
    'dart:ui@Rect@fromLTRB': (m.Scope scope) => Rect.fromLTRB,
    'dart:ui@Rect@fromLTWH': (m.Scope scope) => Rect.fromLTWH,
    'dart:ui@Rect@fromCircle': (m.Scope scope) => Rect.fromCircle,
    'dart:ui@Rect@fromCenter': (m.Scope scope) => Rect.fromCenter,
    'dart:ui@Rect@fromPoints': (m.Scope scope) => Rect.fromPoints,
    'dart:ui@Rect@shift': (m.Scope scope, Rect target) => target.shift,
    'dart:ui@Rect@translate': (m.Scope scope, Rect target) => target.translate,
    'dart:ui@Rect@inflate': (m.Scope scope, Rect target) => target.inflate,
    'dart:ui@Rect@deflate': (m.Scope scope, Rect target) => target.deflate,
    'dart:ui@Rect@intersect': (m.Scope scope, Rect target) => target.intersect,
    'dart:ui@Rect@expandToInclude': (m.Scope scope, Rect target) =>
        target.expandToInclude,
    'dart:ui@Rect@overlaps': (m.Scope scope, Rect target) => target.overlaps,
    'dart:ui@Rect@contains': (m.Scope scope, Rect target) => target.contains,
    'dart:ui@Rect@lerp': (m.Scope scope) => Rect.lerp,
    'dart:ui@Rect@==': (m.Scope scope, Rect target) =>
        (other) => target == other,
    'dart:ui@Rect@toString': (m.Scope scope, Rect target) => target.toString,
    'dart:ui@Radius@#as': (m.Scope scope, target) => () => target as Radius,
    'dart:ui@Radius@#is': (m.Scope scope, target) => () => target is Radius,
    'dart:ui@Radius@x': (m.Scope scope, Radius target) => target.x,
    'dart:ui@Radius@y': (m.Scope scope, Radius target) => target.y,
    'dart:ui@Radius@zero': (m.Scope scope) => Radius.zero,
    'dart:ui@Radius@hashCode': (m.Scope scope, Radius target) =>
        target.hashCode,
    'dart:ui@Radius@circular': (m.Scope scope) => Radius.circular,
    'dart:ui@Radius@elliptical': (m.Scope scope) => Radius.elliptical,
    'dart:ui@Radius@clamp': (m.Scope scope, Radius target) => target.clamp,
    'dart:ui@Radius@clampValues': (m.Scope scope, Radius target) =>
        target.clampValues,
    'dart:ui@Radius@unary-': (m.Scope scope, Radius target) => () => -target,
    'dart:ui@Radius@-': (m.Scope scope, Radius target) =>
        (other) => target - other,
    'dart:ui@Radius@+': (m.Scope scope, Radius target) =>
        (other) => target + other,
    'dart:ui@Radius@*': (m.Scope scope, Radius target) =>
        (other) => target * other,
    'dart:ui@Radius@/': (m.Scope scope, Radius target) =>
        (other) => target / other,
    'dart:ui@Radius@~/': (m.Scope scope, Radius target) =>
        (other) => target ~/ other,
    'dart:ui@Radius@%': (m.Scope scope, Radius target) =>
        (other) => target % other,
    'dart:ui@Radius@lerp': (m.Scope scope) => Radius.lerp,
    'dart:ui@Radius@==': (m.Scope scope, Radius target) =>
        (other) => target == other,
    'dart:ui@Radius@toString': (m.Scope scope, Radius target) =>
        target.toString,
    'dart:ui@RRect@#as': (m.Scope scope, target) => () => target as RRect,
    'dart:ui@RRect@#is': (m.Scope scope, target) => () => target is RRect,
    'dart:ui@RRect@left': (m.Scope scope, RRect target) => target.left,
    'dart:ui@RRect@top': (m.Scope scope, RRect target) => target.top,
    'dart:ui@RRect@right': (m.Scope scope, RRect target) => target.right,
    'dart:ui@RRect@bottom': (m.Scope scope, RRect target) => target.bottom,
    'dart:ui@RRect@tlRadiusX': (m.Scope scope, RRect target) =>
        target.tlRadiusX,
    'dart:ui@RRect@tlRadiusY': (m.Scope scope, RRect target) =>
        target.tlRadiusY,
    'dart:ui@RRect@trRadiusX': (m.Scope scope, RRect target) =>
        target.trRadiusX,
    'dart:ui@RRect@trRadiusY': (m.Scope scope, RRect target) =>
        target.trRadiusY,
    'dart:ui@RRect@brRadiusX': (m.Scope scope, RRect target) =>
        target.brRadiusX,
    'dart:ui@RRect@brRadiusY': (m.Scope scope, RRect target) =>
        target.brRadiusY,
    'dart:ui@RRect@blRadiusX': (m.Scope scope, RRect target) =>
        target.blRadiusX,
    'dart:ui@RRect@blRadiusY': (m.Scope scope, RRect target) =>
        target.blRadiusY,
    'dart:ui@RRect@zero': (m.Scope scope) => RRect.zero,
    'dart:ui@RRect@tlRadius': (m.Scope scope, RRect target) => target.tlRadius,
    'dart:ui@RRect@trRadius': (m.Scope scope, RRect target) => target.trRadius,
    'dart:ui@RRect@brRadius': (m.Scope scope, RRect target) => target.brRadius,
    'dart:ui@RRect@blRadius': (m.Scope scope, RRect target) => target.blRadius,
    'dart:ui@RRect@width': (m.Scope scope, RRect target) => target.width,
    'dart:ui@RRect@height': (m.Scope scope, RRect target) => target.height,
    'dart:ui@RRect@outerRect': (m.Scope scope, RRect target) =>
        target.outerRect,
    'dart:ui@RRect@safeInnerRect': (m.Scope scope, RRect target) =>
        target.safeInnerRect,
    'dart:ui@RRect@middleRect': (m.Scope scope, RRect target) =>
        target.middleRect,
    'dart:ui@RRect@wideMiddleRect': (m.Scope scope, RRect target) =>
        target.wideMiddleRect,
    'dart:ui@RRect@tallMiddleRect': (m.Scope scope, RRect target) =>
        target.tallMiddleRect,
    'dart:ui@RRect@isEmpty': (m.Scope scope, RRect target) => target.isEmpty,
    'dart:ui@RRect@isFinite': (m.Scope scope, RRect target) => target.isFinite,
    'dart:ui@RRect@isRect': (m.Scope scope, RRect target) => target.isRect,
    'dart:ui@RRect@isStadium': (m.Scope scope, RRect target) =>
        target.isStadium,
    'dart:ui@RRect@isEllipse': (m.Scope scope, RRect target) =>
        target.isEllipse,
    'dart:ui@RRect@isCircle': (m.Scope scope, RRect target) => target.isCircle,
    'dart:ui@RRect@shortestSide': (m.Scope scope, RRect target) =>
        target.shortestSide,
    'dart:ui@RRect@longestSide': (m.Scope scope, RRect target) =>
        target.longestSide,
    'dart:ui@RRect@hasNaN': (m.Scope scope, RRect target) => target.hasNaN,
    'dart:ui@RRect@center': (m.Scope scope, RRect target) => target.center,
    'dart:ui@RRect@hashCode': (m.Scope scope, RRect target) => target.hashCode,
    'dart:ui@RRect@fromLTRBXY': (m.Scope scope) => RRect.fromLTRBXY,
    'dart:ui@RRect@fromLTRBR': (m.Scope scope) => RRect.fromLTRBR,
    'dart:ui@RRect@fromRectXY': (m.Scope scope) => RRect.fromRectXY,
    'dart:ui@RRect@fromRectAndRadius': (m.Scope scope) =>
        RRect.fromRectAndRadius,
    'dart:ui@RRect@fromLTRBAndCorners': (m.Scope scope) =>
        RRect.fromLTRBAndCorners,
    'dart:ui@RRect@fromRectAndCorners': (m.Scope scope) =>
        RRect.fromRectAndCorners,
    'dart:ui@RRect@shift': (m.Scope scope, RRect target) => target.shift,
    'dart:ui@RRect@inflate': (m.Scope scope, RRect target) => target.inflate,
    'dart:ui@RRect@deflate': (m.Scope scope, RRect target) => target.deflate,
    'dart:ui@RRect@scaleRadii': (m.Scope scope, RRect target) =>
        target.scaleRadii,
    'dart:ui@RRect@contains': (m.Scope scope, RRect target) => target.contains,
    'dart:ui@RRect@lerp': (m.Scope scope) => RRect.lerp,
    'dart:ui@RRect@==': (m.Scope scope, RRect target) =>
        (other) => target == other,
    'dart:ui@RRect@toString': (m.Scope scope, RRect target) => target.toString,
    'dart:ui@RSTransform@#as': (m.Scope scope, target) =>
        () => target as RSTransform,
    'dart:ui@RSTransform@#is': (m.Scope scope, target) =>
        () => target is RSTransform,
    'dart:ui@RSTransform@scos': (m.Scope scope, RSTransform target) =>
        target.scos,
    'dart:ui@RSTransform@ssin': (m.Scope scope, RSTransform target) =>
        target.ssin,
    'dart:ui@RSTransform@tx': (m.Scope scope, RSTransform target) => target.tx,
    'dart:ui@RSTransform@ty': (m.Scope scope, RSTransform target) => target.ty,
    'dart:ui@RSTransform@': (m.Scope scope) => (scos, ssin, tx, ty) {
          return RSTransform(scos, ssin, tx, ty);
        },
    'dart:ui@RSTransform@fromComponents': (m.Scope scope) =>
        RSTransform.fromComponents,
    'dart:ui@IsolateNameServer@#as': (m.Scope scope, target) =>
        () => target as IsolateNameServer,
    'dart:ui@IsolateNameServer@#is': (m.Scope scope, target) =>
        () => target is IsolateNameServer,
    'dart:ui@IsolateNameServer@lookupPortByName': (m.Scope scope) =>
        IsolateNameServer.lookupPortByName,
    'dart:ui@IsolateNameServer@registerPortWithName': (m.Scope scope) =>
        IsolateNameServer.registerPortWithName,
    'dart:ui@IsolateNameServer@removePortNameMapping': (m.Scope scope) =>
        IsolateNameServer.removePortNameMapping,
    'dart:ui@KeyData@#as': (m.Scope scope, target) => () => target as KeyData,
    'dart:ui@KeyData@#is': (m.Scope scope, target) => () => target is KeyData,
    'dart:ui@KeyData@timeStamp': (m.Scope scope, KeyData target) =>
        target.timeStamp,
    'dart:ui@KeyData@type': (m.Scope scope, KeyData target) => target.type,
    'dart:ui@KeyData@physical': (m.Scope scope, KeyData target) =>
        target.physical,
    'dart:ui@KeyData@logical': (m.Scope scope, KeyData target) =>
        target.logical,
    'dart:ui@KeyData@character': (m.Scope scope, KeyData target) =>
        target.character,
    'dart:ui@KeyData@synthesized': (m.Scope scope, KeyData target) =>
        target.synthesized,
    'dart:ui@KeyData@': (m.Scope scope) =>
        ({character, logical, physical, synthesized, timeStamp, type}) {
          return KeyData(
              character: character,
              logical: logical,
              physical: physical,
              synthesized: synthesized,
              timeStamp: timeStamp,
              type: type);
        },
    'dart:ui@KeyData@toString': (m.Scope scope, KeyData target) =>
        target.toString,
    'dart:ui@KeyData@toStringFull': (m.Scope scope, KeyData target) =>
        target.toStringFull,
    'dart:ui@@lerpDouble': (m.Scope scope) => lerpDouble,
    'dart:ui@@clampDouble': (m.Scope scope) => clampDouble,
    'dart:ui@DartPluginRegistrant@#as': (m.Scope scope, target) =>
        () => target as DartPluginRegistrant,
    'dart:ui@DartPluginRegistrant@#is': (m.Scope scope, target) =>
        () => target is DartPluginRegistrant,
    'dart:ui@DartPluginRegistrant@ensureInitialized': (m.Scope scope) =>
        DartPluginRegistrant.ensureInitialized,
    'dart:ui@@saveCompilationTrace': (m.Scope scope) => saveCompilationTrace,
    'dart:ui@Color@#as': (m.Scope scope, target) => () => target as Color,
    'dart:ui@Color@#is': (m.Scope scope, target) => () => target is Color,
    'dart:ui@Color@value': (m.Scope scope, Color target) => target.value,
    'dart:ui@Color@alpha': (m.Scope scope, Color target) => target.alpha,
    'dart:ui@Color@opacity': (m.Scope scope, Color target) => target.opacity,
    'dart:ui@Color@red': (m.Scope scope, Color target) => target.red,
    'dart:ui@Color@green': (m.Scope scope, Color target) => target.green,
    'dart:ui@Color@blue': (m.Scope scope, Color target) => target.blue,
    'dart:ui@Color@hashCode': (m.Scope scope, Color target) => target.hashCode,
    'dart:ui@Color@': (m.Scope scope) => (value) {
          return Color(value);
        },
    'dart:ui@Color@fromARGB': (m.Scope scope) => Color.fromARGB,
    'dart:ui@Color@fromRGBO': (m.Scope scope) => Color.fromRGBO,
    'dart:ui@Color@withAlpha': (m.Scope scope, Color target) =>
        target.withAlpha,
    'dart:ui@Color@withOpacity': (m.Scope scope, Color target) =>
        target.withOpacity,
    'dart:ui@Color@withRed': (m.Scope scope, Color target) => target.withRed,
    'dart:ui@Color@withGreen': (m.Scope scope, Color target) =>
        target.withGreen,
    'dart:ui@Color@withBlue': (m.Scope scope, Color target) => target.withBlue,
    'dart:ui@Color@computeLuminance': (m.Scope scope, Color target) =>
        target.computeLuminance,
    'dart:ui@Color@lerp': (m.Scope scope) => Color.lerp,
    'dart:ui@Color@alphaBlend': (m.Scope scope) => Color.alphaBlend,
    'dart:ui@Color@getAlphaFromOpacity': (m.Scope scope) =>
        Color.getAlphaFromOpacity,
    'dart:ui@Color@==': (m.Scope scope, Color target) =>
        (other) => target == other,
    'dart:ui@Color@toString': (m.Scope scope, Color target) => target.toString,
    'dart:ui@Paint@#as': (m.Scope scope, target) => () => target as Paint,
    'dart:ui@Paint@#is': (m.Scope scope, target) => () => target is Paint,
    'dart:ui@Paint@enableDithering': (m.Scope scope) => Paint.enableDithering,
    'dart:ui@Paint@enableDithering:set': (m.Scope scope) =>
        (other) => Paint.enableDithering = other,
    'dart:ui@Paint@isAntiAlias': (m.Scope scope, Paint target) =>
        target.isAntiAlias,
    'dart:ui@Paint@isAntiAlias:set': (m.Scope scope, Paint target) =>
        (other) => target.isAntiAlias = other,
    'dart:ui@Paint@color': (m.Scope scope, Paint target) => target.color,
    'dart:ui@Paint@color:set': (m.Scope scope, Paint target) =>
        (other) => target.color = other,
    'dart:ui@Paint@blendMode': (m.Scope scope, Paint target) =>
        target.blendMode,
    'dart:ui@Paint@blendMode:set': (m.Scope scope, Paint target) =>
        (other) => target.blendMode = other,
    'dart:ui@Paint@style': (m.Scope scope, Paint target) => target.style,
    'dart:ui@Paint@style:set': (m.Scope scope, Paint target) =>
        (other) => target.style = other,
    'dart:ui@Paint@strokeWidth': (m.Scope scope, Paint target) =>
        target.strokeWidth,
    'dart:ui@Paint@strokeWidth:set': (m.Scope scope, Paint target) =>
        (other) => target.strokeWidth = other,
    'dart:ui@Paint@strokeCap': (m.Scope scope, Paint target) =>
        target.strokeCap,
    'dart:ui@Paint@strokeCap:set': (m.Scope scope, Paint target) =>
        (other) => target.strokeCap = other,
    'dart:ui@Paint@strokeJoin': (m.Scope scope, Paint target) =>
        target.strokeJoin,
    'dart:ui@Paint@strokeJoin:set': (m.Scope scope, Paint target) =>
        (other) => target.strokeJoin = other,
    'dart:ui@Paint@strokeMiterLimit': (m.Scope scope, Paint target) =>
        target.strokeMiterLimit,
    'dart:ui@Paint@strokeMiterLimit:set': (m.Scope scope, Paint target) =>
        (other) => target.strokeMiterLimit = other,
    'dart:ui@Paint@maskFilter': (m.Scope scope, Paint target) =>
        target.maskFilter,
    'dart:ui@Paint@maskFilter:set': (m.Scope scope, Paint target) =>
        (other) => target.maskFilter = other,
    'dart:ui@Paint@filterQuality': (m.Scope scope, Paint target) =>
        target.filterQuality,
    'dart:ui@Paint@filterQuality:set': (m.Scope scope, Paint target) =>
        (other) => target.filterQuality = other,
    'dart:ui@Paint@shader': (m.Scope scope, Paint target) => target.shader,
    'dart:ui@Paint@shader:set': (m.Scope scope, Paint target) =>
        (other) => target.shader = other,
    'dart:ui@Paint@colorFilter': (m.Scope scope, Paint target) =>
        target.colorFilter,
    'dart:ui@Paint@colorFilter:set': (m.Scope scope, Paint target) =>
        (other) => target.colorFilter = other,
    'dart:ui@Paint@imageFilter': (m.Scope scope, Paint target) =>
        target.imageFilter,
    'dart:ui@Paint@imageFilter:set': (m.Scope scope, Paint target) =>
        (other) => target.imageFilter = other,
    'dart:ui@Paint@invertColors': (m.Scope scope, Paint target) =>
        target.invertColors,
    'dart:ui@Paint@invertColors:set': (m.Scope scope, Paint target) =>
        (other) => target.invertColors = other,
    'dart:ui@Paint@': (m.Scope scope) => () {
          return Paint();
        },
    'dart:ui@Paint@toString': (m.Scope scope, Paint target) => target.toString,
    'dart:ui@Image@#as': (m.Scope scope, target) => () => target as Image,
    'dart:ui@Image@#is': (m.Scope scope, target) => () => target is Image,
    'dart:ui@Image@onCreate': (m.Scope scope) => Image.onCreate,
    'dart:ui@Image@onCreate:set': (m.Scope scope) =>
        (other) => Image.onCreate = other,
    'dart:ui@Image@onDispose': (m.Scope scope) => Image.onDispose,
    'dart:ui@Image@onDispose:set': (m.Scope scope) =>
        (other) => Image.onDispose = other,
    'dart:ui@Image@width': (m.Scope scope, Image target) => target.width,
    'dart:ui@Image@height': (m.Scope scope, Image target) => target.height,
    'dart:ui@Image@debugDisposed': (m.Scope scope, Image target) =>
        target.debugDisposed,
    'dart:ui@Image@colorSpace': (m.Scope scope, Image target) =>
        target.colorSpace,
    'dart:ui@Image@dispose': (m.Scope scope, Image target) => target.dispose,
    'dart:ui@Image@toByteData': (m.Scope scope, Image target) =>
        target.toByteData,
    'dart:ui@Image@debugGetOpenHandleStackTraces':
        (m.Scope scope, Image target) => target.debugGetOpenHandleStackTraces,
    'dart:ui@Image@clone': (m.Scope scope, Image target) => target.clone,
    'dart:ui@Image@isCloneOf': (m.Scope scope, Image target) =>
        target.isCloneOf,
    'dart:ui@Image@toString': (m.Scope scope, Image target) => target.toString,
    'dart:ui@FrameInfo@#as': (m.Scope scope, target) =>
        () => target as FrameInfo,
    'dart:ui@FrameInfo@#is': (m.Scope scope, target) =>
        () => target is FrameInfo,
    'dart:ui@FrameInfo@duration': (m.Scope scope, FrameInfo target) =>
        target.duration,
    'dart:ui@FrameInfo@image': (m.Scope scope, FrameInfo target) =>
        target.image,
    'dart:ui@Codec@#as': (m.Scope scope, target) => () => target as Codec,
    'dart:ui@Codec@#is': (m.Scope scope, target) => () => target is Codec,
    'dart:ui@Codec@frameCount': (m.Scope scope, Codec target) =>
        target.frameCount,
    'dart:ui@Codec@repetitionCount': (m.Scope scope, Codec target) =>
        target.repetitionCount,
    'dart:ui@Codec@getNextFrame': (m.Scope scope, Codec target) =>
        target.getNextFrame,
    'dart:ui@Codec@dispose': (m.Scope scope, Codec target) => target.dispose,
    'dart:ui@TargetImageSize@#as': (m.Scope scope, target) =>
        () => target as TargetImageSize,
    'dart:ui@TargetImageSize@#is': (m.Scope scope, target) =>
        () => target is TargetImageSize,
    'dart:ui@TargetImageSize@width': (m.Scope scope, TargetImageSize target) =>
        target.width,
    'dart:ui@TargetImageSize@height': (m.Scope scope, TargetImageSize target) =>
        target.height,
    'dart:ui@TargetImageSize@': (m.Scope scope) => ({height, width}) {
          return TargetImageSize(height: height, width: width);
        },
    'dart:ui@TargetImageSize@toString':
        (m.Scope scope, TargetImageSize target) => target.toString,
    'dart:ui@EngineLayer@#as': (m.Scope scope, target) =>
        () => target as EngineLayer,
    'dart:ui@EngineLayer@#is': (m.Scope scope, target) =>
        () => target is EngineLayer,
    'dart:ui@EngineLayer@dispose': (m.Scope scope, EngineLayer target) =>
        target.dispose,
    'dart:ui@Path@#as': (m.Scope scope, target) => () => target as Path,
    'dart:ui@Path@#is': (m.Scope scope, target) => () => target is Path,
    'dart:ui@Path@fillType': (m.Scope scope, Path target) => target.fillType,
    'dart:ui@Path@fillType:set': (m.Scope scope, Path target) =>
        (other) => target.fillType = other,
    'dart:ui@Path@': (m.Scope scope) => () {
          return Path();
        },
    'dart:ui@Path@from': (m.Scope scope) => Path.from,
    'dart:ui@Path@moveTo': (m.Scope scope, Path target) => target.moveTo,
    'dart:ui@Path@relativeMoveTo': (m.Scope scope, Path target) =>
        target.relativeMoveTo,
    'dart:ui@Path@lineTo': (m.Scope scope, Path target) => target.lineTo,
    'dart:ui@Path@relativeLineTo': (m.Scope scope, Path target) =>
        target.relativeLineTo,
    'dart:ui@Path@quadraticBezierTo': (m.Scope scope, Path target) =>
        target.quadraticBezierTo,
    'dart:ui@Path@relativeQuadraticBezierTo': (m.Scope scope, Path target) =>
        target.relativeQuadraticBezierTo,
    'dart:ui@Path@cubicTo': (m.Scope scope, Path target) => target.cubicTo,
    'dart:ui@Path@relativeCubicTo': (m.Scope scope, Path target) =>
        target.relativeCubicTo,
    'dart:ui@Path@conicTo': (m.Scope scope, Path target) => target.conicTo,
    'dart:ui@Path@relativeConicTo': (m.Scope scope, Path target) =>
        target.relativeConicTo,
    'dart:ui@Path@arcTo': (m.Scope scope, Path target) => target.arcTo,
    'dart:ui@Path@arcToPoint': (m.Scope scope, Path target) =>
        target.arcToPoint,
    'dart:ui@Path@relativeArcToPoint': (m.Scope scope, Path target) =>
        target.relativeArcToPoint,
    'dart:ui@Path@addRect': (m.Scope scope, Path target) => target.addRect,
    'dart:ui@Path@addOval': (m.Scope scope, Path target) => target.addOval,
    'dart:ui@Path@addArc': (m.Scope scope, Path target) => target.addArc,
    'dart:ui@Path@addPolygon': (m.Scope scope, Path target) =>
        target.addPolygon,
    'dart:ui@Path@addRRect': (m.Scope scope, Path target) => target.addRRect,
    'dart:ui@Path@addPath': (m.Scope scope, Path target) => target.addPath,
    'dart:ui@Path@extendWithPath': (m.Scope scope, Path target) =>
        target.extendWithPath,
    'dart:ui@Path@close': (m.Scope scope, Path target) => target.close,
    'dart:ui@Path@reset': (m.Scope scope, Path target) => target.reset,
    'dart:ui@Path@contains': (m.Scope scope, Path target) => target.contains,
    'dart:ui@Path@shift': (m.Scope scope, Path target) => target.shift,
    'dart:ui@Path@transform': (m.Scope scope, Path target) => target.transform,
    'dart:ui@Path@getBounds': (m.Scope scope, Path target) => target.getBounds,
    'dart:ui@Path@combine': (m.Scope scope) => Path.combine,
    'dart:ui@Path@computeMetrics': (m.Scope scope, Path target) =>
        target.computeMetrics,
    'dart:ui@Tangent@#as': (m.Scope scope, target) => () => target as Tangent,
    'dart:ui@Tangent@#is': (m.Scope scope, target) => () => target is Tangent,
    'dart:ui@Tangent@position': (m.Scope scope, Tangent target) =>
        target.position,
    'dart:ui@Tangent@vector': (m.Scope scope, Tangent target) => target.vector,
    'dart:ui@Tangent@angle': (m.Scope scope, Tangent target) => target.angle,
    'dart:ui@Tangent@': (m.Scope scope) => (position, vector) {
          return Tangent(position, vector);
        },
    'dart:ui@Tangent@fromAngle': (m.Scope scope) => Tangent.fromAngle,
    'dart:ui@PathMetrics@#as': (m.Scope scope, target) =>
        () => target as PathMetrics,
    'dart:ui@PathMetrics@#is': (m.Scope scope, target) =>
        () => target is PathMetrics,
    'dart:ui@PathMetrics@iterator': (m.Scope scope, PathMetrics target) =>
        target.iterator,
    'dart:ui@PathMetricIterator@#as': (m.Scope scope, target) =>
        () => target as PathMetricIterator,
    'dart:ui@PathMetricIterator@#is': (m.Scope scope, target) =>
        () => target is PathMetricIterator,
    'dart:ui@PathMetricIterator@current':
        (m.Scope scope, PathMetricIterator target) => target.current,
    'dart:ui@PathMetricIterator@moveNext':
        (m.Scope scope, PathMetricIterator target) => target.moveNext,
    'dart:ui@PathMetric@#as': (m.Scope scope, target) =>
        () => target as PathMetric,
    'dart:ui@PathMetric@#is': (m.Scope scope, target) =>
        () => target is PathMetric,
    'dart:ui@PathMetric@length': (m.Scope scope, PathMetric target) =>
        target.length,
    'dart:ui@PathMetric@isClosed': (m.Scope scope, PathMetric target) =>
        target.isClosed,
    'dart:ui@PathMetric@contourIndex': (m.Scope scope, PathMetric target) =>
        target.contourIndex,
    'dart:ui@PathMetric@getTangentForOffset':
        (m.Scope scope, PathMetric target) => target.getTangentForOffset,
    'dart:ui@PathMetric@extractPath': (m.Scope scope, PathMetric target) =>
        target.extractPath,
    'dart:ui@PathMetric@toString': (m.Scope scope, PathMetric target) =>
        target.toString,
    'dart:ui@MaskFilter@#as': (m.Scope scope, target) =>
        () => target as MaskFilter,
    'dart:ui@MaskFilter@#is': (m.Scope scope, target) =>
        () => target is MaskFilter,
    'dart:ui@MaskFilter@hashCode': (m.Scope scope, MaskFilter target) =>
        target.hashCode,
    'dart:ui@MaskFilter@blur': (m.Scope scope) => MaskFilter.blur,
    'dart:ui@MaskFilter@==': (m.Scope scope, MaskFilter target) =>
        (other) => target == other,
    'dart:ui@MaskFilter@toString': (m.Scope scope, MaskFilter target) =>
        target.toString,
    'dart:ui@ColorFilter@#as': (m.Scope scope, target) =>
        () => target as ColorFilter,
    'dart:ui@ColorFilter@#is': (m.Scope scope, target) =>
        () => target is ColorFilter,
    'dart:ui@ColorFilter@hashCode': (m.Scope scope, ColorFilter target) =>
        target.hashCode,
    'dart:ui@ColorFilter@mode': (m.Scope scope) => ColorFilter.mode,
    'dart:ui@ColorFilter@matrix': (m.Scope scope) => ColorFilter.matrix,
    'dart:ui@ColorFilter@linearToSrgbGamma': (m.Scope scope) =>
        ColorFilter.linearToSrgbGamma,
    'dart:ui@ColorFilter@srgbToLinearGamma': (m.Scope scope) =>
        ColorFilter.srgbToLinearGamma,
    'dart:ui@ColorFilter@==': (m.Scope scope, ColorFilter target) =>
        (other) => target == other,
    'dart:ui@ColorFilter@toString': (m.Scope scope, ColorFilter target) =>
        target.toString,
    'dart:ui@ImageFilter@#as': (m.Scope scope, target) =>
        () => target as ImageFilter,
    'dart:ui@ImageFilter@#is': (m.Scope scope, target) =>
        () => target is ImageFilter,
    'dart:ui@ImageFilter@blur': (m.Scope scope) => ImageFilter.blur,
    'dart:ui@ImageFilter@dilate': (m.Scope scope) => ImageFilter.dilate,
    'dart:ui@ImageFilter@erode': (m.Scope scope) => ImageFilter.erode,
    'dart:ui@ImageFilter@matrix': (m.Scope scope) => ImageFilter.matrix,
    'dart:ui@ImageFilter@compose': (m.Scope scope) => ImageFilter.compose,
    'dart:ui@Shader@#as': (m.Scope scope, target) => () => target as Shader,
    'dart:ui@Shader@#is': (m.Scope scope, target) => () => target is Shader,
    'dart:ui@Shader@debugDisposed': (m.Scope scope, Shader target) =>
        target.debugDisposed,
    'dart:ui@Shader@dispose': (m.Scope scope, Shader target) => target.dispose,
    'dart:ui@Gradient@#as': (m.Scope scope, target) => () => target as Gradient,
    'dart:ui@Gradient@#is': (m.Scope scope, target) => () => target is Gradient,
    'dart:ui@Gradient@linear': (m.Scope scope) => Gradient.linear,
    'dart:ui@Gradient@radial': (m.Scope scope) => Gradient.radial,
    'dart:ui@Gradient@sweep': (m.Scope scope) => Gradient.sweep,
    'dart:ui@ImageShader@#as': (m.Scope scope, target) =>
        () => target as ImageShader,
    'dart:ui@ImageShader@#is': (m.Scope scope, target) =>
        () => target is ImageShader,
    'dart:ui@ImageShader@': (m.Scope scope) =>
        (image, tmx, tmy, matrix4, {filterQuality}) {
          return ImageShader(image, tmx, tmy, matrix4,
              filterQuality: filterQuality);
        },
    'dart:ui@ImageShader@dispose': (m.Scope scope, ImageShader target) =>
        target.dispose,
    'dart:ui@FragmentProgram@#as': (m.Scope scope, target) =>
        () => target as FragmentProgram,
    'dart:ui@FragmentProgram@#is': (m.Scope scope, target) =>
        () => target is FragmentProgram,
    'dart:ui@FragmentProgram@fromAsset': (m.Scope scope) =>
        FragmentProgram.fromAsset,
    'dart:ui@FragmentProgram@fragmentShader':
        (m.Scope scope, FragmentProgram target) => target.fragmentShader,
    'dart:ui@FragmentShader@#as': (m.Scope scope, target) =>
        () => target as FragmentShader,
    'dart:ui@FragmentShader@#is': (m.Scope scope, target) =>
        () => target is FragmentShader,
    'dart:ui@FragmentShader@setFloat': (m.Scope scope, FragmentShader target) =>
        target.setFloat,
    'dart:ui@FragmentShader@setImageSampler':
        (m.Scope scope, FragmentShader target) => target.setImageSampler,
    'dart:ui@FragmentShader@dispose': (m.Scope scope, FragmentShader target) =>
        target.dispose,
    'dart:ui@Vertices@#as': (m.Scope scope, target) => () => target as Vertices,
    'dart:ui@Vertices@#is': (m.Scope scope, target) => () => target is Vertices,
    'dart:ui@Vertices@debugDisposed': (m.Scope scope, Vertices target) =>
        target.debugDisposed,
    'dart:ui@Vertices@': (m.Scope scope) =>
        (mode, positions, {colors, indices, textureCoordinates}) {
          return Vertices(mode, positions,
              colors: colors,
              indices: indices,
              textureCoordinates: textureCoordinates);
        },
    'dart:ui@Vertices@raw': (m.Scope scope) => Vertices.raw,
    'dart:ui@Vertices@dispose': (m.Scope scope, Vertices target) =>
        target.dispose,
    'dart:ui@Canvas@#as': (m.Scope scope, target) => () => target as Canvas,
    'dart:ui@Canvas@#is': (m.Scope scope, target) => () => target is Canvas,
    'dart:ui@Canvas@': (m.Scope scope) => (recorder, [Rect? cullRect]) {
          if (cullRect == null) {
            return Canvas(recorder);
          }
          return Canvas(recorder, cullRect!);
        },
    'dart:ui@Canvas@save': (m.Scope scope, Canvas target) => target.save,
    'dart:ui@Canvas@saveLayer': (m.Scope scope, Canvas target) =>
        target.saveLayer,
    'dart:ui@Canvas@restore': (m.Scope scope, Canvas target) => target.restore,
    'dart:ui@Canvas@restoreToCount': (m.Scope scope, Canvas target) =>
        target.restoreToCount,
    'dart:ui@Canvas@getSaveCount': (m.Scope scope, Canvas target) =>
        target.getSaveCount,
    'dart:ui@Canvas@translate': (m.Scope scope, Canvas target) =>
        target.translate,
    'dart:ui@Canvas@scale': (m.Scope scope, Canvas target) => target.scale,
    'dart:ui@Canvas@rotate': (m.Scope scope, Canvas target) => target.rotate,
    'dart:ui@Canvas@skew': (m.Scope scope, Canvas target) => target.skew,
    'dart:ui@Canvas@transform': (m.Scope scope, Canvas target) =>
        target.transform,
    'dart:ui@Canvas@getTransform': (m.Scope scope, Canvas target) =>
        target.getTransform,
    'dart:ui@Canvas@clipRect': (m.Scope scope, Canvas target) =>
        target.clipRect,
    'dart:ui@Canvas@clipRRect': (m.Scope scope, Canvas target) =>
        target.clipRRect,
    'dart:ui@Canvas@clipPath': (m.Scope scope, Canvas target) =>
        target.clipPath,
    'dart:ui@Canvas@getLocalClipBounds': (m.Scope scope, Canvas target) =>
        target.getLocalClipBounds,
    'dart:ui@Canvas@getDestinationClipBounds': (m.Scope scope, Canvas target) =>
        target.getDestinationClipBounds,
    'dart:ui@Canvas@drawColor': (m.Scope scope, Canvas target) =>
        target.drawColor,
    'dart:ui@Canvas@drawLine': (m.Scope scope, Canvas target) =>
        target.drawLine,
    'dart:ui@Canvas@drawPaint': (m.Scope scope, Canvas target) =>
        target.drawPaint,
    'dart:ui@Canvas@drawRect': (m.Scope scope, Canvas target) =>
        target.drawRect,
    'dart:ui@Canvas@drawRRect': (m.Scope scope, Canvas target) =>
        target.drawRRect,
    'dart:ui@Canvas@drawDRRect': (m.Scope scope, Canvas target) =>
        target.drawDRRect,
    'dart:ui@Canvas@drawOval': (m.Scope scope, Canvas target) =>
        target.drawOval,
    'dart:ui@Canvas@drawCircle': (m.Scope scope, Canvas target) =>
        target.drawCircle,
    'dart:ui@Canvas@drawArc': (m.Scope scope, Canvas target) => target.drawArc,
    'dart:ui@Canvas@drawPath': (m.Scope scope, Canvas target) =>
        target.drawPath,
    'dart:ui@Canvas@drawImage': (m.Scope scope, Canvas target) =>
        target.drawImage,
    'dart:ui@Canvas@drawImageRect': (m.Scope scope, Canvas target) =>
        target.drawImageRect,
    'dart:ui@Canvas@drawImageNine': (m.Scope scope, Canvas target) =>
        target.drawImageNine,
    'dart:ui@Canvas@drawPicture': (m.Scope scope, Canvas target) =>
        target.drawPicture,
    'dart:ui@Canvas@drawParagraph': (m.Scope scope, Canvas target) =>
        target.drawParagraph,
    'dart:ui@Canvas@drawPoints': (m.Scope scope, Canvas target) =>
        target.drawPoints,
    'dart:ui@Canvas@drawRawPoints': (m.Scope scope, Canvas target) =>
        target.drawRawPoints,
    'dart:ui@Canvas@drawVertices': (m.Scope scope, Canvas target) =>
        target.drawVertices,
    'dart:ui@Canvas@drawAtlas': (m.Scope scope, Canvas target) =>
        target.drawAtlas,
    'dart:ui@Canvas@drawRawAtlas': (m.Scope scope, Canvas target) =>
        target.drawRawAtlas,
    'dart:ui@Canvas@drawShadow': (m.Scope scope, Canvas target) =>
        target.drawShadow,
    'dart:ui@Picture@#as': (m.Scope scope, target) => () => target as Picture,
    'dart:ui@Picture@#is': (m.Scope scope, target) => () => target is Picture,
    'dart:ui@Picture@onCreate': (m.Scope scope) => Picture.onCreate,
    'dart:ui@Picture@onCreate:set': (m.Scope scope) =>
        (other) => Picture.onCreate = other,
    'dart:ui@Picture@onDispose': (m.Scope scope) => Picture.onDispose,
    'dart:ui@Picture@onDispose:set': (m.Scope scope) =>
        (other) => Picture.onDispose = other,
    'dart:ui@Picture@debugDisposed': (m.Scope scope, Picture target) =>
        target.debugDisposed,
    'dart:ui@Picture@approximateBytesUsed': (m.Scope scope, Picture target) =>
        target.approximateBytesUsed,
    'dart:ui@Picture@toImage': (m.Scope scope, Picture target) =>
        target.toImage,
    'dart:ui@Picture@toImageSync': (m.Scope scope, Picture target) =>
        target.toImageSync,
    'dart:ui@Picture@dispose': (m.Scope scope, Picture target) =>
        target.dispose,
    'dart:ui@PictureRecorder@#as': (m.Scope scope, target) =>
        () => target as PictureRecorder,
    'dart:ui@PictureRecorder@#is': (m.Scope scope, target) =>
        () => target is PictureRecorder,
    'dart:ui@PictureRecorder@isRecording':
        (m.Scope scope, PictureRecorder target) => target.isRecording,
    'dart:ui@PictureRecorder@': (m.Scope scope) => () {
          return PictureRecorder();
        },
    'dart:ui@PictureRecorder@endRecording':
        (m.Scope scope, PictureRecorder target) => target.endRecording,
    'dart:ui@Shadow@#as': (m.Scope scope, target) => () => target as Shadow,
    'dart:ui@Shadow@#is': (m.Scope scope, target) => () => target is Shadow,
    'dart:ui@Shadow@color': (m.Scope scope, Shadow target) => target.color,
    'dart:ui@Shadow@offset': (m.Scope scope, Shadow target) => target.offset,
    'dart:ui@Shadow@blurRadius': (m.Scope scope, Shadow target) =>
        target.blurRadius,
    'dart:ui@Shadow@blurSigma': (m.Scope scope, Shadow target) =>
        target.blurSigma,
    'dart:ui@Shadow@hashCode': (m.Scope scope, Shadow target) =>
        target.hashCode,
    'dart:ui@Shadow@': (m.Scope scope) => ({blurRadius, color, offset}) {
          return Shadow(
              blurRadius: blurRadius ?? 0.0,
              color: color ?? const Color(0xFF000000),
              offset: offset ?? Offset.zero);
        },
    'dart:ui@Shadow@convertRadiusToSigma': (m.Scope scope) =>
        Shadow.convertRadiusToSigma,
    'dart:ui@Shadow@toPaint': (m.Scope scope, Shadow target) => target.toPaint,
    'dart:ui@Shadow@scale': (m.Scope scope, Shadow target) => target.scale,
    'dart:ui@Shadow@lerp': (m.Scope scope) => Shadow.lerp,
    'dart:ui@Shadow@lerpList': (m.Scope scope) => Shadow.lerpList,
    'dart:ui@Shadow@==': (m.Scope scope, Shadow target) =>
        (other) => target == other,
    'dart:ui@Shadow@toString': (m.Scope scope, Shadow target) =>
        target.toString,
    'dart:ui@ImmutableBuffer@#as': (m.Scope scope, target) =>
        () => target as ImmutableBuffer,
    'dart:ui@ImmutableBuffer@#is': (m.Scope scope, target) =>
        () => target is ImmutableBuffer,
    'dart:ui@ImmutableBuffer@length': (m.Scope scope, ImmutableBuffer target) =>
        target.length,
    'dart:ui@ImmutableBuffer@debugDisposed':
        (m.Scope scope, ImmutableBuffer target) => target.debugDisposed,
    'dart:ui@ImmutableBuffer@fromUint8List': (m.Scope scope) =>
        ImmutableBuffer.fromUint8List,
    'dart:ui@ImmutableBuffer@fromAsset': (m.Scope scope) =>
        ImmutableBuffer.fromAsset,
    'dart:ui@ImmutableBuffer@fromFilePath': (m.Scope scope) =>
        ImmutableBuffer.fromFilePath,
    'dart:ui@ImmutableBuffer@dispose':
        (m.Scope scope, ImmutableBuffer target) => target.dispose,
    'dart:ui@ImageDescriptor@#as': (m.Scope scope, target) =>
        () => target as ImageDescriptor,
    'dart:ui@ImageDescriptor@#is': (m.Scope scope, target) =>
        () => target is ImageDescriptor,
    'dart:ui@ImageDescriptor@width': (m.Scope scope, ImageDescriptor target) =>
        target.width,
    'dart:ui@ImageDescriptor@height': (m.Scope scope, ImageDescriptor target) =>
        target.height,
    'dart:ui@ImageDescriptor@bytesPerPixel':
        (m.Scope scope, ImageDescriptor target) => target.bytesPerPixel,
    'dart:ui@ImageDescriptor@raw': (m.Scope scope) => ImageDescriptor.raw,
    'dart:ui@ImageDescriptor@encoded': (m.Scope scope) =>
        ImageDescriptor.encoded,
    'dart:ui@ImageDescriptor@dispose':
        (m.Scope scope, ImageDescriptor target) => target.dispose,
    'dart:ui@ImageDescriptor@instantiateCodec':
        (m.Scope scope, ImageDescriptor target) => target.instantiateCodec,
    'dart:ui@PictureRasterizationException@#as': (m.Scope scope, target) =>
        () => target as PictureRasterizationException,
    'dart:ui@PictureRasterizationException@#is': (m.Scope scope, target) =>
        () => target is PictureRasterizationException,
    'dart:ui@PictureRasterizationException@message':
        (m.Scope scope, PictureRasterizationException target) => target.message,
    'dart:ui@PictureRasterizationException@stack':
        (m.Scope scope, PictureRasterizationException target) => target.stack,
    'dart:ui@PictureRasterizationException@toString':
        (m.Scope scope, PictureRasterizationException target) =>
            target.toString,
    'dart:ui@@instantiateImageCodec': (m.Scope scope) => instantiateImageCodec,
    'dart:ui@@instantiateImageCodecFromBuffer': (m.Scope scope) =>
        instantiateImageCodecFromBuffer,
    'dart:ui@@instantiateImageCodecWithSize': (m.Scope scope) =>
        (buffer, {getTargetSize}) {
          TargetImageSize getTargetSizeProxy(intrinsicWidth, intrinsicHeight) {
            return engine.callFunctionPointer(
                scope, getTargetSize!, [intrinsicWidth, intrinsicHeight], {});
          }

          return instantiateImageCodecWithSize(buffer,
              getTargetSize: getTargetSize == null ? null : getTargetSizeProxy);
        },
    'dart:ui@@decodeImageFromList': (m.Scope scope) => (list, callback) {
          void callbackProxy(result) {
            engine.callFunctionPointer(scope, callback!, [result], {});
          }

          decodeImageFromList(list, callbackProxy);
        },
    'dart:ui@@decodeImageFromPixels': (m.Scope scope) =>
        (pixels, width, height, format, callback,
            {allowUpscaling, rowBytes, targetHeight, targetWidth}) {
          void callbackProxy(result) {
            engine.callFunctionPointer(scope, callback!, [result], {});
          }

          decodeImageFromPixels(pixels, width, height, format, callbackProxy,
              allowUpscaling: allowUpscaling ?? true,
              rowBytes: rowBytes,
              targetHeight: targetHeight,
              targetWidth: targetWidth);
        },
    'dart:ui@RootIsolateToken@#as': (m.Scope scope, target) =>
        () => target as RootIsolateToken,
    'dart:ui@RootIsolateToken@#is': (m.Scope scope, target) =>
        () => target is RootIsolateToken,
    'dart:ui@RootIsolateToken@instance': (m.Scope scope) =>
        RootIsolateToken.instance,
    'dart:ui@PlatformDispatcher@#as': (m.Scope scope, target) =>
        () => target as PlatformDispatcher,
    'dart:ui@PlatformDispatcher@#is': (m.Scope scope, target) =>
        () => target is PlatformDispatcher,
    'dart:ui@PlatformDispatcher@instance': (m.Scope scope) =>
        PlatformDispatcher.instance,
    'dart:ui@PlatformDispatcher@onPlatformConfigurationChanged':
        (m.Scope scope, PlatformDispatcher target) =>
            target.onPlatformConfigurationChanged,
    'dart:ui@PlatformDispatcher@onPlatformConfigurationChanged:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onPlatformConfigurationChanged = other,
    'dart:ui@PlatformDispatcher@views':
        (m.Scope scope, PlatformDispatcher target) => target.views,
    'dart:ui@PlatformDispatcher@implicitView':
        (m.Scope scope, PlatformDispatcher target) => target.implicitView,
    'dart:ui@PlatformDispatcher@onMetricsChanged':
        (m.Scope scope, PlatformDispatcher target) => target.onMetricsChanged,
    'dart:ui@PlatformDispatcher@onMetricsChanged:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onMetricsChanged = other,
    'dart:ui@PlatformDispatcher@onBeginFrame':
        (m.Scope scope, PlatformDispatcher target) => target.onBeginFrame,
    'dart:ui@PlatformDispatcher@onBeginFrame:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onBeginFrame = other,
    'dart:ui@PlatformDispatcher@onDrawFrame':
        (m.Scope scope, PlatformDispatcher target) => target.onDrawFrame,
    'dart:ui@PlatformDispatcher@onDrawFrame:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onDrawFrame = other,
    'dart:ui@PlatformDispatcher@onPointerDataPacket':
        (m.Scope scope, PlatformDispatcher target) =>
            target.onPointerDataPacket,
    'dart:ui@PlatformDispatcher@onPointerDataPacket:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onPointerDataPacket = other,
    'dart:ui@PlatformDispatcher@onKeyData':
        (m.Scope scope, PlatformDispatcher target) => target.onKeyData,
    'dart:ui@PlatformDispatcher@onKeyData:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onKeyData = other,
    'dart:ui@PlatformDispatcher@onReportTimings':
        (m.Scope scope, PlatformDispatcher target) => target.onReportTimings,
    'dart:ui@PlatformDispatcher@onReportTimings:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onReportTimings = other,
    'dart:ui@PlatformDispatcher@onPlatformMessage':
        (m.Scope scope, PlatformDispatcher target) => target.onPlatformMessage,
    'dart:ui@PlatformDispatcher@onPlatformMessage:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onPlatformMessage = other,
    'dart:ui@PlatformDispatcher@accessibilityFeatures':
        (m.Scope scope, PlatformDispatcher target) =>
            target.accessibilityFeatures,
    'dart:ui@PlatformDispatcher@onAccessibilityFeaturesChanged':
        (m.Scope scope, PlatformDispatcher target) =>
            target.onAccessibilityFeaturesChanged,
    'dart:ui@PlatformDispatcher@onAccessibilityFeaturesChanged:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onAccessibilityFeaturesChanged = other,
    'dart:ui@PlatformDispatcher@locale':
        (m.Scope scope, PlatformDispatcher target) => target.locale,
    'dart:ui@PlatformDispatcher@locales':
        (m.Scope scope, PlatformDispatcher target) => target.locales,
    'dart:ui@PlatformDispatcher@onLocaleChanged':
        (m.Scope scope, PlatformDispatcher target) => target.onLocaleChanged,
    'dart:ui@PlatformDispatcher@onLocaleChanged:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onLocaleChanged = other,
    'dart:ui@PlatformDispatcher@initialLifecycleState':
        (m.Scope scope, PlatformDispatcher target) =>
            target.initialLifecycleState,
    'dart:ui@PlatformDispatcher@alwaysUse24HourFormat':
        (m.Scope scope, PlatformDispatcher target) =>
            target.alwaysUse24HourFormat,
    'dart:ui@PlatformDispatcher@textScaleFactor':
        (m.Scope scope, PlatformDispatcher target) => target.textScaleFactor,
    'dart:ui@PlatformDispatcher@onTextScaleFactorChanged':
        (m.Scope scope, PlatformDispatcher target) =>
            target.onTextScaleFactorChanged,
    'dart:ui@PlatformDispatcher@onTextScaleFactorChanged:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onTextScaleFactorChanged = other,
    'dart:ui@PlatformDispatcher@nativeSpellCheckServiceDefined':
        (m.Scope scope, PlatformDispatcher target) =>
            target.nativeSpellCheckServiceDefined,
    'dart:ui@PlatformDispatcher@brieflyShowPassword':
        (m.Scope scope, PlatformDispatcher target) =>
            target.brieflyShowPassword,
    'dart:ui@PlatformDispatcher@platformBrightness':
        (m.Scope scope, PlatformDispatcher target) => target.platformBrightness,
    'dart:ui@PlatformDispatcher@onPlatformBrightnessChanged':
        (m.Scope scope, PlatformDispatcher target) =>
            target.onPlatformBrightnessChanged,
    'dart:ui@PlatformDispatcher@onPlatformBrightnessChanged:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onPlatformBrightnessChanged = other,
    'dart:ui@PlatformDispatcher@systemFontFamily':
        (m.Scope scope, PlatformDispatcher target) => target.systemFontFamily,
    'dart:ui@PlatformDispatcher@onSystemFontFamilyChanged':
        (m.Scope scope, PlatformDispatcher target) =>
            target.onSystemFontFamilyChanged,
    'dart:ui@PlatformDispatcher@onSystemFontFamilyChanged:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onSystemFontFamilyChanged = other,
    'dart:ui@PlatformDispatcher@semanticsEnabled':
        (m.Scope scope, PlatformDispatcher target) => target.semanticsEnabled,
    'dart:ui@PlatformDispatcher@onSemanticsEnabledChanged':
        (m.Scope scope, PlatformDispatcher target) =>
            target.onSemanticsEnabledChanged,
    'dart:ui@PlatformDispatcher@onSemanticsEnabledChanged:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onSemanticsEnabledChanged = other,
    'dart:ui@PlatformDispatcher@onSemanticsAction':
        (m.Scope scope, PlatformDispatcher target) => target.onSemanticsAction,
    'dart:ui@PlatformDispatcher@onSemanticsAction:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onSemanticsAction = other,
    'dart:ui@PlatformDispatcher@frameData':
        (m.Scope scope, PlatformDispatcher target) => target.frameData,
    'dart:ui@PlatformDispatcher@onFrameDataChanged':
        (m.Scope scope, PlatformDispatcher target) => target.onFrameDataChanged,
    'dart:ui@PlatformDispatcher@onFrameDataChanged:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onFrameDataChanged = other,
    'dart:ui@PlatformDispatcher@onError':
        (m.Scope scope, PlatformDispatcher target) => target.onError,
    'dart:ui@PlatformDispatcher@onError:set':
        (m.Scope scope, PlatformDispatcher target) =>
            (other) => target.onError = other,
    'dart:ui@PlatformDispatcher@defaultRouteName':
        (m.Scope scope, PlatformDispatcher target) => target.defaultRouteName,
    'dart:ui@PlatformDispatcher@sendPlatformMessage':
        (m.Scope scope, PlatformDispatcher target) => (name, data, callback) {
              void callbackProxy(data) {
                engine.callFunctionPointer(scope, callback!, [data], {});
              }

              target.sendPlatformMessage(name, data, callbackProxy);
            },
    'dart:ui@PlatformDispatcher@sendPortPlatformMessage':
        (m.Scope scope, PlatformDispatcher target) =>
            target.sendPortPlatformMessage,
    'dart:ui@PlatformDispatcher@registerBackgroundIsolate':
        (m.Scope scope, PlatformDispatcher target) =>
            target.registerBackgroundIsolate,
    'dart:ui@PlatformDispatcher@setIsolateDebugName':
        (m.Scope scope, PlatformDispatcher target) =>
            target.setIsolateDebugName,
    'dart:ui@PlatformDispatcher@requestDartPerformanceMode':
        (m.Scope scope, PlatformDispatcher target) =>
            target.requestDartPerformanceMode,
    'dart:ui@PlatformDispatcher@getPersistentIsolateData':
        (m.Scope scope, PlatformDispatcher target) =>
            target.getPersistentIsolateData,
    'dart:ui@PlatformDispatcher@scheduleFrame':
        (m.Scope scope, PlatformDispatcher target) => target.scheduleFrame,
    'dart:ui@PlatformDispatcher@computePlatformResolvedLocale':
        (m.Scope scope, PlatformDispatcher target) =>
            target.computePlatformResolvedLocale,
    'dart:ui@FrameTiming@#as': (m.Scope scope, target) =>
        () => target as FrameTiming,
    'dart:ui@FrameTiming@#is': (m.Scope scope, target) =>
        () => target is FrameTiming,
    'dart:ui@FrameTiming@buildDuration': (m.Scope scope, FrameTiming target) =>
        target.buildDuration,
    'dart:ui@FrameTiming@rasterDuration': (m.Scope scope, FrameTiming target) =>
        target.rasterDuration,
    'dart:ui@FrameTiming@vsyncOverhead': (m.Scope scope, FrameTiming target) =>
        target.vsyncOverhead,
    'dart:ui@FrameTiming@totalSpan': (m.Scope scope, FrameTiming target) =>
        target.totalSpan,
    'dart:ui@FrameTiming@layerCacheCount':
        (m.Scope scope, FrameTiming target) => target.layerCacheCount,
    'dart:ui@FrameTiming@layerCacheBytes':
        (m.Scope scope, FrameTiming target) => target.layerCacheBytes,
    'dart:ui@FrameTiming@layerCacheMegabytes':
        (m.Scope scope, FrameTiming target) => target.layerCacheMegabytes,
    'dart:ui@FrameTiming@pictureCacheCount':
        (m.Scope scope, FrameTiming target) => target.pictureCacheCount,
    'dart:ui@FrameTiming@pictureCacheBytes':
        (m.Scope scope, FrameTiming target) => target.pictureCacheBytes,
    'dart:ui@FrameTiming@pictureCacheMegabytes':
        (m.Scope scope, FrameTiming target) => target.pictureCacheMegabytes,
    'dart:ui@FrameTiming@frameNumber': (m.Scope scope, FrameTiming target) =>
        target.frameNumber,
    'dart:ui@FrameTiming@': (m.Scope scope) => (
            {buildFinish,
            buildStart,
            frameNumber,
            layerCacheBytes,
            layerCacheCount,
            pictureCacheBytes,
            pictureCacheCount,
            rasterFinish,
            rasterFinishWallTime,
            rasterStart,
            vsyncStart}) {
          return FrameTiming(
              buildFinish: buildFinish,
              buildStart: buildStart,
              frameNumber: frameNumber ?? -1,
              layerCacheBytes: layerCacheBytes ?? 0,
              layerCacheCount: layerCacheCount ?? 0,
              pictureCacheBytes: pictureCacheBytes ?? 0,
              pictureCacheCount: pictureCacheCount ?? 0,
              rasterFinish: rasterFinish,
              rasterFinishWallTime: rasterFinishWallTime,
              rasterStart: rasterStart,
              vsyncStart: vsyncStart);
        },
    'dart:ui@FrameTiming@timestampInMicroseconds':
        (m.Scope scope, FrameTiming target) => target.timestampInMicroseconds,
    'dart:ui@FrameTiming@toString': (m.Scope scope, FrameTiming target) =>
        target.toString,
    'dart:ui@ViewPadding@#as': (m.Scope scope, target) =>
        () => target as ViewPadding,
    'dart:ui@ViewPadding@#is': (m.Scope scope, target) =>
        () => target is ViewPadding,
    'dart:ui@ViewPadding@left': (m.Scope scope, ViewPadding target) =>
        target.left,
    'dart:ui@ViewPadding@top': (m.Scope scope, ViewPadding target) =>
        target.top,
    'dart:ui@ViewPadding@right': (m.Scope scope, ViewPadding target) =>
        target.right,
    'dart:ui@ViewPadding@bottom': (m.Scope scope, ViewPadding target) =>
        target.bottom,
    'dart:ui@ViewPadding@zero': (m.Scope scope) => ViewPadding.zero,
    'dart:ui@ViewPadding@toString': (m.Scope scope, ViewPadding target) =>
        target.toString,
    'dart:ui@DisplayFeature@#as': (m.Scope scope, target) =>
        () => target as DisplayFeature,
    'dart:ui@DisplayFeature@#is': (m.Scope scope, target) =>
        () => target is DisplayFeature,
    'dart:ui@DisplayFeature@bounds': (m.Scope scope, DisplayFeature target) =>
        target.bounds,
    'dart:ui@DisplayFeature@type': (m.Scope scope, DisplayFeature target) =>
        target.type,
    'dart:ui@DisplayFeature@state': (m.Scope scope, DisplayFeature target) =>
        target.state,
    'dart:ui@DisplayFeature@hashCode': (m.Scope scope, DisplayFeature target) =>
        target.hashCode,
    'dart:ui@DisplayFeature@': (m.Scope scope) => ({bounds, state, type}) {
          return DisplayFeature(bounds: bounds, state: state, type: type);
        },
    'dart:ui@DisplayFeature@==': (m.Scope scope, DisplayFeature target) =>
        (other) => target == other,
    'dart:ui@DisplayFeature@toString': (m.Scope scope, DisplayFeature target) =>
        target.toString,
    'dart:ui@Locale@#as': (m.Scope scope, target) => () => target as Locale,
    'dart:ui@Locale@#is': (m.Scope scope, target) => () => target is Locale,
    'dart:ui@Locale@scriptCode': (m.Scope scope, Locale target) =>
        target.scriptCode,
    'dart:ui@Locale@languageCode': (m.Scope scope, Locale target) =>
        target.languageCode,
    'dart:ui@Locale@countryCode': (m.Scope scope, Locale target) =>
        target.countryCode,
    'dart:ui@Locale@hashCode': (m.Scope scope, Locale target) =>
        target.hashCode,
    'dart:ui@Locale@': (m.Scope scope) =>
        (_languageCode, [String? _countryCode]) {
          if (_countryCode == null) {
            return Locale(_languageCode);
          }
          return Locale(_languageCode, _countryCode!);
        },
    'dart:ui@Locale@fromSubtags': (m.Scope scope) => Locale.fromSubtags,
    'dart:ui@Locale@==': (m.Scope scope, Locale target) =>
        (other) => target == other,
    'dart:ui@Locale@toString': (m.Scope scope, Locale target) =>
        target.toString,
    'dart:ui@Locale@toLanguageTag': (m.Scope scope, Locale target) =>
        target.toLanguageTag,
    'dart:ui@CallbackHandle@#as': (m.Scope scope, target) =>
        () => target as CallbackHandle,
    'dart:ui@CallbackHandle@#is': (m.Scope scope, target) =>
        () => target is CallbackHandle,
    'dart:ui@CallbackHandle@hashCode': (m.Scope scope, CallbackHandle target) =>
        target.hashCode,
    'dart:ui@CallbackHandle@fromRawHandle': (m.Scope scope) =>
        CallbackHandle.fromRawHandle,
    'dart:ui@CallbackHandle@toRawHandle':
        (m.Scope scope, CallbackHandle target) => target.toRawHandle,
    'dart:ui@CallbackHandle@==': (m.Scope scope, CallbackHandle target) =>
        (other) => target == other,
    'dart:ui@PluginUtilities@#as': (m.Scope scope, target) =>
        () => target as PluginUtilities,
    'dart:ui@PluginUtilities@#is': (m.Scope scope, target) =>
        () => target is PluginUtilities,
    'dart:ui@PluginUtilities@getCallbackHandle': (m.Scope scope) =>
        PluginUtilities.getCallbackHandle,
    'dart:ui@PluginUtilities@getCallbackFromHandle': (m.Scope scope) =>
        PluginUtilities.getCallbackFromHandle,
    'dart:ui@PointerData@#as': (m.Scope scope, target) =>
        () => target as PointerData,
    'dart:ui@PointerData@#is': (m.Scope scope, target) =>
        () => target is PointerData,
    'dart:ui@PointerData@embedderId': (m.Scope scope, PointerData target) =>
        target.embedderId,
    'dart:ui@PointerData@timeStamp': (m.Scope scope, PointerData target) =>
        target.timeStamp,
    'dart:ui@PointerData@change': (m.Scope scope, PointerData target) =>
        target.change,
    'dart:ui@PointerData@kind': (m.Scope scope, PointerData target) =>
        target.kind,
    'dart:ui@PointerData@signalKind': (m.Scope scope, PointerData target) =>
        target.signalKind,
    'dart:ui@PointerData@device': (m.Scope scope, PointerData target) =>
        target.device,
    'dart:ui@PointerData@pointerIdentifier':
        (m.Scope scope, PointerData target) => target.pointerIdentifier,
    'dart:ui@PointerData@physicalX': (m.Scope scope, PointerData target) =>
        target.physicalX,
    'dart:ui@PointerData@physicalY': (m.Scope scope, PointerData target) =>
        target.physicalY,
    'dart:ui@PointerData@physicalDeltaX': (m.Scope scope, PointerData target) =>
        target.physicalDeltaX,
    'dart:ui@PointerData@physicalDeltaY': (m.Scope scope, PointerData target) =>
        target.physicalDeltaY,
    'dart:ui@PointerData@buttons': (m.Scope scope, PointerData target) =>
        target.buttons,
    'dart:ui@PointerData@obscured': (m.Scope scope, PointerData target) =>
        target.obscured,
    'dart:ui@PointerData@synthesized': (m.Scope scope, PointerData target) =>
        target.synthesized,
    'dart:ui@PointerData@pressure': (m.Scope scope, PointerData target) =>
        target.pressure,
    'dart:ui@PointerData@pressureMin': (m.Scope scope, PointerData target) =>
        target.pressureMin,
    'dart:ui@PointerData@pressureMax': (m.Scope scope, PointerData target) =>
        target.pressureMax,
    'dart:ui@PointerData@distance': (m.Scope scope, PointerData target) =>
        target.distance,
    'dart:ui@PointerData@distanceMax': (m.Scope scope, PointerData target) =>
        target.distanceMax,
    'dart:ui@PointerData@size': (m.Scope scope, PointerData target) =>
        target.size,
    'dart:ui@PointerData@radiusMajor': (m.Scope scope, PointerData target) =>
        target.radiusMajor,
    'dart:ui@PointerData@radiusMinor': (m.Scope scope, PointerData target) =>
        target.radiusMinor,
    'dart:ui@PointerData@radiusMin': (m.Scope scope, PointerData target) =>
        target.radiusMin,
    'dart:ui@PointerData@radiusMax': (m.Scope scope, PointerData target) =>
        target.radiusMax,
    'dart:ui@PointerData@orientation': (m.Scope scope, PointerData target) =>
        target.orientation,
    'dart:ui@PointerData@tilt': (m.Scope scope, PointerData target) =>
        target.tilt,
    'dart:ui@PointerData@platformData': (m.Scope scope, PointerData target) =>
        target.platformData,
    'dart:ui@PointerData@scrollDeltaX': (m.Scope scope, PointerData target) =>
        target.scrollDeltaX,
    'dart:ui@PointerData@scrollDeltaY': (m.Scope scope, PointerData target) =>
        target.scrollDeltaY,
    'dart:ui@PointerData@panX': (m.Scope scope, PointerData target) =>
        target.panX,
    'dart:ui@PointerData@panY': (m.Scope scope, PointerData target) =>
        target.panY,
    'dart:ui@PointerData@panDeltaX': (m.Scope scope, PointerData target) =>
        target.panDeltaX,
    'dart:ui@PointerData@panDeltaY': (m.Scope scope, PointerData target) =>
        target.panDeltaY,
    'dart:ui@PointerData@scale': (m.Scope scope, PointerData target) =>
        target.scale,
    'dart:ui@PointerData@rotation': (m.Scope scope, PointerData target) =>
        target.rotation,
    'dart:ui@PointerData@preferredStylusAuxiliaryAction':
        (m.Scope scope, PointerData target) =>
            target.preferredStylusAuxiliaryAction,
    'dart:ui@PointerData@': (m.Scope scope) => (
            {buttons,
            change,
            device,
            distance,
            distanceMax,
            embedderId,
            kind,
            obscured,
            orientation,
            panDeltaX,
            panDeltaY,
            panX,
            panY,
            physicalDeltaX,
            physicalDeltaY,
            physicalX,
            physicalY,
            platformData,
            pointerIdentifier,
            preferredStylusAuxiliaryAction,
            pressure,
            pressureMax,
            pressureMin,
            radiusMajor,
            radiusMax,
            radiusMin,
            radiusMinor,
            rotation,
            scale,
            scrollDeltaX,
            scrollDeltaY,
            signalKind,
            size,
            synthesized,
            tilt,
            timeStamp}) {
          return PointerData(
              buttons: buttons ?? 0,
              change: change ?? PointerChange.cancel,
              device: device ?? 0,
              distance: distance ?? 0.0,
              distanceMax: distanceMax ?? 0.0,
              embedderId: embedderId ?? 0,
              kind: kind ?? PointerDeviceKind.touch,
              obscured: obscured ?? false,
              orientation: orientation ?? 0.0,
              panDeltaX: panDeltaX ?? 0.0,
              panDeltaY: panDeltaY ?? 0.0,
              panX: panX ?? 0.0,
              panY: panY ?? 0.0,
              physicalDeltaX: physicalDeltaX ?? 0.0,
              physicalDeltaY: physicalDeltaY ?? 0.0,
              physicalX: physicalX ?? 0.0,
              physicalY: physicalY ?? 0.0,
              platformData: platformData ?? 0,
              pointerIdentifier: pointerIdentifier ?? 0,
              preferredStylusAuxiliaryAction: preferredStylusAuxiliaryAction ??
                  PointerPreferredStylusAuxiliaryAction.ignore,
              pressure: pressure ?? 0.0,
              pressureMax: pressureMax ?? 0.0,
              pressureMin: pressureMin ?? 0.0,
              radiusMajor: radiusMajor ?? 0.0,
              radiusMax: radiusMax ?? 0.0,
              radiusMin: radiusMin ?? 0.0,
              radiusMinor: radiusMinor ?? 0.0,
              rotation: rotation ?? 0.0,
              scale: scale ?? 0.0,
              scrollDeltaX: scrollDeltaX ?? 0.0,
              scrollDeltaY: scrollDeltaY ?? 0.0,
              signalKind: signalKind,
              size: size ?? 0.0,
              synthesized: synthesized ?? false,
              tilt: tilt ?? 0.0,
              timeStamp: timeStamp ?? Duration.zero);
        },
    'dart:ui@PointerData@toString': (m.Scope scope, PointerData target) =>
        target.toString,
    'dart:ui@PointerData@toStringFull': (m.Scope scope, PointerData target) =>
        target.toStringFull,
    'dart:ui@PointerDataPacket@#as': (m.Scope scope, target) =>
        () => target as PointerDataPacket,
    'dart:ui@PointerDataPacket@#is': (m.Scope scope, target) =>
        () => target is PointerDataPacket,
    'dart:ui@PointerDataPacket@data':
        (m.Scope scope, PointerDataPacket target) => target.data,
    'dart:ui@PointerDataPacket@': (m.Scope scope) => ({data}) {
          return PointerDataPacket(data: data ?? const <PointerData>[]);
        },
    'dart:ui@SemanticsAction@#as': (m.Scope scope, target) =>
        () => target as SemanticsAction,
    'dart:ui@SemanticsAction@#is': (m.Scope scope, target) =>
        () => target is SemanticsAction,
    'dart:ui@SemanticsAction@index': (m.Scope scope, SemanticsAction target) =>
        target.index,
    'dart:ui@SemanticsAction@tap': (m.Scope scope) => SemanticsAction.tap,
    'dart:ui@SemanticsAction@longPress': (m.Scope scope) =>
        SemanticsAction.longPress,
    'dart:ui@SemanticsAction@scrollLeft': (m.Scope scope) =>
        SemanticsAction.scrollLeft,
    'dart:ui@SemanticsAction@scrollRight': (m.Scope scope) =>
        SemanticsAction.scrollRight,
    'dart:ui@SemanticsAction@scrollUp': (m.Scope scope) =>
        SemanticsAction.scrollUp,
    'dart:ui@SemanticsAction@scrollDown': (m.Scope scope) =>
        SemanticsAction.scrollDown,
    'dart:ui@SemanticsAction@increase': (m.Scope scope) =>
        SemanticsAction.increase,
    'dart:ui@SemanticsAction@decrease': (m.Scope scope) =>
        SemanticsAction.decrease,
    'dart:ui@SemanticsAction@showOnScreen': (m.Scope scope) =>
        SemanticsAction.showOnScreen,
    'dart:ui@SemanticsAction@moveCursorForwardByCharacter': (m.Scope scope) =>
        SemanticsAction.moveCursorForwardByCharacter,
    'dart:ui@SemanticsAction@moveCursorBackwardByCharacter': (m.Scope scope) =>
        SemanticsAction.moveCursorBackwardByCharacter,
    'dart:ui@SemanticsAction@setText': (m.Scope scope) =>
        SemanticsAction.setText,
    'dart:ui@SemanticsAction@setSelection': (m.Scope scope) =>
        SemanticsAction.setSelection,
    'dart:ui@SemanticsAction@copy': (m.Scope scope) => SemanticsAction.copy,
    'dart:ui@SemanticsAction@cut': (m.Scope scope) => SemanticsAction.cut,
    'dart:ui@SemanticsAction@paste': (m.Scope scope) => SemanticsAction.paste,
    'dart:ui@SemanticsAction@didGainAccessibilityFocus': (m.Scope scope) =>
        SemanticsAction.didGainAccessibilityFocus,
    'dart:ui@SemanticsAction@didLoseAccessibilityFocus': (m.Scope scope) =>
        SemanticsAction.didLoseAccessibilityFocus,
    'dart:ui@SemanticsAction@customAction': (m.Scope scope) =>
        SemanticsAction.customAction,
    'dart:ui@SemanticsAction@dismiss': (m.Scope scope) =>
        SemanticsAction.dismiss,
    'dart:ui@SemanticsAction@moveCursorForwardByWord': (m.Scope scope) =>
        SemanticsAction.moveCursorForwardByWord,
    'dart:ui@SemanticsAction@moveCursorBackwardByWord': (m.Scope scope) =>
        SemanticsAction.moveCursorBackwardByWord,
    'dart:ui@SemanticsAction@values': (m.Scope scope) => SemanticsAction.values,
    'dart:ui@SemanticsAction@toString':
        (m.Scope scope, SemanticsAction target) => target.toString,
    'dart:ui@SemanticsFlag@#as': (m.Scope scope, target) =>
        () => target as SemanticsFlag,
    'dart:ui@SemanticsFlag@#is': (m.Scope scope, target) =>
        () => target is SemanticsFlag,
    'dart:ui@SemanticsFlag@index': (m.Scope scope, SemanticsFlag target) =>
        target.index,
    'dart:ui@SemanticsFlag@hasCheckedState': (m.Scope scope) =>
        SemanticsFlag.hasCheckedState,
    'dart:ui@SemanticsFlag@isChecked': (m.Scope scope) =>
        SemanticsFlag.isChecked,
    'dart:ui@SemanticsFlag@isCheckStateMixed': (m.Scope scope) =>
        SemanticsFlag.isCheckStateMixed,
    'dart:ui@SemanticsFlag@isSelected': (m.Scope scope) =>
        SemanticsFlag.isSelected,
    'dart:ui@SemanticsFlag@isButton': (m.Scope scope) => SemanticsFlag.isButton,
    'dart:ui@SemanticsFlag@isTextField': (m.Scope scope) =>
        SemanticsFlag.isTextField,
    'dart:ui@SemanticsFlag@isSlider': (m.Scope scope) => SemanticsFlag.isSlider,
    'dart:ui@SemanticsFlag@isKeyboardKey': (m.Scope scope) =>
        SemanticsFlag.isKeyboardKey,
    'dart:ui@SemanticsFlag@isReadOnly': (m.Scope scope) =>
        SemanticsFlag.isReadOnly,
    'dart:ui@SemanticsFlag@isLink': (m.Scope scope) => SemanticsFlag.isLink,
    'dart:ui@SemanticsFlag@isFocusable': (m.Scope scope) =>
        SemanticsFlag.isFocusable,
    'dart:ui@SemanticsFlag@isFocused': (m.Scope scope) =>
        SemanticsFlag.isFocused,
    'dart:ui@SemanticsFlag@hasEnabledState': (m.Scope scope) =>
        SemanticsFlag.hasEnabledState,
    'dart:ui@SemanticsFlag@isEnabled': (m.Scope scope) =>
        SemanticsFlag.isEnabled,
    'dart:ui@SemanticsFlag@isInMutuallyExclusiveGroup': (m.Scope scope) =>
        SemanticsFlag.isInMutuallyExclusiveGroup,
    'dart:ui@SemanticsFlag@isHeader': (m.Scope scope) => SemanticsFlag.isHeader,
    'dart:ui@SemanticsFlag@isObscured': (m.Scope scope) =>
        SemanticsFlag.isObscured,
    'dart:ui@SemanticsFlag@isMultiline': (m.Scope scope) =>
        SemanticsFlag.isMultiline,
    'dart:ui@SemanticsFlag@scopesRoute': (m.Scope scope) =>
        SemanticsFlag.scopesRoute,
    'dart:ui@SemanticsFlag@namesRoute': (m.Scope scope) =>
        SemanticsFlag.namesRoute,
    'dart:ui@SemanticsFlag@isHidden': (m.Scope scope) => SemanticsFlag.isHidden,
    'dart:ui@SemanticsFlag@isImage': (m.Scope scope) => SemanticsFlag.isImage,
    'dart:ui@SemanticsFlag@isLiveRegion': (m.Scope scope) =>
        SemanticsFlag.isLiveRegion,
    'dart:ui@SemanticsFlag@hasToggledState': (m.Scope scope) =>
        SemanticsFlag.hasToggledState,
    'dart:ui@SemanticsFlag@isToggled': (m.Scope scope) =>
        SemanticsFlag.isToggled,
    'dart:ui@SemanticsFlag@hasImplicitScrolling': (m.Scope scope) =>
        SemanticsFlag.hasImplicitScrolling,
    'dart:ui@SemanticsFlag@values': (m.Scope scope) => SemanticsFlag.values,
    'dart:ui@SemanticsFlag@toString': (m.Scope scope, SemanticsFlag target) =>
        target.toString,
    'dart:ui@StringAttribute@#as': (m.Scope scope, target) =>
        () => target as StringAttribute,
    'dart:ui@StringAttribute@#is': (m.Scope scope, target) =>
        () => target is StringAttribute,
    'dart:ui@StringAttribute@range': (m.Scope scope, StringAttribute target) =>
        target.range,
    'dart:ui@StringAttribute@copy': (m.Scope scope, StringAttribute target) =>
        target.copy,
    'dart:ui@SpellOutStringAttribute@#as': (m.Scope scope, target) =>
        () => target as SpellOutStringAttribute,
    'dart:ui@SpellOutStringAttribute@#is': (m.Scope scope, target) =>
        () => target is SpellOutStringAttribute,
    'dart:ui@SpellOutStringAttribute@': (m.Scope scope) => ({range}) {
          return SpellOutStringAttribute(range: range);
        },
    'dart:ui@SpellOutStringAttribute@copy':
        (m.Scope scope, SpellOutStringAttribute target) => target.copy,
    'dart:ui@SpellOutStringAttribute@toString':
        (m.Scope scope, SpellOutStringAttribute target) => target.toString,
    'dart:ui@LocaleStringAttribute@#as': (m.Scope scope, target) =>
        () => target as LocaleStringAttribute,
    'dart:ui@LocaleStringAttribute@#is': (m.Scope scope, target) =>
        () => target is LocaleStringAttribute,
    'dart:ui@LocaleStringAttribute@locale':
        (m.Scope scope, LocaleStringAttribute target) => target.locale,
    'dart:ui@LocaleStringAttribute@': (m.Scope scope) => ({locale, range}) {
          return LocaleStringAttribute(locale: locale, range: range);
        },
    'dart:ui@LocaleStringAttribute@copy':
        (m.Scope scope, LocaleStringAttribute target) => target.copy,
    'dart:ui@LocaleStringAttribute@toString':
        (m.Scope scope, LocaleStringAttribute target) => target.toString,
    'dart:ui@SemanticsUpdateBuilder@#as': (m.Scope scope, target) =>
        () => target as SemanticsUpdateBuilder,
    'dart:ui@SemanticsUpdateBuilder@#is': (m.Scope scope, target) =>
        () => target is SemanticsUpdateBuilder,
    'dart:ui@SemanticsUpdateBuilder@': (m.Scope scope) => () {
          return SemanticsUpdateBuilder();
        },
    'dart:ui@SemanticsUpdateBuilder@updateNode':
        (m.Scope scope, SemanticsUpdateBuilder target) => target.updateNode,
    'dart:ui@SemanticsUpdateBuilder@updateCustomAction':
        (m.Scope scope, SemanticsUpdateBuilder target) =>
            target.updateCustomAction,
    'dart:ui@SemanticsUpdateBuilder@build':
        (m.Scope scope, SemanticsUpdateBuilder target) => target.build,
    'dart:ui@SemanticsUpdate@#as': (m.Scope scope, target) =>
        () => target as SemanticsUpdate,
    'dart:ui@SemanticsUpdate@#is': (m.Scope scope, target) =>
        () => target is SemanticsUpdate,
    'dart:ui@SemanticsUpdate@dispose':
        (m.Scope scope, SemanticsUpdate target) => target.dispose,
    'dart:ui@FontWeight@#as': (m.Scope scope, target) =>
        () => target as FontWeight,
    'dart:ui@FontWeight@#is': (m.Scope scope, target) =>
        () => target is FontWeight,
    'dart:ui@FontWeight@index': (m.Scope scope, FontWeight target) =>
        target.index,
    'dart:ui@FontWeight@value': (m.Scope scope, FontWeight target) =>
        target.value,
    'dart:ui@FontWeight@w100': (m.Scope scope) => FontWeight.w100,
    'dart:ui@FontWeight@w200': (m.Scope scope) => FontWeight.w200,
    'dart:ui@FontWeight@w300': (m.Scope scope) => FontWeight.w300,
    'dart:ui@FontWeight@w400': (m.Scope scope) => FontWeight.w400,
    'dart:ui@FontWeight@w500': (m.Scope scope) => FontWeight.w500,
    'dart:ui@FontWeight@w600': (m.Scope scope) => FontWeight.w600,
    'dart:ui@FontWeight@w700': (m.Scope scope) => FontWeight.w700,
    'dart:ui@FontWeight@w800': (m.Scope scope) => FontWeight.w800,
    'dart:ui@FontWeight@w900': (m.Scope scope) => FontWeight.w900,
    'dart:ui@FontWeight@normal': (m.Scope scope) => FontWeight.normal,
    'dart:ui@FontWeight@bold': (m.Scope scope) => FontWeight.bold,
    'dart:ui@FontWeight@values': (m.Scope scope) => FontWeight.values,
    'dart:ui@FontWeight@lerp': (m.Scope scope) => FontWeight.lerp,
    'dart:ui@FontWeight@toString': (m.Scope scope, FontWeight target) =>
        target.toString,
    'dart:ui@FontFeature@#as': (m.Scope scope, target) =>
        () => target as FontFeature,
    'dart:ui@FontFeature@#is': (m.Scope scope, target) =>
        () => target is FontFeature,
    'dart:ui@FontFeature@feature': (m.Scope scope, FontFeature target) =>
        target.feature,
    'dart:ui@FontFeature@value': (m.Scope scope, FontFeature target) =>
        target.value,
    'dart:ui@FontFeature@hashCode': (m.Scope scope, FontFeature target) =>
        target.hashCode,
    'dart:ui@FontFeature@': (m.Scope scope) => (feature, [int? value]) {
          if (value == null) {
            return FontFeature(feature);
          }
          return FontFeature(feature, value!);
        },
    'dart:ui@FontFeature@enable': (m.Scope scope) => FontFeature.enable,
    'dart:ui@FontFeature@disable': (m.Scope scope) => FontFeature.disable,
    'dart:ui@FontFeature@alternative': (m.Scope scope) =>
        FontFeature.alternative,
    'dart:ui@FontFeature@alternativeFractions': (m.Scope scope) =>
        FontFeature.alternativeFractions,
    'dart:ui@FontFeature@contextualAlternates': (m.Scope scope) =>
        FontFeature.contextualAlternates,
    'dart:ui@FontFeature@caseSensitiveForms': (m.Scope scope) =>
        FontFeature.caseSensitiveForms,
    'dart:ui@FontFeature@characterVariant': (m.Scope scope) =>
        FontFeature.characterVariant,
    'dart:ui@FontFeature@denominator': (m.Scope scope) =>
        FontFeature.denominator,
    'dart:ui@FontFeature@fractions': (m.Scope scope) => FontFeature.fractions,
    'dart:ui@FontFeature@historicalForms': (m.Scope scope) =>
        FontFeature.historicalForms,
    'dart:ui@FontFeature@historicalLigatures': (m.Scope scope) =>
        FontFeature.historicalLigatures,
    'dart:ui@FontFeature@liningFigures': (m.Scope scope) =>
        FontFeature.liningFigures,
    'dart:ui@FontFeature@localeAware': (m.Scope scope) =>
        FontFeature.localeAware,
    'dart:ui@FontFeature@notationalForms': (m.Scope scope) =>
        FontFeature.notationalForms,
    'dart:ui@FontFeature@numerators': (m.Scope scope) => FontFeature.numerators,
    'dart:ui@FontFeature@oldstyleFigures': (m.Scope scope) =>
        FontFeature.oldstyleFigures,
    'dart:ui@FontFeature@ordinalForms': (m.Scope scope) =>
        FontFeature.ordinalForms,
    'dart:ui@FontFeature@proportionalFigures': (m.Scope scope) =>
        FontFeature.proportionalFigures,
    'dart:ui@FontFeature@randomize': (m.Scope scope) => FontFeature.randomize,
    'dart:ui@FontFeature@stylisticAlternates': (m.Scope scope) =>
        FontFeature.stylisticAlternates,
    'dart:ui@FontFeature@scientificInferiors': (m.Scope scope) =>
        FontFeature.scientificInferiors,
    'dart:ui@FontFeature@stylisticSet': (m.Scope scope) =>
        FontFeature.stylisticSet,
    'dart:ui@FontFeature@subscripts': (m.Scope scope) => FontFeature.subscripts,
    'dart:ui@FontFeature@superscripts': (m.Scope scope) =>
        FontFeature.superscripts,
    'dart:ui@FontFeature@swash': (m.Scope scope) => FontFeature.swash,
    'dart:ui@FontFeature@tabularFigures': (m.Scope scope) =>
        FontFeature.tabularFigures,
    'dart:ui@FontFeature@slashedZero': (m.Scope scope) =>
        FontFeature.slashedZero,
    'dart:ui@FontFeature@==': (m.Scope scope, FontFeature target) =>
        (other) => target == other,
    'dart:ui@FontFeature@toString': (m.Scope scope, FontFeature target) =>
        target.toString,
    'dart:ui@FontVariation@#as': (m.Scope scope, target) =>
        () => target as FontVariation,
    'dart:ui@FontVariation@#is': (m.Scope scope, target) =>
        () => target is FontVariation,
    'dart:ui@FontVariation@axis': (m.Scope scope, FontVariation target) =>
        target.axis,
    'dart:ui@FontVariation@value': (m.Scope scope, FontVariation target) =>
        target.value,
    'dart:ui@FontVariation@hashCode': (m.Scope scope, FontVariation target) =>
        target.hashCode,
    'dart:ui@FontVariation@': (m.Scope scope) => (axis, value) {
          return FontVariation(axis, value);
        },
    'dart:ui@FontVariation@==': (m.Scope scope, FontVariation target) =>
        (other) => target == other,
    'dart:ui@FontVariation@toString': (m.Scope scope, FontVariation target) =>
        target.toString,
    'dart:ui@TextDecoration@#as': (m.Scope scope, target) =>
        () => target as TextDecoration,
    'dart:ui@TextDecoration@#is': (m.Scope scope, target) =>
        () => target is TextDecoration,
    'dart:ui@TextDecoration@none': (m.Scope scope) => TextDecoration.none,
    'dart:ui@TextDecoration@underline': (m.Scope scope) =>
        TextDecoration.underline,
    'dart:ui@TextDecoration@overline': (m.Scope scope) =>
        TextDecoration.overline,
    'dart:ui@TextDecoration@lineThrough': (m.Scope scope) =>
        TextDecoration.lineThrough,
    'dart:ui@TextDecoration@hashCode': (m.Scope scope, TextDecoration target) =>
        target.hashCode,
    'dart:ui@TextDecoration@combine': (m.Scope scope) => TextDecoration.combine,
    'dart:ui@TextDecoration@contains': (m.Scope scope, TextDecoration target) =>
        target.contains,
    'dart:ui@TextDecoration@==': (m.Scope scope, TextDecoration target) =>
        (other) => target == other,
    'dart:ui@TextDecoration@toString': (m.Scope scope, TextDecoration target) =>
        target.toString,
    'dart:ui@TextHeightBehavior@#as': (m.Scope scope, target) =>
        () => target as TextHeightBehavior,
    'dart:ui@TextHeightBehavior@#is': (m.Scope scope, target) =>
        () => target is TextHeightBehavior,
    'dart:ui@TextHeightBehavior@applyHeightToFirstAscent':
        (m.Scope scope, TextHeightBehavior target) =>
            target.applyHeightToFirstAscent,
    'dart:ui@TextHeightBehavior@applyHeightToLastDescent':
        (m.Scope scope, TextHeightBehavior target) =>
            target.applyHeightToLastDescent,
    'dart:ui@TextHeightBehavior@leadingDistribution':
        (m.Scope scope, TextHeightBehavior target) =>
            target.leadingDistribution,
    'dart:ui@TextHeightBehavior@hashCode':
        (m.Scope scope, TextHeightBehavior target) => target.hashCode,
    'dart:ui@TextHeightBehavior@': (m.Scope scope) => (
            {applyHeightToFirstAscent,
            applyHeightToLastDescent,
            leadingDistribution}) {
          return TextHeightBehavior(
              applyHeightToFirstAscent: applyHeightToFirstAscent ?? true,
              applyHeightToLastDescent: applyHeightToLastDescent ?? true,
              leadingDistribution:
                  leadingDistribution ?? TextLeadingDistribution.proportional);
        },
    'dart:ui@TextHeightBehavior@==':
        (m.Scope scope, TextHeightBehavior target) =>
            (other) => target == other,
    'dart:ui@TextHeightBehavior@toString':
        (m.Scope scope, TextHeightBehavior target) => target.toString,
    'dart:ui@TextStyle@#as': (m.Scope scope, target) =>
        () => target as TextStyle,
    'dart:ui@TextStyle@#is': (m.Scope scope, target) =>
        () => target is TextStyle,
    'dart:ui@TextStyle@hashCode': (m.Scope scope, TextStyle target) =>
        target.hashCode,
    'dart:ui@TextStyle@': (m.Scope scope) => (
            {background,
            color,
            decoration,
            decorationColor,
            decorationStyle,
            decorationThickness,
            fontFamily,
            fontFamilyFallback,
            fontFeatures,
            fontSize,
            fontStyle,
            fontVariations,
            fontWeight,
            foreground,
            height,
            leadingDistribution,
            letterSpacing,
            locale,
            shadows,
            textBaseline,
            wordSpacing}) {
          return TextStyle(
              background: background,
              color: color,
              decoration: decoration,
              decorationColor: decorationColor,
              decorationStyle: decorationStyle,
              decorationThickness: decorationThickness,
              fontFamily: fontFamily,
              fontFamilyFallback: fontFamilyFallback,
              fontFeatures: fontFeatures,
              fontSize: fontSize,
              fontStyle: fontStyle,
              fontVariations: fontVariations,
              fontWeight: fontWeight,
              foreground: foreground,
              height: height,
              leadingDistribution: leadingDistribution,
              letterSpacing: letterSpacing,
              locale: locale,
              shadows: shadows,
              textBaseline: textBaseline,
              wordSpacing: wordSpacing);
        },
    'dart:ui@TextStyle@==': (m.Scope scope, TextStyle target) =>
        (other) => target == other,
    'dart:ui@TextStyle@toString': (m.Scope scope, TextStyle target) =>
        target.toString,
    'dart:ui@ParagraphStyle@#as': (m.Scope scope, target) =>
        () => target as ParagraphStyle,
    'dart:ui@ParagraphStyle@#is': (m.Scope scope, target) =>
        () => target is ParagraphStyle,
    'dart:ui@ParagraphStyle@hashCode': (m.Scope scope, ParagraphStyle target) =>
        target.hashCode,
    'dart:ui@ParagraphStyle@': (m.Scope scope) => (
            {ellipsis,
            fontFamily,
            fontSize,
            fontStyle,
            fontWeight,
            height,
            locale,
            maxLines,
            strutStyle,
            textAlign,
            textDirection,
            textHeightBehavior}) {
          return ParagraphStyle(
              ellipsis: ellipsis,
              fontFamily: fontFamily,
              fontSize: fontSize,
              fontStyle: fontStyle,
              fontWeight: fontWeight,
              height: height,
              locale: locale,
              maxLines: maxLines,
              strutStyle: strutStyle,
              textAlign: textAlign,
              textDirection: textDirection,
              textHeightBehavior: textHeightBehavior);
        },
    'dart:ui@ParagraphStyle@==': (m.Scope scope, ParagraphStyle target) =>
        (other) => target == other,
    'dart:ui@ParagraphStyle@toString': (m.Scope scope, ParagraphStyle target) =>
        target.toString,
    'dart:ui@StrutStyle@#as': (m.Scope scope, target) =>
        () => target as StrutStyle,
    'dart:ui@StrutStyle@#is': (m.Scope scope, target) =>
        () => target is StrutStyle,
    'dart:ui@StrutStyle@hashCode': (m.Scope scope, StrutStyle target) =>
        target.hashCode,
    'dart:ui@StrutStyle@': (m.Scope scope) => (
            {fontFamily,
            fontFamilyFallback,
            fontSize,
            fontStyle,
            fontWeight,
            forceStrutHeight,
            height,
            leading,
            leadingDistribution}) {
          return StrutStyle(
              fontFamily: fontFamily,
              fontFamilyFallback: fontFamilyFallback,
              fontSize: fontSize,
              fontStyle: fontStyle,
              fontWeight: fontWeight,
              forceStrutHeight: forceStrutHeight,
              height: height,
              leading: leading,
              leadingDistribution: leadingDistribution);
        },
    'dart:ui@StrutStyle@==': (m.Scope scope, StrutStyle target) =>
        (other) => target == other,
    'dart:ui@TextBox@#as': (m.Scope scope, target) => () => target as TextBox,
    'dart:ui@TextBox@#is': (m.Scope scope, target) => () => target is TextBox,
    'dart:ui@TextBox@left': (m.Scope scope, TextBox target) => target.left,
    'dart:ui@TextBox@top': (m.Scope scope, TextBox target) => target.top,
    'dart:ui@TextBox@right': (m.Scope scope, TextBox target) => target.right,
    'dart:ui@TextBox@bottom': (m.Scope scope, TextBox target) => target.bottom,
    'dart:ui@TextBox@direction': (m.Scope scope, TextBox target) =>
        target.direction,
    'dart:ui@TextBox@start': (m.Scope scope, TextBox target) => target.start,
    'dart:ui@TextBox@end': (m.Scope scope, TextBox target) => target.end,
    'dart:ui@TextBox@hashCode': (m.Scope scope, TextBox target) =>
        target.hashCode,
    'dart:ui@TextBox@fromLTRBD': (m.Scope scope) => TextBox.fromLTRBD,
    'dart:ui@TextBox@toRect': (m.Scope scope, TextBox target) => target.toRect,
    'dart:ui@TextBox@==': (m.Scope scope, TextBox target) =>
        (other) => target == other,
    'dart:ui@TextBox@toString': (m.Scope scope, TextBox target) =>
        target.toString,
    'dart:ui@TextPosition@#as': (m.Scope scope, target) =>
        () => target as TextPosition,
    'dart:ui@TextPosition@#is': (m.Scope scope, target) =>
        () => target is TextPosition,
    'dart:ui@TextPosition@offset': (m.Scope scope, TextPosition target) =>
        target.offset,
    'dart:ui@TextPosition@affinity': (m.Scope scope, TextPosition target) =>
        target.affinity,
    'dart:ui@TextPosition@hashCode': (m.Scope scope, TextPosition target) =>
        target.hashCode,
    'dart:ui@TextPosition@': (m.Scope scope) => ({affinity, offset}) {
          return TextPosition(
              affinity: affinity ?? TextAffinity.downstream, offset: offset);
        },
    'dart:ui@TextPosition@==': (m.Scope scope, TextPosition target) =>
        (other) => target == other,
    'dart:ui@TextPosition@toString': (m.Scope scope, TextPosition target) =>
        target.toString,
    'dart:ui@TextRange@#as': (m.Scope scope, target) =>
        () => target as TextRange,
    'dart:ui@TextRange@#is': (m.Scope scope, target) =>
        () => target is TextRange,
    'dart:ui@TextRange@empty': (m.Scope scope) => TextRange.empty,
    'dart:ui@TextRange@start': (m.Scope scope, TextRange target) =>
        target.start,
    'dart:ui@TextRange@end': (m.Scope scope, TextRange target) => target.end,
    'dart:ui@TextRange@isValid': (m.Scope scope, TextRange target) =>
        target.isValid,
    'dart:ui@TextRange@isCollapsed': (m.Scope scope, TextRange target) =>
        target.isCollapsed,
    'dart:ui@TextRange@isNormalized': (m.Scope scope, TextRange target) =>
        target.isNormalized,
    'dart:ui@TextRange@hashCode': (m.Scope scope, TextRange target) =>
        target.hashCode,
    'dart:ui@TextRange@': (m.Scope scope) => ({end, start}) {
          return TextRange(end: end, start: start);
        },
    'dart:ui@TextRange@collapsed': (m.Scope scope) => TextRange.collapsed,
    'dart:ui@TextRange@textBefore': (m.Scope scope, TextRange target) =>
        target.textBefore,
    'dart:ui@TextRange@textAfter': (m.Scope scope, TextRange target) =>
        target.textAfter,
    'dart:ui@TextRange@textInside': (m.Scope scope, TextRange target) =>
        target.textInside,
    'dart:ui@TextRange@==': (m.Scope scope, TextRange target) =>
        (other) => target == other,
    'dart:ui@TextRange@toString': (m.Scope scope, TextRange target) =>
        target.toString,
    'dart:ui@ParagraphConstraints@#as': (m.Scope scope, target) =>
        () => target as ParagraphConstraints,
    'dart:ui@ParagraphConstraints@#is': (m.Scope scope, target) =>
        () => target is ParagraphConstraints,
    'dart:ui@ParagraphConstraints@width':
        (m.Scope scope, ParagraphConstraints target) => target.width,
    'dart:ui@ParagraphConstraints@hashCode':
        (m.Scope scope, ParagraphConstraints target) => target.hashCode,
    'dart:ui@ParagraphConstraints@': (m.Scope scope) => ({width}) {
          return ParagraphConstraints(width: width);
        },
    'dart:ui@ParagraphConstraints@==':
        (m.Scope scope, ParagraphConstraints target) =>
            (other) => target == other,
    'dart:ui@ParagraphConstraints@toString':
        (m.Scope scope, ParagraphConstraints target) => target.toString,
    'dart:ui@LineMetrics@#as': (m.Scope scope, target) =>
        () => target as LineMetrics,
    'dart:ui@LineMetrics@#is': (m.Scope scope, target) =>
        () => target is LineMetrics,
    'dart:ui@LineMetrics@hardBreak': (m.Scope scope, LineMetrics target) =>
        target.hardBreak,
    'dart:ui@LineMetrics@ascent': (m.Scope scope, LineMetrics target) =>
        target.ascent,
    'dart:ui@LineMetrics@descent': (m.Scope scope, LineMetrics target) =>
        target.descent,
    'dart:ui@LineMetrics@unscaledAscent': (m.Scope scope, LineMetrics target) =>
        target.unscaledAscent,
    'dart:ui@LineMetrics@height': (m.Scope scope, LineMetrics target) =>
        target.height,
    'dart:ui@LineMetrics@width': (m.Scope scope, LineMetrics target) =>
        target.width,
    'dart:ui@LineMetrics@left': (m.Scope scope, LineMetrics target) =>
        target.left,
    'dart:ui@LineMetrics@baseline': (m.Scope scope, LineMetrics target) =>
        target.baseline,
    'dart:ui@LineMetrics@lineNumber': (m.Scope scope, LineMetrics target) =>
        target.lineNumber,
    'dart:ui@LineMetrics@hashCode': (m.Scope scope, LineMetrics target) =>
        target.hashCode,
    'dart:ui@LineMetrics@': (m.Scope scope) => (
            {ascent,
            baseline,
            descent,
            hardBreak,
            height,
            left,
            lineNumber,
            unscaledAscent,
            width}) {
          return LineMetrics(
              ascent: ascent,
              baseline: baseline,
              descent: descent,
              hardBreak: hardBreak,
              height: height,
              left: left,
              lineNumber: lineNumber,
              unscaledAscent: unscaledAscent,
              width: width);
        },
    'dart:ui@LineMetrics@==': (m.Scope scope, LineMetrics target) =>
        (other) => target == other,
    'dart:ui@LineMetrics@toString': (m.Scope scope, LineMetrics target) =>
        target.toString,
    'dart:ui@Paragraph@#as': (m.Scope scope, target) =>
        () => target as Paragraph,
    'dart:ui@Paragraph@#is': (m.Scope scope, target) =>
        () => target is Paragraph,
    'dart:ui@Paragraph@width': (m.Scope scope, Paragraph target) =>
        target.width,
    'dart:ui@Paragraph@height': (m.Scope scope, Paragraph target) =>
        target.height,
    'dart:ui@Paragraph@longestLine': (m.Scope scope, Paragraph target) =>
        target.longestLine,
    'dart:ui@Paragraph@minIntrinsicWidth': (m.Scope scope, Paragraph target) =>
        target.minIntrinsicWidth,
    'dart:ui@Paragraph@maxIntrinsicWidth': (m.Scope scope, Paragraph target) =>
        target.maxIntrinsicWidth,
    'dart:ui@Paragraph@alphabeticBaseline': (m.Scope scope, Paragraph target) =>
        target.alphabeticBaseline,
    'dart:ui@Paragraph@ideographicBaseline':
        (m.Scope scope, Paragraph target) => target.ideographicBaseline,
    'dart:ui@Paragraph@didExceedMaxLines': (m.Scope scope, Paragraph target) =>
        target.didExceedMaxLines,
    'dart:ui@Paragraph@debugDisposed': (m.Scope scope, Paragraph target) =>
        target.debugDisposed,
    'dart:ui@Paragraph@layout': (m.Scope scope, Paragraph target) =>
        target.layout,
    'dart:ui@Paragraph@getBoxesForRange': (m.Scope scope, Paragraph target) =>
        target.getBoxesForRange,
    'dart:ui@Paragraph@getBoxesForPlaceholders':
        (m.Scope scope, Paragraph target) => target.getBoxesForPlaceholders,
    'dart:ui@Paragraph@getPositionForOffset':
        (m.Scope scope, Paragraph target) => target.getPositionForOffset,
    'dart:ui@Paragraph@getWordBoundary': (m.Scope scope, Paragraph target) =>
        target.getWordBoundary,
    'dart:ui@Paragraph@getLineBoundary': (m.Scope scope, Paragraph target) =>
        target.getLineBoundary,
    'dart:ui@Paragraph@computeLineMetrics': (m.Scope scope, Paragraph target) =>
        target.computeLineMetrics,
    'dart:ui@Paragraph@dispose': (m.Scope scope, Paragraph target) =>
        target.dispose,
    'dart:ui@ParagraphBuilder@#as': (m.Scope scope, target) =>
        () => target as ParagraphBuilder,
    'dart:ui@ParagraphBuilder@#is': (m.Scope scope, target) =>
        () => target is ParagraphBuilder,
    'dart:ui@ParagraphBuilder@placeholderCount':
        (m.Scope scope, ParagraphBuilder target) => target.placeholderCount,
    'dart:ui@ParagraphBuilder@placeholderScales':
        (m.Scope scope, ParagraphBuilder target) => target.placeholderScales,
    'dart:ui@ParagraphBuilder@': (m.Scope scope) => (style) {
          return ParagraphBuilder(style);
        },
    'dart:ui@ParagraphBuilder@pushStyle':
        (m.Scope scope, ParagraphBuilder target) => target.pushStyle,
    'dart:ui@ParagraphBuilder@pop': (m.Scope scope, ParagraphBuilder target) =>
        target.pop,
    'dart:ui@ParagraphBuilder@addText':
        (m.Scope scope, ParagraphBuilder target) => target.addText,
    'dart:ui@ParagraphBuilder@addPlaceholder':
        (m.Scope scope, ParagraphBuilder target) => target.addPlaceholder,
    'dart:ui@ParagraphBuilder@build':
        (m.Scope scope, ParagraphBuilder target) => target.build,
    'dart:ui@@loadFontFromList': (m.Scope scope) => loadFontFromList,
    'dart:ui@@window': (m.Scope scope) => window,
    'dart:ui@FlutterView@#as': (m.Scope scope, target) =>
        () => target as FlutterView,
    'dart:ui@FlutterView@#is': (m.Scope scope, target) =>
        () => target is FlutterView,
    'dart:ui@FlutterView@viewId': (m.Scope scope, FlutterView target) =>
        target.viewId,
    'dart:ui@FlutterView@platformDispatcher':
        (m.Scope scope, FlutterView target) => target.platformDispatcher,
    'dart:ui@FlutterView@devicePixelRatio':
        (m.Scope scope, FlutterView target) => target.devicePixelRatio,
    'dart:ui@FlutterView@physicalGeometry':
        (m.Scope scope, FlutterView target) => target.physicalGeometry,
    'dart:ui@FlutterView@physicalSize': (m.Scope scope, FlutterView target) =>
        target.physicalSize,
    'dart:ui@FlutterView@viewInsets': (m.Scope scope, FlutterView target) =>
        target.viewInsets,
    'dart:ui@FlutterView@viewPadding': (m.Scope scope, FlutterView target) =>
        target.viewPadding,
    'dart:ui@FlutterView@systemGestureInsets':
        (m.Scope scope, FlutterView target) => target.systemGestureInsets,
    'dart:ui@FlutterView@padding': (m.Scope scope, FlutterView target) =>
        target.padding,
    'dart:ui@FlutterView@gestureSettings':
        (m.Scope scope, FlutterView target) => target.gestureSettings,
    'dart:ui@FlutterView@displayFeatures':
        (m.Scope scope, FlutterView target) => target.displayFeatures,
    'dart:ui@FlutterView@render': (m.Scope scope, FlutterView target) =>
        target.render,
    'dart:ui@FlutterView@updateSemantics':
        (m.Scope scope, FlutterView target) => target.updateSemantics,
    'dart:ui@SingletonFlutterWindow@#as': (m.Scope scope, target) =>
        () => target as SingletonFlutterWindow,
    'dart:ui@SingletonFlutterWindow@#is': (m.Scope scope, target) =>
        () => target is SingletonFlutterWindow,
    'dart:ui@SingletonFlutterWindow@onMetricsChanged':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.onMetricsChanged,
    'dart:ui@SingletonFlutterWindow@onMetricsChanged:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onMetricsChanged = other,
    'dart:ui@SingletonFlutterWindow@locale':
        (m.Scope scope, SingletonFlutterWindow target) => target.locale,
    'dart:ui@SingletonFlutterWindow@locales':
        (m.Scope scope, SingletonFlutterWindow target) => target.locales,
    'dart:ui@SingletonFlutterWindow@onLocaleChanged':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.onLocaleChanged,
    'dart:ui@SingletonFlutterWindow@onLocaleChanged:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onLocaleChanged = other,
    'dart:ui@SingletonFlutterWindow@initialLifecycleState':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.initialLifecycleState,
    'dart:ui@SingletonFlutterWindow@textScaleFactor':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.textScaleFactor,
    'dart:ui@SingletonFlutterWindow@nativeSpellCheckServiceDefined':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.nativeSpellCheckServiceDefined,
    'dart:ui@SingletonFlutterWindow@brieflyShowPassword':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.brieflyShowPassword,
    'dart:ui@SingletonFlutterWindow@alwaysUse24HourFormat':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.alwaysUse24HourFormat,
    'dart:ui@SingletonFlutterWindow@onTextScaleFactorChanged':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.onTextScaleFactorChanged,
    'dart:ui@SingletonFlutterWindow@onTextScaleFactorChanged:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onTextScaleFactorChanged = other,
    'dart:ui@SingletonFlutterWindow@platformBrightness':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.platformBrightness,
    'dart:ui@SingletonFlutterWindow@onPlatformBrightnessChanged':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.onPlatformBrightnessChanged,
    'dart:ui@SingletonFlutterWindow@onPlatformBrightnessChanged:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onPlatformBrightnessChanged = other,
    'dart:ui@SingletonFlutterWindow@systemFontFamily':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.systemFontFamily,
    'dart:ui@SingletonFlutterWindow@onSystemFontFamilyChanged':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.onSystemFontFamilyChanged,
    'dart:ui@SingletonFlutterWindow@onSystemFontFamilyChanged:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onSystemFontFamilyChanged = other,
    'dart:ui@SingletonFlutterWindow@onBeginFrame':
        (m.Scope scope, SingletonFlutterWindow target) => target.onBeginFrame,
    'dart:ui@SingletonFlutterWindow@onBeginFrame:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onBeginFrame = other,
    'dart:ui@SingletonFlutterWindow@onDrawFrame':
        (m.Scope scope, SingletonFlutterWindow target) => target.onDrawFrame,
    'dart:ui@SingletonFlutterWindow@onDrawFrame:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onDrawFrame = other,
    'dart:ui@SingletonFlutterWindow@onReportTimings':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.onReportTimings,
    'dart:ui@SingletonFlutterWindow@onReportTimings:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onReportTimings = other,
    'dart:ui@SingletonFlutterWindow@onPointerDataPacket':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.onPointerDataPacket,
    'dart:ui@SingletonFlutterWindow@onPointerDataPacket:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onPointerDataPacket = other,
    'dart:ui@SingletonFlutterWindow@onKeyData':
        (m.Scope scope, SingletonFlutterWindow target) => target.onKeyData,
    'dart:ui@SingletonFlutterWindow@onKeyData:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onKeyData = other,
    'dart:ui@SingletonFlutterWindow@defaultRouteName':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.defaultRouteName,
    'dart:ui@SingletonFlutterWindow@semanticsEnabled':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.semanticsEnabled,
    'dart:ui@SingletonFlutterWindow@onSemanticsEnabledChanged':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.onSemanticsEnabledChanged,
    'dart:ui@SingletonFlutterWindow@onSemanticsEnabledChanged:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onSemanticsEnabledChanged = other,
    'dart:ui@SingletonFlutterWindow@frameData':
        (m.Scope scope, SingletonFlutterWindow target) => target.frameData,
    'dart:ui@SingletonFlutterWindow@onFrameDataChanged':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.onFrameDataChanged,
    'dart:ui@SingletonFlutterWindow@onFrameDataChanged:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onFrameDataChanged = other,
    'dart:ui@SingletonFlutterWindow@onSemanticsAction':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.onSemanticsAction,
    'dart:ui@SingletonFlutterWindow@onSemanticsAction:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onSemanticsAction = other,
    'dart:ui@SingletonFlutterWindow@accessibilityFeatures':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.accessibilityFeatures,
    'dart:ui@SingletonFlutterWindow@onAccessibilityFeaturesChanged':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.onAccessibilityFeaturesChanged,
    'dart:ui@SingletonFlutterWindow@onAccessibilityFeaturesChanged:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onAccessibilityFeaturesChanged = other,
    'dart:ui@SingletonFlutterWindow@onPlatformMessage':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.onPlatformMessage,
    'dart:ui@SingletonFlutterWindow@onPlatformMessage:set':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (other) => target.onPlatformMessage = other,
    'dart:ui@SingletonFlutterWindow@computePlatformResolvedLocale':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.computePlatformResolvedLocale,
    'dart:ui@SingletonFlutterWindow@scheduleFrame':
        (m.Scope scope, SingletonFlutterWindow target) => target.scheduleFrame,
    'dart:ui@SingletonFlutterWindow@sendPlatformMessage':
        (m.Scope scope, SingletonFlutterWindow target) =>
            (name, data, callback) {
              void callbackProxy(data) {
                engine.callFunctionPointer(scope, callback!, [data], {});
              }

              target.sendPlatformMessage(name, data, callbackProxy);
            },
    'dart:ui@SingletonFlutterWindow@setIsolateDebugName':
        (m.Scope scope, SingletonFlutterWindow target) =>
            target.setIsolateDebugName,
    'dart:ui@AccessibilityFeatures@#as': (m.Scope scope, target) =>
        () => target as AccessibilityFeatures,
    'dart:ui@AccessibilityFeatures@#is': (m.Scope scope, target) =>
        () => target is AccessibilityFeatures,
    'dart:ui@AccessibilityFeatures@accessibleNavigation':
        (m.Scope scope, AccessibilityFeatures target) =>
            target.accessibleNavigation,
    'dart:ui@AccessibilityFeatures@invertColors':
        (m.Scope scope, AccessibilityFeatures target) => target.invertColors,
    'dart:ui@AccessibilityFeatures@disableAnimations':
        (m.Scope scope, AccessibilityFeatures target) =>
            target.disableAnimations,
    'dart:ui@AccessibilityFeatures@boldText':
        (m.Scope scope, AccessibilityFeatures target) => target.boldText,
    'dart:ui@AccessibilityFeatures@reduceMotion':
        (m.Scope scope, AccessibilityFeatures target) => target.reduceMotion,
    'dart:ui@AccessibilityFeatures@highContrast':
        (m.Scope scope, AccessibilityFeatures target) => target.highContrast,
    'dart:ui@AccessibilityFeatures@onOffSwitchLabels':
        (m.Scope scope, AccessibilityFeatures target) =>
            target.onOffSwitchLabels,
    'dart:ui@AccessibilityFeatures@hashCode':
        (m.Scope scope, AccessibilityFeatures target) => target.hashCode,
    'dart:ui@AccessibilityFeatures@toString':
        (m.Scope scope, AccessibilityFeatures target) => target.toString,
    'dart:ui@AccessibilityFeatures@==':
        (m.Scope scope, AccessibilityFeatures target) =>
            (other) => target == other,
    'dart:ui@FrameData@#as': (m.Scope scope, target) =>
        () => target as FrameData,
    'dart:ui@FrameData@#is': (m.Scope scope, target) =>
        () => target is FrameData,
    'dart:ui@FrameData@frameNumber': (m.Scope scope, FrameData target) =>
        target.frameNumber,
    'dart:ui@GestureSettings@#as': (m.Scope scope, target) =>
        () => target as GestureSettings,
    'dart:ui@GestureSettings@#is': (m.Scope scope, target) =>
        () => target is GestureSettings,
    'dart:ui@GestureSettings@physicalTouchSlop':
        (m.Scope scope, GestureSettings target) => target.physicalTouchSlop,
    'dart:ui@GestureSettings@physicalDoubleTapSlop':
        (m.Scope scope, GestureSettings target) => target.physicalDoubleTapSlop,
    'dart:ui@GestureSettings@hashCode':
        (m.Scope scope, GestureSettings target) => target.hashCode,
    'dart:ui@GestureSettings@': (m.Scope scope) =>
        ({physicalDoubleTapSlop, physicalTouchSlop}) {
          return GestureSettings(
              physicalDoubleTapSlop: physicalDoubleTapSlop,
              physicalTouchSlop: physicalTouchSlop);
        },
    'dart:ui@GestureSettings@copyWith':
        (m.Scope scope, GestureSettings target) => target.copyWith,
    'dart:ui@GestureSettings@==': (m.Scope scope, GestureSettings target) =>
        (other) => target == other,
    'dart:ui@GestureSettings@toString':
        (m.Scope scope, GestureSettings target) => target.toString,
    'dart:ui@Brightness@light': (m.Scope scope) => Brightness.light,
    'dart:ui@Brightness@dark': (m.Scope scope) => Brightness.dark,
    'dart:ui@TextDirection@ltr': (m.Scope scope) => TextDirection.ltr,
    'dart:ui@TextDirection@rtl': (m.Scope scope) => TextDirection.rtl,
    'dart:ui@TextDirection@values': (m.Scope scope) => TextDirection.values,
    'dart:ui@Clip@antiAlias': (m.Scope scope) => Clip.antiAlias,
    'dart:ui@Clip@values': (m.Scope scope) => Clip.values,
    'dart:ui@Clip@antiAliasWithSaveLayer': (m.Scope scope) =>
        Clip.antiAliasWithSaveLayer,
    'dart:ui@Clip@hardEdge': (m.Scope scope) => Clip.hardEdge,
    'dart:ui@Clip@none': (m.Scope scope) => Clip.none,
    'dart:ui@TextAlign@end': (m.Scope scope) => TextAlign.end,
    'dart:ui@TextAlign@values': (m.Scope scope) => TextAlign.values,
    'dart:ui@TextAlign@center': (m.Scope scope) => TextAlign.center,
    'dart:ui@TextAlign@justify': (m.Scope scope) => TextAlign.justify,
    'dart:ui@TextAlign@left': (m.Scope scope) => TextAlign.left,
    'dart:ui@TextAlign@right': (m.Scope scope) => TextAlign.right,
    'dart:ui@TextAlign@start': (m.Scope scope) => TextAlign.start,
  };
}
