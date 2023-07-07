import 'package:flutter/src/widgets/basic.dart';
import 'dart:math';
import 'dart:ui' show Image, ImageFilter, TextHeightBehavior;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/src/widgets/visibility.dart';
import 'package:flutter/src/widgets/widget_span.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/basic.dart@Directionality@#as':
        (m.Scope scope, target) => () => target as Directionality,
    'package:flutter/src/widgets/basic.dart@Directionality@#is':
        (m.Scope scope, target) => () => target is Directionality,
    'package:flutter/src/widgets/basic.dart@Directionality@textDirection':
        (m.Scope scope, Directionality target) => target.textDirection,
    'package:flutter/src/widgets/basic.dart@Directionality@': (m.Scope scope) =>
        ({child, key, textDirection}) {
          return Directionality(
              child: child, key: key, textDirection: textDirection);
        },
    'package:flutter/src/widgets/basic.dart@Directionality@of':
        (m.Scope scope) => Directionality.of,
    'package:flutter/src/widgets/basic.dart@Directionality@maybeOf':
        (m.Scope scope) => Directionality.maybeOf,
    'package:flutter/src/widgets/basic.dart@Directionality@updateShouldNotify':
        (m.Scope scope, Directionality target) => target.updateShouldNotify,
    'package:flutter/src/widgets/basic.dart@Directionality@debugFillProperties':
        (m.Scope scope, Directionality target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@Opacity@#as':
        (m.Scope scope, target) => () => target as Opacity,
    'package:flutter/src/widgets/basic.dart@Opacity@#is':
        (m.Scope scope, target) => () => target is Opacity,
    'package:flutter/src/widgets/basic.dart@Opacity@opacity':
        (m.Scope scope, Opacity target) => target.opacity,
    'package:flutter/src/widgets/basic.dart@Opacity@alwaysIncludeSemantics':
        (m.Scope scope, Opacity target) => target.alwaysIncludeSemantics,
    'package:flutter/src/widgets/basic.dart@Opacity@': (m.Scope scope) =>
        ({alwaysIncludeSemantics, child, key, opacity}) {
          return Opacity(
              alwaysIncludeSemantics: alwaysIncludeSemantics ?? false,
              child: child,
              key: key,
              opacity: opacity);
        },
    'package:flutter/src/widgets/basic.dart@Opacity@createRenderObject':
        (m.Scope scope, Opacity target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Opacity@updateRenderObject':
        (m.Scope scope, Opacity target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@Opacity@debugFillProperties':
        (m.Scope scope, Opacity target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@ShaderMask@#as':
        (m.Scope scope, target) => () => target as ShaderMask,
    'package:flutter/src/widgets/basic.dart@ShaderMask@#is':
        (m.Scope scope, target) => () => target is ShaderMask,
    'package:flutter/src/widgets/basic.dart@ShaderMask@shaderCallback':
        (m.Scope scope, ShaderMask target) => target.shaderCallback,
    'package:flutter/src/widgets/basic.dart@ShaderMask@blendMode':
        (m.Scope scope, ShaderMask target) => target.blendMode,
    'package:flutter/src/widgets/basic.dart@ShaderMask@': (m.Scope scope) =>
        ({blendMode, child, key, shaderCallback}) {
          Shader shaderCallbackProxy(bounds) {
            return engine
                .callFunctionPointer(scope, shaderCallback!, [bounds], {});
          }

          return ShaderMask(
              blendMode: blendMode ?? BlendMode.modulate,
              child: child,
              key: key,
              shaderCallback: shaderCallbackProxy);
        },
    'package:flutter/src/widgets/basic.dart@ShaderMask@createRenderObject':
        (m.Scope scope, ShaderMask target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@ShaderMask@updateRenderObject':
        (m.Scope scope, ShaderMask target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@BackdropFilter@#as':
        (m.Scope scope, target) => () => target as BackdropFilter,
    'package:flutter/src/widgets/basic.dart@BackdropFilter@#is':
        (m.Scope scope, target) => () => target is BackdropFilter,
    'package:flutter/src/widgets/basic.dart@BackdropFilter@filter':
        (m.Scope scope, BackdropFilter target) => target.filter,
    'package:flutter/src/widgets/basic.dart@BackdropFilter@blendMode':
        (m.Scope scope, BackdropFilter target) => target.blendMode,
    'package:flutter/src/widgets/basic.dart@BackdropFilter@': (m.Scope scope) =>
        ({blendMode, child, filter, key}) {
          return BackdropFilter(
              blendMode: blendMode ?? BlendMode.srcOver,
              child: child,
              filter: filter,
              key: key);
        },
    'package:flutter/src/widgets/basic.dart@BackdropFilter@createRenderObject':
        (m.Scope scope, BackdropFilter target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@BackdropFilter@updateRenderObject':
        (m.Scope scope, BackdropFilter target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@CustomPaint@#as':
        (m.Scope scope, target) => () => target as CustomPaint,
    'package:flutter/src/widgets/basic.dart@CustomPaint@#is':
        (m.Scope scope, target) => () => target is CustomPaint,
    'package:flutter/src/widgets/basic.dart@CustomPaint@painter':
        (m.Scope scope, CustomPaint target) => target.painter,
    'package:flutter/src/widgets/basic.dart@CustomPaint@foregroundPainter':
        (m.Scope scope, CustomPaint target) => target.foregroundPainter,
    'package:flutter/src/widgets/basic.dart@CustomPaint@size':
        (m.Scope scope, CustomPaint target) => target.size,
    'package:flutter/src/widgets/basic.dart@CustomPaint@isComplex':
        (m.Scope scope, CustomPaint target) => target.isComplex,
    'package:flutter/src/widgets/basic.dart@CustomPaint@willChange':
        (m.Scope scope, CustomPaint target) => target.willChange,
    'package:flutter/src/widgets/basic.dart@CustomPaint@': (m.Scope scope) => (
            {child,
            foregroundPainter,
            isComplex,
            key,
            painter,
            size,
            willChange}) {
          return CustomPaint(
              child: child,
              foregroundPainter: foregroundPainter,
              isComplex: isComplex ?? false,
              key: key,
              painter: painter,
              size: size ?? Size.zero,
              willChange: willChange ?? false);
        },
    'package:flutter/src/widgets/basic.dart@CustomPaint@createRenderObject':
        (m.Scope scope, CustomPaint target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@CustomPaint@updateRenderObject':
        (m.Scope scope, CustomPaint target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@CustomPaint@didUnmountRenderObject':
        (m.Scope scope, CustomPaint target) => target.didUnmountRenderObject,
    'package:flutter/src/widgets/basic.dart@ClipRect@#as':
        (m.Scope scope, target) => () => target as ClipRect,
    'package:flutter/src/widgets/basic.dart@ClipRect@#is':
        (m.Scope scope, target) => () => target is ClipRect,
    'package:flutter/src/widgets/basic.dart@ClipRect@clipper':
        (m.Scope scope, ClipRect target) => target.clipper,
    'package:flutter/src/widgets/basic.dart@ClipRect@clipBehavior':
        (m.Scope scope, ClipRect target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@ClipRect@': (m.Scope scope) =>
        ({child, clipBehavior, clipper, key}) {
          return ClipRect(
              child: child,
              clipBehavior: clipBehavior ?? Clip.hardEdge,
              clipper: clipper,
              key: key);
        },
    'package:flutter/src/widgets/basic.dart@ClipRect@createRenderObject':
        (m.Scope scope, ClipRect target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@ClipRect@updateRenderObject':
        (m.Scope scope, ClipRect target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@ClipRect@didUnmountRenderObject':
        (m.Scope scope, ClipRect target) => target.didUnmountRenderObject,
    'package:flutter/src/widgets/basic.dart@ClipRect@debugFillProperties':
        (m.Scope scope, ClipRect target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@ClipRRect@#as':
        (m.Scope scope, target) => () => target as ClipRRect,
    'package:flutter/src/widgets/basic.dart@ClipRRect@#is':
        (m.Scope scope, target) => () => target is ClipRRect,
    'package:flutter/src/widgets/basic.dart@ClipRRect@borderRadius':
        (m.Scope scope, ClipRRect target) => target.borderRadius,
    'package:flutter/src/widgets/basic.dart@ClipRRect@clipper':
        (m.Scope scope, ClipRRect target) => target.clipper,
    'package:flutter/src/widgets/basic.dart@ClipRRect@clipBehavior':
        (m.Scope scope, ClipRRect target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@ClipRRect@': (m.Scope scope) =>
        ({borderRadius, child, clipBehavior, clipper, key}) {
          return ClipRRect(
              borderRadius: borderRadius ?? BorderRadius.zero,
              child: child,
              clipBehavior: clipBehavior ?? Clip.antiAlias,
              clipper: clipper,
              key: key);
        },
    'package:flutter/src/widgets/basic.dart@ClipRRect@createRenderObject':
        (m.Scope scope, ClipRRect target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@ClipRRect@updateRenderObject':
        (m.Scope scope, ClipRRect target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@ClipRRect@debugFillProperties':
        (m.Scope scope, ClipRRect target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@ClipOval@#as':
        (m.Scope scope, target) => () => target as ClipOval,
    'package:flutter/src/widgets/basic.dart@ClipOval@#is':
        (m.Scope scope, target) => () => target is ClipOval,
    'package:flutter/src/widgets/basic.dart@ClipOval@clipper':
        (m.Scope scope, ClipOval target) => target.clipper,
    'package:flutter/src/widgets/basic.dart@ClipOval@clipBehavior':
        (m.Scope scope, ClipOval target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@ClipOval@': (m.Scope scope) =>
        ({child, clipBehavior, clipper, key}) {
          return ClipOval(
              child: child,
              clipBehavior: clipBehavior ?? Clip.antiAlias,
              clipper: clipper,
              key: key);
        },
    'package:flutter/src/widgets/basic.dart@ClipOval@createRenderObject':
        (m.Scope scope, ClipOval target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@ClipOval@updateRenderObject':
        (m.Scope scope, ClipOval target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@ClipOval@didUnmountRenderObject':
        (m.Scope scope, ClipOval target) => target.didUnmountRenderObject,
    'package:flutter/src/widgets/basic.dart@ClipOval@debugFillProperties':
        (m.Scope scope, ClipOval target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@ClipPath@#as':
        (m.Scope scope, target) => () => target as ClipPath,
    'package:flutter/src/widgets/basic.dart@ClipPath@#is':
        (m.Scope scope, target) => () => target is ClipPath,
    'package:flutter/src/widgets/basic.dart@ClipPath@clipper':
        (m.Scope scope, ClipPath target) => target.clipper,
    'package:flutter/src/widgets/basic.dart@ClipPath@clipBehavior':
        (m.Scope scope, ClipPath target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@ClipPath@': (m.Scope scope) =>
        ({child, clipBehavior, clipper, key}) {
          return ClipPath(
              child: child,
              clipBehavior: clipBehavior ?? Clip.antiAlias,
              clipper: clipper,
              key: key);
        },
    'package:flutter/src/widgets/basic.dart@ClipPath@shape': (m.Scope scope) =>
        ClipPath.shape,
    'package:flutter/src/widgets/basic.dart@ClipPath@createRenderObject':
        (m.Scope scope, ClipPath target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@ClipPath@updateRenderObject':
        (m.Scope scope, ClipPath target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@ClipPath@didUnmountRenderObject':
        (m.Scope scope, ClipPath target) => target.didUnmountRenderObject,
    'package:flutter/src/widgets/basic.dart@ClipPath@debugFillProperties':
        (m.Scope scope, ClipPath target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@PhysicalModel@#as':
        (m.Scope scope, target) => () => target as PhysicalModel,
    'package:flutter/src/widgets/basic.dart@PhysicalModel@#is':
        (m.Scope scope, target) => () => target is PhysicalModel,
    'package:flutter/src/widgets/basic.dart@PhysicalModel@shape':
        (m.Scope scope, PhysicalModel target) => target.shape,
    'package:flutter/src/widgets/basic.dart@PhysicalModel@clipBehavior':
        (m.Scope scope, PhysicalModel target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@PhysicalModel@borderRadius':
        (m.Scope scope, PhysicalModel target) => target.borderRadius,
    'package:flutter/src/widgets/basic.dart@PhysicalModel@elevation':
        (m.Scope scope, PhysicalModel target) => target.elevation,
    'package:flutter/src/widgets/basic.dart@PhysicalModel@color':
        (m.Scope scope, PhysicalModel target) => target.color,
    'package:flutter/src/widgets/basic.dart@PhysicalModel@shadowColor':
        (m.Scope scope, PhysicalModel target) => target.shadowColor,
    'package:flutter/src/widgets/basic.dart@PhysicalModel@': (m.Scope scope) =>
        (
            {borderRadius,
            child,
            clipBehavior,
            color,
            elevation,
            key,
            shadowColor,
            shape}) {
          return PhysicalModel(
              borderRadius: borderRadius,
              child: child,
              clipBehavior: clipBehavior ?? Clip.none,
              color: color,
              elevation: elevation ?? 0.0,
              key: key,
              shadowColor: shadowColor ?? const Color(0xFF000000),
              shape: shape ?? BoxShape.rectangle);
        },
    'package:flutter/src/widgets/basic.dart@PhysicalModel@createRenderObject':
        (m.Scope scope, PhysicalModel target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@PhysicalModel@updateRenderObject':
        (m.Scope scope, PhysicalModel target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@PhysicalModel@debugFillProperties':
        (m.Scope scope, PhysicalModel target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@PhysicalShape@#as':
        (m.Scope scope, target) => () => target as PhysicalShape,
    'package:flutter/src/widgets/basic.dart@PhysicalShape@#is':
        (m.Scope scope, target) => () => target is PhysicalShape,
    'package:flutter/src/widgets/basic.dart@PhysicalShape@clipper':
        (m.Scope scope, PhysicalShape target) => target.clipper,
    'package:flutter/src/widgets/basic.dart@PhysicalShape@clipBehavior':
        (m.Scope scope, PhysicalShape target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@PhysicalShape@elevation':
        (m.Scope scope, PhysicalShape target) => target.elevation,
    'package:flutter/src/widgets/basic.dart@PhysicalShape@color':
        (m.Scope scope, PhysicalShape target) => target.color,
    'package:flutter/src/widgets/basic.dart@PhysicalShape@shadowColor':
        (m.Scope scope, PhysicalShape target) => target.shadowColor,
    'package:flutter/src/widgets/basic.dart@PhysicalShape@': (m.Scope scope) =>
        ({child, clipBehavior, clipper, color, elevation, key, shadowColor}) {
          return PhysicalShape(
              child: child,
              clipBehavior: clipBehavior ?? Clip.none,
              clipper: clipper,
              color: color,
              elevation: elevation ?? 0.0,
              key: key,
              shadowColor: shadowColor ?? const Color(0xFF000000));
        },
    'package:flutter/src/widgets/basic.dart@PhysicalShape@createRenderObject':
        (m.Scope scope, PhysicalShape target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@PhysicalShape@updateRenderObject':
        (m.Scope scope, PhysicalShape target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@PhysicalShape@debugFillProperties':
        (m.Scope scope, PhysicalShape target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@Transform@#as':
        (m.Scope scope, target) => () => target as Transform,
    'package:flutter/src/widgets/basic.dart@Transform@#is':
        (m.Scope scope, target) => () => target is Transform,
    'package:flutter/src/widgets/basic.dart@Transform@transform':
        (m.Scope scope, Transform target) => target.transform,
    'package:flutter/src/widgets/basic.dart@Transform@origin':
        (m.Scope scope, Transform target) => target.origin,
    'package:flutter/src/widgets/basic.dart@Transform@alignment':
        (m.Scope scope, Transform target) => target.alignment,
    'package:flutter/src/widgets/basic.dart@Transform@transformHitTests':
        (m.Scope scope, Transform target) => target.transformHitTests,
    'package:flutter/src/widgets/basic.dart@Transform@filterQuality':
        (m.Scope scope, Transform target) => target.filterQuality,
    'package:flutter/src/widgets/basic.dart@Transform@': (m.Scope scope) => (
            {alignment,
            child,
            filterQuality,
            key,
            origin,
            transform,
            transformHitTests}) {
          return Transform(
              alignment: alignment,
              child: child,
              filterQuality: filterQuality,
              key: key,
              origin: origin,
              transform: transform,
              transformHitTests: transformHitTests ?? true);
        },
    'package:flutter/src/widgets/basic.dart@Transform@rotate':
        (m.Scope scope) => Transform.rotate,
    'package:flutter/src/widgets/basic.dart@Transform@translate':
        (m.Scope scope) => Transform.translate,
    'package:flutter/src/widgets/basic.dart@Transform@scale': (m.Scope scope) =>
        Transform.scale,
    'package:flutter/src/widgets/basic.dart@Transform@flip': (m.Scope scope) =>
        Transform.flip,
    'package:flutter/src/widgets/basic.dart@Transform@createRenderObject':
        (m.Scope scope, Transform target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Transform@updateRenderObject':
        (m.Scope scope, Transform target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@CompositedTransformTarget@#as':
        (m.Scope scope, target) => () => target as CompositedTransformTarget,
    'package:flutter/src/widgets/basic.dart@CompositedTransformTarget@#is':
        (m.Scope scope, target) => () => target is CompositedTransformTarget,
    'package:flutter/src/widgets/basic.dart@CompositedTransformTarget@link':
        (m.Scope scope, CompositedTransformTarget target) => target.link,
    'package:flutter/src/widgets/basic.dart@CompositedTransformTarget@':
        (m.Scope scope) => ({child, key, link}) {
              return CompositedTransformTarget(
                  child: child, key: key, link: link);
            },
    'package:flutter/src/widgets/basic.dart@CompositedTransformTarget@createRenderObject':
        (m.Scope scope, CompositedTransformTarget target) =>
            target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@CompositedTransformTarget@updateRenderObject':
        (m.Scope scope, CompositedTransformTarget target) =>
            target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@CompositedTransformFollower@#as':
        (m.Scope scope, target) => () => target as CompositedTransformFollower,
    'package:flutter/src/widgets/basic.dart@CompositedTransformFollower@#is':
        (m.Scope scope, target) => () => target is CompositedTransformFollower,
    'package:flutter/src/widgets/basic.dart@CompositedTransformFollower@link':
        (m.Scope scope, CompositedTransformFollower target) => target.link,
    'package:flutter/src/widgets/basic.dart@CompositedTransformFollower@showWhenUnlinked':
        (m.Scope scope, CompositedTransformFollower target) =>
            target.showWhenUnlinked,
    'package:flutter/src/widgets/basic.dart@CompositedTransformFollower@targetAnchor':
        (m.Scope scope, CompositedTransformFollower target) =>
            target.targetAnchor,
    'package:flutter/src/widgets/basic.dart@CompositedTransformFollower@followerAnchor':
        (m.Scope scope, CompositedTransformFollower target) =>
            target.followerAnchor,
    'package:flutter/src/widgets/basic.dart@CompositedTransformFollower@offset':
        (m.Scope scope, CompositedTransformFollower target) => target.offset,
    'package:flutter/src/widgets/basic.dart@CompositedTransformFollower@':
        (m.Scope scope) => (
                {child,
                followerAnchor,
                key,
                link,
                offset,
                showWhenUnlinked,
                targetAnchor}) {
              return CompositedTransformFollower(
                  child: child,
                  followerAnchor: followerAnchor ?? Alignment.topLeft,
                  key: key,
                  link: link,
                  offset: offset ?? Offset.zero,
                  showWhenUnlinked: showWhenUnlinked ?? true,
                  targetAnchor: targetAnchor ?? Alignment.topLeft);
            },
    'package:flutter/src/widgets/basic.dart@CompositedTransformFollower@createRenderObject':
        (m.Scope scope, CompositedTransformFollower target) =>
            target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@CompositedTransformFollower@updateRenderObject':
        (m.Scope scope, CompositedTransformFollower target) =>
            target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@FittedBox@#as':
        (m.Scope scope, target) => () => target as FittedBox,
    'package:flutter/src/widgets/basic.dart@FittedBox@#is':
        (m.Scope scope, target) => () => target is FittedBox,
    'package:flutter/src/widgets/basic.dart@FittedBox@fit':
        (m.Scope scope, FittedBox target) => target.fit,
    'package:flutter/src/widgets/basic.dart@FittedBox@alignment':
        (m.Scope scope, FittedBox target) => target.alignment,
    'package:flutter/src/widgets/basic.dart@FittedBox@clipBehavior':
        (m.Scope scope, FittedBox target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@FittedBox@': (m.Scope scope) =>
        ({alignment, child, clipBehavior, fit, key}) {
          return FittedBox(
              alignment: alignment ?? Alignment.center,
              child: child,
              clipBehavior: clipBehavior ?? Clip.none,
              fit: fit ?? BoxFit.contain,
              key: key);
        },
    'package:flutter/src/widgets/basic.dart@FittedBox@createRenderObject':
        (m.Scope scope, FittedBox target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@FittedBox@updateRenderObject':
        (m.Scope scope, FittedBox target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@FittedBox@debugFillProperties':
        (m.Scope scope, FittedBox target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@FractionalTranslation@#as':
        (m.Scope scope, target) => () => target as FractionalTranslation,
    'package:flutter/src/widgets/basic.dart@FractionalTranslation@#is':
        (m.Scope scope, target) => () => target is FractionalTranslation,
    'package:flutter/src/widgets/basic.dart@FractionalTranslation@translation':
        (m.Scope scope, FractionalTranslation target) => target.translation,
    'package:flutter/src/widgets/basic.dart@FractionalTranslation@transformHitTests':
        (m.Scope scope, FractionalTranslation target) =>
            target.transformHitTests,
    'package:flutter/src/widgets/basic.dart@FractionalTranslation@':
        (m.Scope scope) => ({child, key, transformHitTests, translation}) {
              return FractionalTranslation(
                  child: child,
                  key: key,
                  transformHitTests: transformHitTests ?? true,
                  translation: translation);
            },
    'package:flutter/src/widgets/basic.dart@FractionalTranslation@createRenderObject':
        (m.Scope scope, FractionalTranslation target) =>
            target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@FractionalTranslation@updateRenderObject':
        (m.Scope scope, FractionalTranslation target) =>
            target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@RotatedBox@#as':
        (m.Scope scope, target) => () => target as RotatedBox,
    'package:flutter/src/widgets/basic.dart@RotatedBox@#is':
        (m.Scope scope, target) => () => target is RotatedBox,
    'package:flutter/src/widgets/basic.dart@RotatedBox@quarterTurns':
        (m.Scope scope, RotatedBox target) => target.quarterTurns,
    'package:flutter/src/widgets/basic.dart@RotatedBox@': (m.Scope scope) =>
        ({child, key, quarterTurns}) {
          return RotatedBox(child: child, key: key, quarterTurns: quarterTurns);
        },
    'package:flutter/src/widgets/basic.dart@RotatedBox@createRenderObject':
        (m.Scope scope, RotatedBox target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@RotatedBox@updateRenderObject':
        (m.Scope scope, RotatedBox target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@Padding@#as':
        (m.Scope scope, target) => () => target as Padding,
    'package:flutter/src/widgets/basic.dart@Padding@#is':
        (m.Scope scope, target) => () => target is Padding,
    'package:flutter/src/widgets/basic.dart@Padding@padding':
        (m.Scope scope, Padding target) => target.padding,
    'package:flutter/src/widgets/basic.dart@Padding@': (m.Scope scope) =>
        ({child, key, padding}) {
          return Padding(child: child, key: key, padding: padding);
        },
    'package:flutter/src/widgets/basic.dart@Padding@createRenderObject':
        (m.Scope scope, Padding target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Padding@updateRenderObject':
        (m.Scope scope, Padding target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@Padding@debugFillProperties':
        (m.Scope scope, Padding target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@Align@#as':
        (m.Scope scope, target) => () => target as Align,
    'package:flutter/src/widgets/basic.dart@Align@#is':
        (m.Scope scope, target) => () => target is Align,
    'package:flutter/src/widgets/basic.dart@Align@alignment':
        (m.Scope scope, Align target) => target.alignment,
    'package:flutter/src/widgets/basic.dart@Align@widthFactor':
        (m.Scope scope, Align target) => target.widthFactor,
    'package:flutter/src/widgets/basic.dart@Align@heightFactor':
        (m.Scope scope, Align target) => target.heightFactor,
    'package:flutter/src/widgets/basic.dart@Align@': (m.Scope scope) =>
        ({alignment, child, heightFactor, key, widthFactor}) {
          return Align(
              alignment: alignment ?? Alignment.center,
              child: child,
              heightFactor: heightFactor,
              key: key,
              widthFactor: widthFactor);
        },
    'package:flutter/src/widgets/basic.dart@Align@createRenderObject':
        (m.Scope scope, Align target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Align@updateRenderObject':
        (m.Scope scope, Align target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@Align@debugFillProperties':
        (m.Scope scope, Align target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@Center@#as':
        (m.Scope scope, target) => () => target as Center,
    'package:flutter/src/widgets/basic.dart@Center@#is':
        (m.Scope scope, target) => () => target is Center,
    'package:flutter/src/widgets/basic.dart@Center@': (m.Scope scope) =>
        ({child, heightFactor, key, widthFactor}) {
          return Center(
              child: child,
              heightFactor: heightFactor,
              key: key,
              widthFactor: widthFactor);
        },
    'package:flutter/src/widgets/basic.dart@CustomSingleChildLayout@#as':
        (m.Scope scope, target) => () => target as CustomSingleChildLayout,
    'package:flutter/src/widgets/basic.dart@CustomSingleChildLayout@#is':
        (m.Scope scope, target) => () => target is CustomSingleChildLayout,
    'package:flutter/src/widgets/basic.dart@CustomSingleChildLayout@delegate':
        (m.Scope scope, CustomSingleChildLayout target) => target.delegate,
    'package:flutter/src/widgets/basic.dart@CustomSingleChildLayout@':
        (m.Scope scope) => ({child, delegate, key}) {
              return CustomSingleChildLayout(
                  child: child, delegate: delegate, key: key);
            },
    'package:flutter/src/widgets/basic.dart@CustomSingleChildLayout@createRenderObject':
        (m.Scope scope, CustomSingleChildLayout target) =>
            target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@CustomSingleChildLayout@updateRenderObject':
        (m.Scope scope, CustomSingleChildLayout target) =>
            target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@LayoutId@#as':
        (m.Scope scope, target) => () => target as LayoutId,
    'package:flutter/src/widgets/basic.dart@LayoutId@#is':
        (m.Scope scope, target) => () => target is LayoutId,
    'package:flutter/src/widgets/basic.dart@LayoutId@id':
        (m.Scope scope, LayoutId target) => target.id,
    'package:flutter/src/widgets/basic.dart@LayoutId@debugTypicalAncestorWidgetClass':
        (m.Scope scope, LayoutId target) =>
            target.debugTypicalAncestorWidgetClass,
    'package:flutter/src/widgets/basic.dart@LayoutId@': (m.Scope scope) =>
        ({child, id, key}) {
          return LayoutId(child: child, id: id, key: key);
        },
    'package:flutter/src/widgets/basic.dart@LayoutId@applyParentData':
        (m.Scope scope, LayoutId target) => target.applyParentData,
    'package:flutter/src/widgets/basic.dart@LayoutId@debugFillProperties':
        (m.Scope scope, LayoutId target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@CustomMultiChildLayout@#as':
        (m.Scope scope, target) => () => target as CustomMultiChildLayout,
    'package:flutter/src/widgets/basic.dart@CustomMultiChildLayout@#is':
        (m.Scope scope, target) => () => target is CustomMultiChildLayout,
    'package:flutter/src/widgets/basic.dart@CustomMultiChildLayout@delegate':
        (m.Scope scope, CustomMultiChildLayout target) => target.delegate,
    'package:flutter/src/widgets/basic.dart@CustomMultiChildLayout@':
        (m.Scope scope) => ({children, delegate, key}) {
              return CustomMultiChildLayout(
                  children: children?.map<Widget>((e) => e).toList() ??
                      const <Widget>[],
                  delegate: delegate,
                  key: key);
            },
    'package:flutter/src/widgets/basic.dart@CustomMultiChildLayout@createRenderObject':
        (m.Scope scope, CustomMultiChildLayout target) =>
            target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@CustomMultiChildLayout@updateRenderObject':
        (m.Scope scope, CustomMultiChildLayout target) =>
            target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@SizedBox@#as':
        (m.Scope scope, target) => () => target as SizedBox,
    'package:flutter/src/widgets/basic.dart@SizedBox@#is':
        (m.Scope scope, target) => () => target is SizedBox,
    'package:flutter/src/widgets/basic.dart@SizedBox@width':
        (m.Scope scope, SizedBox target) => target.width,
    'package:flutter/src/widgets/basic.dart@SizedBox@height':
        (m.Scope scope, SizedBox target) => target.height,
    'package:flutter/src/widgets/basic.dart@SizedBox@': (m.Scope scope) =>
        ({child, height, key, width}) {
          return SizedBox(child: child, height: height, key: key, width: width);
        },
    'package:flutter/src/widgets/basic.dart@SizedBox@expand': (m.Scope scope) =>
        SizedBox.expand,
    'package:flutter/src/widgets/basic.dart@SizedBox@shrink': (m.Scope scope) =>
        SizedBox.shrink,
    'package:flutter/src/widgets/basic.dart@SizedBox@fromSize':
        (m.Scope scope) => SizedBox.fromSize,
    'package:flutter/src/widgets/basic.dart@SizedBox@square': (m.Scope scope) =>
        SizedBox.square,
    'package:flutter/src/widgets/basic.dart@SizedBox@createRenderObject':
        (m.Scope scope, SizedBox target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@SizedBox@updateRenderObject':
        (m.Scope scope, SizedBox target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@SizedBox@toStringShort':
        (m.Scope scope, SizedBox target) => target.toStringShort,
    'package:flutter/src/widgets/basic.dart@SizedBox@debugFillProperties':
        (m.Scope scope, SizedBox target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@ConstrainedBox@#as':
        (m.Scope scope, target) => () => target as ConstrainedBox,
    'package:flutter/src/widgets/basic.dart@ConstrainedBox@#is':
        (m.Scope scope, target) => () => target is ConstrainedBox,
    'package:flutter/src/widgets/basic.dart@ConstrainedBox@constraints':
        (m.Scope scope, ConstrainedBox target) => target.constraints,
    'package:flutter/src/widgets/basic.dart@ConstrainedBox@': (m.Scope scope) =>
        ({child, constraints, key}) {
          return ConstrainedBox(
              child: child, constraints: constraints, key: key);
        },
    'package:flutter/src/widgets/basic.dart@ConstrainedBox@createRenderObject':
        (m.Scope scope, ConstrainedBox target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@ConstrainedBox@updateRenderObject':
        (m.Scope scope, ConstrainedBox target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@ConstrainedBox@debugFillProperties':
        (m.Scope scope, ConstrainedBox target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@#as':
        (m.Scope scope, target) => () => target as ConstraintsTransformBox,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@#is':
        (m.Scope scope, target) => () => target is ConstraintsTransformBox,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@textDirection':
        (m.Scope scope, ConstraintsTransformBox target) => target.textDirection,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@alignment':
        (m.Scope scope, ConstraintsTransformBox target) => target.alignment,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@constraintsTransform':
        (m.Scope scope, ConstraintsTransformBox target) =>
            target.constraintsTransform,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@clipBehavior':
        (m.Scope scope, ConstraintsTransformBox target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@':
        (m.Scope scope) => (
                {alignment,
                child,
                clipBehavior,
                constraintsTransform,
                debugTransformType,
                key,
                textDirection}) {
              BoxConstraints constraintsTransformProxy($p0) {
                return engine.callFunctionPointer(
                    scope, constraintsTransform!, [$p0], {});
              }

              return ConstraintsTransformBox(
                  alignment: alignment ?? Alignment.center,
                  child: child,
                  clipBehavior: clipBehavior ?? Clip.none,
                  constraintsTransform: constraintsTransformProxy,
                  debugTransformType: debugTransformType ?? '',
                  key: key,
                  textDirection: textDirection);
            },
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@unmodified':
        (m.Scope scope) => ConstraintsTransformBox.unmodified,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@unconstrained':
        (m.Scope scope) => ConstraintsTransformBox.unconstrained,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@widthUnconstrained':
        (m.Scope scope) => ConstraintsTransformBox.widthUnconstrained,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@heightUnconstrained':
        (m.Scope scope) => ConstraintsTransformBox.heightUnconstrained,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@maxHeightUnconstrained':
        (m.Scope scope) => ConstraintsTransformBox.maxHeightUnconstrained,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@maxWidthUnconstrained':
        (m.Scope scope) => ConstraintsTransformBox.maxWidthUnconstrained,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@maxUnconstrained':
        (m.Scope scope) => ConstraintsTransformBox.maxUnconstrained,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@createRenderObject':
        (m.Scope scope, ConstraintsTransformBox target) =>
            target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@updateRenderObject':
        (m.Scope scope, ConstraintsTransformBox target) =>
            target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@ConstraintsTransformBox@debugFillProperties':
        (m.Scope scope, ConstraintsTransformBox target) =>
            target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@UnconstrainedBox@#as':
        (m.Scope scope, target) => () => target as UnconstrainedBox,
    'package:flutter/src/widgets/basic.dart@UnconstrainedBox@#is':
        (m.Scope scope, target) => () => target is UnconstrainedBox,
    'package:flutter/src/widgets/basic.dart@UnconstrainedBox@textDirection':
        (m.Scope scope, UnconstrainedBox target) => target.textDirection,
    'package:flutter/src/widgets/basic.dart@UnconstrainedBox@alignment':
        (m.Scope scope, UnconstrainedBox target) => target.alignment,
    'package:flutter/src/widgets/basic.dart@UnconstrainedBox@constrainedAxis':
        (m.Scope scope, UnconstrainedBox target) => target.constrainedAxis,
    'package:flutter/src/widgets/basic.dart@UnconstrainedBox@clipBehavior':
        (m.Scope scope, UnconstrainedBox target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@UnconstrainedBox@child':
        (m.Scope scope, UnconstrainedBox target) => target.child,
    'package:flutter/src/widgets/basic.dart@UnconstrainedBox@':
        (m.Scope scope) => (
                {alignment,
                child,
                clipBehavior,
                constrainedAxis,
                key,
                textDirection}) {
              return UnconstrainedBox(
                  alignment: alignment ?? Alignment.center,
                  child: child,
                  clipBehavior: clipBehavior ?? Clip.none,
                  constrainedAxis: constrainedAxis,
                  key: key,
                  textDirection: textDirection);
            },
    'package:flutter/src/widgets/basic.dart@UnconstrainedBox@build':
        (m.Scope scope, UnconstrainedBox target) => target.build,
    'package:flutter/src/widgets/basic.dart@UnconstrainedBox@debugFillProperties':
        (m.Scope scope, UnconstrainedBox target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@FractionallySizedBox@#as':
        (m.Scope scope, target) => () => target as FractionallySizedBox,
    'package:flutter/src/widgets/basic.dart@FractionallySizedBox@#is':
        (m.Scope scope, target) => () => target is FractionallySizedBox,
    'package:flutter/src/widgets/basic.dart@FractionallySizedBox@widthFactor':
        (m.Scope scope, FractionallySizedBox target) => target.widthFactor,
    'package:flutter/src/widgets/basic.dart@FractionallySizedBox@heightFactor':
        (m.Scope scope, FractionallySizedBox target) => target.heightFactor,
    'package:flutter/src/widgets/basic.dart@FractionallySizedBox@alignment':
        (m.Scope scope, FractionallySizedBox target) => target.alignment,
    'package:flutter/src/widgets/basic.dart@FractionallySizedBox@':
        (m.Scope scope) =>
            ({alignment, child, heightFactor, key, widthFactor}) {
              return FractionallySizedBox(
                  alignment: alignment ?? Alignment.center,
                  child: child,
                  heightFactor: heightFactor,
                  key: key,
                  widthFactor: widthFactor);
            },
    'package:flutter/src/widgets/basic.dart@FractionallySizedBox@createRenderObject':
        (m.Scope scope, FractionallySizedBox target) =>
            target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@FractionallySizedBox@updateRenderObject':
        (m.Scope scope, FractionallySizedBox target) =>
            target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@FractionallySizedBox@debugFillProperties':
        (m.Scope scope, FractionallySizedBox target) =>
            target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@LimitedBox@#as':
        (m.Scope scope, target) => () => target as LimitedBox,
    'package:flutter/src/widgets/basic.dart@LimitedBox@#is':
        (m.Scope scope, target) => () => target is LimitedBox,
    'package:flutter/src/widgets/basic.dart@LimitedBox@maxWidth':
        (m.Scope scope, LimitedBox target) => target.maxWidth,
    'package:flutter/src/widgets/basic.dart@LimitedBox@maxHeight':
        (m.Scope scope, LimitedBox target) => target.maxHeight,
    'package:flutter/src/widgets/basic.dart@LimitedBox@': (m.Scope scope) =>
        ({child, key, maxHeight, maxWidth}) {
          return LimitedBox(
              child: child,
              key: key,
              maxHeight: maxHeight ?? double.infinity,
              maxWidth: maxWidth ?? double.infinity);
        },
    'package:flutter/src/widgets/basic.dart@LimitedBox@createRenderObject':
        (m.Scope scope, LimitedBox target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@LimitedBox@updateRenderObject':
        (m.Scope scope, LimitedBox target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@LimitedBox@debugFillProperties':
        (m.Scope scope, LimitedBox target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@OverflowBox@#as':
        (m.Scope scope, target) => () => target as OverflowBox,
    'package:flutter/src/widgets/basic.dart@OverflowBox@#is':
        (m.Scope scope, target) => () => target is OverflowBox,
    'package:flutter/src/widgets/basic.dart@OverflowBox@alignment':
        (m.Scope scope, OverflowBox target) => target.alignment,
    'package:flutter/src/widgets/basic.dart@OverflowBox@minWidth':
        (m.Scope scope, OverflowBox target) => target.minWidth,
    'package:flutter/src/widgets/basic.dart@OverflowBox@maxWidth':
        (m.Scope scope, OverflowBox target) => target.maxWidth,
    'package:flutter/src/widgets/basic.dart@OverflowBox@minHeight':
        (m.Scope scope, OverflowBox target) => target.minHeight,
    'package:flutter/src/widgets/basic.dart@OverflowBox@maxHeight':
        (m.Scope scope, OverflowBox target) => target.maxHeight,
    'package:flutter/src/widgets/basic.dart@OverflowBox@': (m.Scope scope) =>
        ({alignment, child, key, maxHeight, maxWidth, minHeight, minWidth}) {
          return OverflowBox(
              alignment: alignment ?? Alignment.center,
              child: child,
              key: key,
              maxHeight: maxHeight,
              maxWidth: maxWidth,
              minHeight: minHeight,
              minWidth: minWidth);
        },
    'package:flutter/src/widgets/basic.dart@OverflowBox@createRenderObject':
        (m.Scope scope, OverflowBox target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@OverflowBox@updateRenderObject':
        (m.Scope scope, OverflowBox target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@OverflowBox@debugFillProperties':
        (m.Scope scope, OverflowBox target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@SizedOverflowBox@#as':
        (m.Scope scope, target) => () => target as SizedOverflowBox,
    'package:flutter/src/widgets/basic.dart@SizedOverflowBox@#is':
        (m.Scope scope, target) => () => target is SizedOverflowBox,
    'package:flutter/src/widgets/basic.dart@SizedOverflowBox@alignment':
        (m.Scope scope, SizedOverflowBox target) => target.alignment,
    'package:flutter/src/widgets/basic.dart@SizedOverflowBox@size':
        (m.Scope scope, SizedOverflowBox target) => target.size,
    'package:flutter/src/widgets/basic.dart@SizedOverflowBox@':
        (m.Scope scope) => ({alignment, child, key, size}) {
              return SizedOverflowBox(
                  alignment: alignment ?? Alignment.center,
                  child: child,
                  key: key,
                  size: size);
            },
    'package:flutter/src/widgets/basic.dart@SizedOverflowBox@createRenderObject':
        (m.Scope scope, SizedOverflowBox target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@SizedOverflowBox@updateRenderObject':
        (m.Scope scope, SizedOverflowBox target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@SizedOverflowBox@debugFillProperties':
        (m.Scope scope, SizedOverflowBox target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@Offstage@#as':
        (m.Scope scope, target) => () => target as Offstage,
    'package:flutter/src/widgets/basic.dart@Offstage@#is':
        (m.Scope scope, target) => () => target is Offstage,
    'package:flutter/src/widgets/basic.dart@Offstage@offstage':
        (m.Scope scope, Offstage target) => target.offstage,
    'package:flutter/src/widgets/basic.dart@Offstage@': (m.Scope scope) =>
        ({child, key, offstage}) {
          return Offstage(child: child, key: key, offstage: offstage ?? true);
        },
    'package:flutter/src/widgets/basic.dart@Offstage@createRenderObject':
        (m.Scope scope, Offstage target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Offstage@updateRenderObject':
        (m.Scope scope, Offstage target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@Offstage@debugFillProperties':
        (m.Scope scope, Offstage target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@Offstage@createElement':
        (m.Scope scope, Offstage target) => target.createElement,
    'package:flutter/src/widgets/basic.dart@AspectRatio@#as':
        (m.Scope scope, target) => () => target as AspectRatio,
    'package:flutter/src/widgets/basic.dart@AspectRatio@#is':
        (m.Scope scope, target) => () => target is AspectRatio,
    'package:flutter/src/widgets/basic.dart@AspectRatio@aspectRatio':
        (m.Scope scope, AspectRatio target) => target.aspectRatio,
    'package:flutter/src/widgets/basic.dart@AspectRatio@': (m.Scope scope) =>
        ({aspectRatio, child, key}) {
          return AspectRatio(aspectRatio: aspectRatio, child: child, key: key);
        },
    'package:flutter/src/widgets/basic.dart@AspectRatio@createRenderObject':
        (m.Scope scope, AspectRatio target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@AspectRatio@updateRenderObject':
        (m.Scope scope, AspectRatio target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@AspectRatio@debugFillProperties':
        (m.Scope scope, AspectRatio target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@IntrinsicWidth@#as':
        (m.Scope scope, target) => () => target as IntrinsicWidth,
    'package:flutter/src/widgets/basic.dart@IntrinsicWidth@#is':
        (m.Scope scope, target) => () => target is IntrinsicWidth,
    'package:flutter/src/widgets/basic.dart@IntrinsicWidth@stepWidth':
        (m.Scope scope, IntrinsicWidth target) => target.stepWidth,
    'package:flutter/src/widgets/basic.dart@IntrinsicWidth@stepHeight':
        (m.Scope scope, IntrinsicWidth target) => target.stepHeight,
    'package:flutter/src/widgets/basic.dart@IntrinsicWidth@': (m.Scope scope) =>
        ({child, key, stepHeight, stepWidth}) {
          return IntrinsicWidth(
              child: child,
              key: key,
              stepHeight: stepHeight,
              stepWidth: stepWidth);
        },
    'package:flutter/src/widgets/basic.dart@IntrinsicWidth@createRenderObject':
        (m.Scope scope, IntrinsicWidth target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@IntrinsicWidth@updateRenderObject':
        (m.Scope scope, IntrinsicWidth target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@IntrinsicHeight@#as':
        (m.Scope scope, target) => () => target as IntrinsicHeight,
    'package:flutter/src/widgets/basic.dart@IntrinsicHeight@#is':
        (m.Scope scope, target) => () => target is IntrinsicHeight,
    'package:flutter/src/widgets/basic.dart@IntrinsicHeight@':
        (m.Scope scope) => ({child, key}) {
              return IntrinsicHeight(child: child, key: key);
            },
    'package:flutter/src/widgets/basic.dart@IntrinsicHeight@createRenderObject':
        (m.Scope scope, IntrinsicHeight target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Baseline@#as':
        (m.Scope scope, target) => () => target as Baseline,
    'package:flutter/src/widgets/basic.dart@Baseline@#is':
        (m.Scope scope, target) => () => target is Baseline,
    'package:flutter/src/widgets/basic.dart@Baseline@baseline':
        (m.Scope scope, Baseline target) => target.baseline,
    'package:flutter/src/widgets/basic.dart@Baseline@baselineType':
        (m.Scope scope, Baseline target) => target.baselineType,
    'package:flutter/src/widgets/basic.dart@Baseline@': (m.Scope scope) =>
        ({baseline, baselineType, child, key}) {
          return Baseline(
              baseline: baseline,
              baselineType: baselineType,
              child: child,
              key: key);
        },
    'package:flutter/src/widgets/basic.dart@Baseline@createRenderObject':
        (m.Scope scope, Baseline target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Baseline@updateRenderObject':
        (m.Scope scope, Baseline target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@SliverToBoxAdapter@#as':
        (m.Scope scope, target) => () => target as SliverToBoxAdapter,
    'package:flutter/src/widgets/basic.dart@SliverToBoxAdapter@#is':
        (m.Scope scope, target) => () => target is SliverToBoxAdapter,
    'package:flutter/src/widgets/basic.dart@SliverToBoxAdapter@':
        (m.Scope scope) => ({child, key}) {
              return SliverToBoxAdapter(child: child, key: key);
            },
    'package:flutter/src/widgets/basic.dart@SliverToBoxAdapter@createRenderObject':
        (m.Scope scope, SliverToBoxAdapter target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@SliverPadding@#as':
        (m.Scope scope, target) => () => target as SliverPadding,
    'package:flutter/src/widgets/basic.dart@SliverPadding@#is':
        (m.Scope scope, target) => () => target is SliverPadding,
    'package:flutter/src/widgets/basic.dart@SliverPadding@padding':
        (m.Scope scope, SliverPadding target) => target.padding,
    'package:flutter/src/widgets/basic.dart@SliverPadding@': (m.Scope scope) =>
        ({key, padding, sliver}) {
          return SliverPadding(key: key, padding: padding, sliver: sliver);
        },
    'package:flutter/src/widgets/basic.dart@SliverPadding@createRenderObject':
        (m.Scope scope, SliverPadding target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@SliverPadding@updateRenderObject':
        (m.Scope scope, SliverPadding target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@SliverPadding@debugFillProperties':
        (m.Scope scope, SliverPadding target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@ListBody@#as':
        (m.Scope scope, target) => () => target as ListBody,
    'package:flutter/src/widgets/basic.dart@ListBody@#is':
        (m.Scope scope, target) => () => target is ListBody,
    'package:flutter/src/widgets/basic.dart@ListBody@mainAxis':
        (m.Scope scope, ListBody target) => target.mainAxis,
    'package:flutter/src/widgets/basic.dart@ListBody@reverse':
        (m.Scope scope, ListBody target) => target.reverse,
    'package:flutter/src/widgets/basic.dart@ListBody@': (m.Scope scope) =>
        ({children, key, mainAxis, reverse}) {
          return ListBody(
              children:
                  children?.map<Widget>((e) => e).toList() ?? const <Widget>[],
              key: key,
              mainAxis: mainAxis ?? Axis.vertical,
              reverse: reverse ?? false);
        },
    'package:flutter/src/widgets/basic.dart@ListBody@createRenderObject':
        (m.Scope scope, ListBody target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@ListBody@updateRenderObject':
        (m.Scope scope, ListBody target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@Stack@#as':
        (m.Scope scope, target) => () => target as Stack,
    'package:flutter/src/widgets/basic.dart@Stack@#is':
        (m.Scope scope, target) => () => target is Stack,
    'package:flutter/src/widgets/basic.dart@Stack@alignment':
        (m.Scope scope, Stack target) => target.alignment,
    'package:flutter/src/widgets/basic.dart@Stack@textDirection':
        (m.Scope scope, Stack target) => target.textDirection,
    'package:flutter/src/widgets/basic.dart@Stack@fit':
        (m.Scope scope, Stack target) => target.fit,
    'package:flutter/src/widgets/basic.dart@Stack@clipBehavior':
        (m.Scope scope, Stack target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@Stack@': (m.Scope scope) =>
        ({alignment, List? children, clipBehavior, fit, key, textDirection}) {
          return Stack(
              alignment: alignment ?? AlignmentDirectional.topStart,
              children:
                  children?.map<Widget>((e) => e).toList() ?? const <Widget>[],
              clipBehavior: clipBehavior ?? Clip.hardEdge,
              fit: fit ?? StackFit.loose,
              key: key,
              textDirection: textDirection);
        },
    'package:flutter/src/widgets/basic.dart@Stack@createRenderObject':
        (m.Scope scope, Stack target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Stack@updateRenderObject':
        (m.Scope scope, Stack target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@Stack@debugFillProperties':
        (m.Scope scope, Stack target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@IndexedStack@#as':
        (m.Scope scope, target) => () => target as IndexedStack,
    'package:flutter/src/widgets/basic.dart@IndexedStack@#is':
        (m.Scope scope, target) => () => target is IndexedStack,
    'package:flutter/src/widgets/basic.dart@IndexedStack@alignment':
        (m.Scope scope, IndexedStack target) => target.alignment,
    'package:flutter/src/widgets/basic.dart@IndexedStack@textDirection':
        (m.Scope scope, IndexedStack target) => target.textDirection,
    'package:flutter/src/widgets/basic.dart@IndexedStack@clipBehavior':
        (m.Scope scope, IndexedStack target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@IndexedStack@sizing':
        (m.Scope scope, IndexedStack target) => target.sizing,
    'package:flutter/src/widgets/basic.dart@IndexedStack@index':
        (m.Scope scope, IndexedStack target) => target.index,
    'package:flutter/src/widgets/basic.dart@IndexedStack@children':
        (m.Scope scope, IndexedStack target) => target.children,
    'package:flutter/src/widgets/basic.dart@IndexedStack@': (m.Scope scope) => (
            {alignment,
            children,
            clipBehavior,
            index,
            key,
            sizing,
            textDirection}) {
          return IndexedStack(
              alignment: alignment ?? AlignmentDirectional.topStart,
              children:
                  children?.map<Widget>((e) => e).toList() ?? const <Widget>[],
              clipBehavior: clipBehavior ?? Clip.hardEdge,
              index: index ?? 0,
              key: key,
              sizing: sizing ?? StackFit.loose,
              textDirection: textDirection);
        },
    'package:flutter/src/widgets/basic.dart@IndexedStack@build':
        (m.Scope scope, IndexedStack target) => target.build,
    'package:flutter/src/widgets/basic.dart@Positioned@#as':
        (m.Scope scope, target) => () => target as Positioned,
    'package:flutter/src/widgets/basic.dart@Positioned@#is':
        (m.Scope scope, target) => () => target is Positioned,
    'package:flutter/src/widgets/basic.dart@Positioned@left':
        (m.Scope scope, Positioned target) => target.left,
    'package:flutter/src/widgets/basic.dart@Positioned@top':
        (m.Scope scope, Positioned target) => target.top,
    'package:flutter/src/widgets/basic.dart@Positioned@right':
        (m.Scope scope, Positioned target) => target.right,
    'package:flutter/src/widgets/basic.dart@Positioned@bottom':
        (m.Scope scope, Positioned target) => target.bottom,
    'package:flutter/src/widgets/basic.dart@Positioned@width':
        (m.Scope scope, Positioned target) => target.width,
    'package:flutter/src/widgets/basic.dart@Positioned@height':
        (m.Scope scope, Positioned target) => target.height,
    'package:flutter/src/widgets/basic.dart@Positioned@debugTypicalAncestorWidgetClass':
        (m.Scope scope, Positioned target) =>
            target.debugTypicalAncestorWidgetClass,
    'package:flutter/src/widgets/basic.dart@Positioned@': (m.Scope scope) =>
        ({bottom, child, height, key, left, right, top, width}) {
          return Positioned(
              bottom: bottom,
              child: child,
              height: height,
              key: key,
              left: left,
              right: right,
              top: top,
              width: width);
        },
    'package:flutter/src/widgets/basic.dart@Positioned@fromRect':
        (m.Scope scope) => Positioned.fromRect,
    'package:flutter/src/widgets/basic.dart@Positioned@fromRelativeRect':
        (m.Scope scope) => Positioned.fromRelativeRect,
    'package:flutter/src/widgets/basic.dart@Positioned@fill': (m.Scope scope) =>
        Positioned.fill,
    'package:flutter/src/widgets/basic.dart@Positioned@directional':
        (m.Scope scope) => Positioned.directional,
    'package:flutter/src/widgets/basic.dart@Positioned@applyParentData':
        (m.Scope scope, Positioned target) => target.applyParentData,
    'package:flutter/src/widgets/basic.dart@Positioned@debugFillProperties':
        (m.Scope scope, Positioned target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@PositionedDirectional@#as':
        (m.Scope scope, target) => () => target as PositionedDirectional,
    'package:flutter/src/widgets/basic.dart@PositionedDirectional@#is':
        (m.Scope scope, target) => () => target is PositionedDirectional,
    'package:flutter/src/widgets/basic.dart@PositionedDirectional@start':
        (m.Scope scope, PositionedDirectional target) => target.start,
    'package:flutter/src/widgets/basic.dart@PositionedDirectional@top':
        (m.Scope scope, PositionedDirectional target) => target.top,
    'package:flutter/src/widgets/basic.dart@PositionedDirectional@end':
        (m.Scope scope, PositionedDirectional target) => target.end,
    'package:flutter/src/widgets/basic.dart@PositionedDirectional@bottom':
        (m.Scope scope, PositionedDirectional target) => target.bottom,
    'package:flutter/src/widgets/basic.dart@PositionedDirectional@width':
        (m.Scope scope, PositionedDirectional target) => target.width,
    'package:flutter/src/widgets/basic.dart@PositionedDirectional@height':
        (m.Scope scope, PositionedDirectional target) => target.height,
    'package:flutter/src/widgets/basic.dart@PositionedDirectional@child':
        (m.Scope scope, PositionedDirectional target) => target.child,
    'package:flutter/src/widgets/basic.dart@PositionedDirectional@':
        (m.Scope scope) =>
            ({bottom, child, end, height, key, start, top, width}) {
              return PositionedDirectional(
                  bottom: bottom,
                  child: child,
                  end: end,
                  height: height,
                  key: key,
                  start: start,
                  top: top,
                  width: width);
            },
    'package:flutter/src/widgets/basic.dart@PositionedDirectional@build':
        (m.Scope scope, PositionedDirectional target) => target.build,
    'package:flutter/src/widgets/basic.dart@Flex@#as':
        (m.Scope scope, target) => () => target as Flex,
    'package:flutter/src/widgets/basic.dart@Flex@#is':
        (m.Scope scope, target) => () => target is Flex,
    'package:flutter/src/widgets/basic.dart@Flex@direction':
        (m.Scope scope, Flex target) => target.direction,
    'package:flutter/src/widgets/basic.dart@Flex@mainAxisAlignment':
        (m.Scope scope, Flex target) => target.mainAxisAlignment,
    'package:flutter/src/widgets/basic.dart@Flex@mainAxisSize':
        (m.Scope scope, Flex target) => target.mainAxisSize,
    'package:flutter/src/widgets/basic.dart@Flex@crossAxisAlignment':
        (m.Scope scope, Flex target) => target.crossAxisAlignment,
    'package:flutter/src/widgets/basic.dart@Flex@textDirection':
        (m.Scope scope, Flex target) => target.textDirection,
    'package:flutter/src/widgets/basic.dart@Flex@verticalDirection':
        (m.Scope scope, Flex target) => target.verticalDirection,
    'package:flutter/src/widgets/basic.dart@Flex@textBaseline':
        (m.Scope scope, Flex target) => target.textBaseline,
    'package:flutter/src/widgets/basic.dart@Flex@clipBehavior':
        (m.Scope scope, Flex target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@Flex@': (m.Scope scope) => (
            {children,
            clipBehavior,
            crossAxisAlignment,
            direction,
            key,
            mainAxisAlignment,
            mainAxisSize,
            textBaseline,
            textDirection,
            verticalDirection}) {
          return Flex(
              children:
                  children?.map<Widget>((e) => e).toList() ?? const <Widget>[],
              clipBehavior: clipBehavior ?? Clip.none,
              crossAxisAlignment:
                  crossAxisAlignment ?? CrossAxisAlignment.center,
              direction: direction,
              key: key,
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
              mainAxisSize: mainAxisSize ?? MainAxisSize.max,
              textBaseline: textBaseline,
              textDirection: textDirection,
              verticalDirection: verticalDirection ?? VerticalDirection.down);
        },
    'package:flutter/src/widgets/basic.dart@Flex@getEffectiveTextDirection':
        (m.Scope scope, Flex target) => target.getEffectiveTextDirection,
    'package:flutter/src/widgets/basic.dart@Flex@createRenderObject':
        (m.Scope scope, Flex target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Flex@updateRenderObject':
        (m.Scope scope, Flex target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@Flex@debugFillProperties':
        (m.Scope scope, Flex target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@Row@#as': (m.Scope scope, target) =>
        () => target as Row,
    'package:flutter/src/widgets/basic.dart@Row@#is': (m.Scope scope, target) =>
        () => target is Row,
    'package:flutter/src/widgets/basic.dart@Row@': (m.Scope scope) => (
            {List? children,
            crossAxisAlignment,
            key,
            mainAxisAlignment,
            mainAxisSize,
            textBaseline,
            textDirection,
            verticalDirection}) {
          return Row(
              children:
                  children?.map<Widget>((e) => e).toList() ?? const <Widget>[],
              crossAxisAlignment:
                  crossAxisAlignment ?? CrossAxisAlignment.center,
              key: key,
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
              mainAxisSize: mainAxisSize ?? MainAxisSize.max,
              textBaseline: textBaseline,
              textDirection: textDirection,
              verticalDirection: verticalDirection ?? VerticalDirection.down);
        },
    'package:flutter/src/widgets/basic.dart@Column@#as':
        (m.Scope scope, target) => () => target as Column,
    'package:flutter/src/widgets/basic.dart@Column@#is':
        (m.Scope scope, target) => () => target is Column,
    'package:flutter/src/widgets/basic.dart@Column@': (m.Scope scope) => (
            {List? children,
            crossAxisAlignment,
            key,
            mainAxisAlignment,
            mainAxisSize,
            textBaseline,
            textDirection,
            verticalDirection}) {
          return Column(
              children: children?.map<Widget>((e) => e as Widget).toList() ??
                  const <Widget>[],
              crossAxisAlignment:
                  crossAxisAlignment ?? CrossAxisAlignment.center,
              key: key,
              mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
              mainAxisSize: mainAxisSize ?? MainAxisSize.max,
              textBaseline: textBaseline,
              textDirection: textDirection,
              verticalDirection: verticalDirection ?? VerticalDirection.down);
        },
    'package:flutter/src/widgets/basic.dart@Flexible@#as':
        (m.Scope scope, target) => () => target as Flexible,
    'package:flutter/src/widgets/basic.dart@Flexible@#is':
        (m.Scope scope, target) => () => target is Flexible,
    'package:flutter/src/widgets/basic.dart@Flexible@flex':
        (m.Scope scope, Flexible target) => target.flex,
    'package:flutter/src/widgets/basic.dart@Flexible@fit':
        (m.Scope scope, Flexible target) => target.fit,
    'package:flutter/src/widgets/basic.dart@Flexible@debugTypicalAncestorWidgetClass':
        (m.Scope scope, Flexible target) =>
            target.debugTypicalAncestorWidgetClass,
    'package:flutter/src/widgets/basic.dart@Flexible@': (m.Scope scope) =>
        ({child, fit, flex, key}) {
          return Flexible(
              child: child,
              fit: fit ?? FlexFit.loose,
              flex: flex ?? 1,
              key: key);
        },
    'package:flutter/src/widgets/basic.dart@Flexible@applyParentData':
        (m.Scope scope, Flexible target) => target.applyParentData,
    'package:flutter/src/widgets/basic.dart@Flexible@debugFillProperties':
        (m.Scope scope, Flexible target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@Expanded@#as':
        (m.Scope scope, target) => () => target as Expanded,
    'package:flutter/src/widgets/basic.dart@Expanded@#is':
        (m.Scope scope, target) => () => target is Expanded,
    'package:flutter/src/widgets/basic.dart@Expanded@': (m.Scope scope) =>
        ({child, flex, key}) {
          return Expanded(child: child, flex: flex ?? 1, key: key);
        },
    'package:flutter/src/widgets/basic.dart@Wrap@#as':
        (m.Scope scope, target) => () => target as Wrap,
    'package:flutter/src/widgets/basic.dart@Wrap@#is':
        (m.Scope scope, target) => () => target is Wrap,
    'package:flutter/src/widgets/basic.dart@Wrap@direction':
        (m.Scope scope, Wrap target) => target.direction,
    'package:flutter/src/widgets/basic.dart@Wrap@alignment':
        (m.Scope scope, Wrap target) => target.alignment,
    'package:flutter/src/widgets/basic.dart@Wrap@spacing':
        (m.Scope scope, Wrap target) => target.spacing,
    'package:flutter/src/widgets/basic.dart@Wrap@runAlignment':
        (m.Scope scope, Wrap target) => target.runAlignment,
    'package:flutter/src/widgets/basic.dart@Wrap@runSpacing':
        (m.Scope scope, Wrap target) => target.runSpacing,
    'package:flutter/src/widgets/basic.dart@Wrap@crossAxisAlignment':
        (m.Scope scope, Wrap target) => target.crossAxisAlignment,
    'package:flutter/src/widgets/basic.dart@Wrap@textDirection':
        (m.Scope scope, Wrap target) => target.textDirection,
    'package:flutter/src/widgets/basic.dart@Wrap@verticalDirection':
        (m.Scope scope, Wrap target) => target.verticalDirection,
    'package:flutter/src/widgets/basic.dart@Wrap@clipBehavior':
        (m.Scope scope, Wrap target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@Wrap@': (m.Scope scope) => (
            {alignment,
            List? children,
            clipBehavior,
            crossAxisAlignment,
            direction,
            key,
            runAlignment,
            runSpacing,
            spacing,
            textDirection,
            verticalDirection}) {
          return Wrap(
              alignment: alignment ?? WrapAlignment.start,
              children:
                  children?.map<Widget>((e) => e).toList() ?? const <Widget>[],
              clipBehavior: clipBehavior ?? Clip.none,
              crossAxisAlignment:
                  crossAxisAlignment ?? WrapCrossAlignment.start,
              direction: direction ?? Axis.horizontal,
              key: key,
              runAlignment: runAlignment ?? WrapAlignment.start,
              runSpacing: runSpacing ?? 0.0,
              spacing: spacing ?? 0.0,
              textDirection: textDirection,
              verticalDirection: verticalDirection ?? VerticalDirection.down);
        },
    'package:flutter/src/widgets/basic.dart@Wrap@createRenderObject':
        (m.Scope scope, Wrap target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Wrap@updateRenderObject':
        (m.Scope scope, Wrap target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@Wrap@debugFillProperties':
        (m.Scope scope, Wrap target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@Flow@#as':
        (m.Scope scope, target) => () => target as Flow,
    'package:flutter/src/widgets/basic.dart@Flow@#is':
        (m.Scope scope, target) => () => target is Flow,
    'package:flutter/src/widgets/basic.dart@Flow@delegate':
        (m.Scope scope, Flow target) => target.delegate,
    'package:flutter/src/widgets/basic.dart@Flow@clipBehavior':
        (m.Scope scope, Flow target) => target.clipBehavior,
    'package:flutter/src/widgets/basic.dart@Flow@': (m.Scope scope) =>
        ({children, clipBehavior, delegate, key}) {
          return Flow(
              children:
                  children?.map<Widget>((e) => e).toList() ?? const <Widget>[],
              clipBehavior: clipBehavior ?? Clip.hardEdge,
              delegate: delegate,
              key: key);
        },
    'package:flutter/src/widgets/basic.dart@Flow@unwrapped': (m.Scope scope) =>
        Flow.unwrapped,
    'package:flutter/src/widgets/basic.dart@Flow@createRenderObject':
        (m.Scope scope, Flow target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Flow@updateRenderObject':
        (m.Scope scope, Flow target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@RichText@#as':
        (m.Scope scope, target) => () => target as RichText,
    'package:flutter/src/widgets/basic.dart@RichText@#is':
        (m.Scope scope, target) => () => target is RichText,
    'package:flutter/src/widgets/basic.dart@RichText@text':
        (m.Scope scope, RichText target) => target.text,
    'package:flutter/src/widgets/basic.dart@RichText@textAlign':
        (m.Scope scope, RichText target) => target.textAlign,
    'package:flutter/src/widgets/basic.dart@RichText@textDirection':
        (m.Scope scope, RichText target) => target.textDirection,
    'package:flutter/src/widgets/basic.dart@RichText@softWrap':
        (m.Scope scope, RichText target) => target.softWrap,
    'package:flutter/src/widgets/basic.dart@RichText@overflow':
        (m.Scope scope, RichText target) => target.overflow,
    'package:flutter/src/widgets/basic.dart@RichText@textScaleFactor':
        (m.Scope scope, RichText target) => target.textScaleFactor,
    'package:flutter/src/widgets/basic.dart@RichText@maxLines':
        (m.Scope scope, RichText target) => target.maxLines,
    'package:flutter/src/widgets/basic.dart@RichText@locale':
        (m.Scope scope, RichText target) => target.locale,
    'package:flutter/src/widgets/basic.dart@RichText@strutStyle':
        (m.Scope scope, RichText target) => target.strutStyle,
    'package:flutter/src/widgets/basic.dart@RichText@textWidthBasis':
        (m.Scope scope, RichText target) => target.textWidthBasis,
    'package:flutter/src/widgets/basic.dart@RichText@textHeightBehavior':
        (m.Scope scope, RichText target) => target.textHeightBehavior,
    'package:flutter/src/widgets/basic.dart@RichText@selectionRegistrar':
        (m.Scope scope, RichText target) => target.selectionRegistrar,
    'package:flutter/src/widgets/basic.dart@RichText@selectionColor':
        (m.Scope scope, RichText target) => target.selectionColor,
    'package:flutter/src/widgets/basic.dart@RichText@': (m.Scope scope) => (
            {key,
            locale,
            maxLines,
            overflow,
            selectionColor,
            selectionRegistrar,
            softWrap,
            strutStyle,
            text,
            textAlign,
            textDirection,
            textHeightBehavior,
            textScaleFactor,
            textWidthBasis}) {
          return RichText(
              key: key,
              locale: locale,
              maxLines: maxLines,
              overflow: overflow ?? TextOverflow.clip,
              selectionColor: selectionColor,
              selectionRegistrar: selectionRegistrar,
              softWrap: softWrap ?? true,
              strutStyle: strutStyle,
              text: text,
              textAlign: textAlign ?? TextAlign.start,
              textDirection: textDirection,
              textHeightBehavior: textHeightBehavior,
              textScaleFactor: textScaleFactor ?? 1.0,
              textWidthBasis: textWidthBasis ?? TextWidthBasis.parent);
        },
    'package:flutter/src/widgets/basic.dart@RichText@createRenderObject':
        (m.Scope scope, RichText target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@RichText@updateRenderObject':
        (m.Scope scope, RichText target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@RichText@debugFillProperties':
        (m.Scope scope, RichText target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@RawImage@#as':
        (m.Scope scope, target) => () => target as RawImage,
    'package:flutter/src/widgets/basic.dart@RawImage@#is':
        (m.Scope scope, target) => () => target is RawImage,
    'package:flutter/src/widgets/basic.dart@RawImage@image':
        (m.Scope scope, RawImage target) => target.image,
    'package:flutter/src/widgets/basic.dart@RawImage@debugImageLabel':
        (m.Scope scope, RawImage target) => target.debugImageLabel,
    'package:flutter/src/widgets/basic.dart@RawImage@width':
        (m.Scope scope, RawImage target) => target.width,
    'package:flutter/src/widgets/basic.dart@RawImage@height':
        (m.Scope scope, RawImage target) => target.height,
    'package:flutter/src/widgets/basic.dart@RawImage@scale':
        (m.Scope scope, RawImage target) => target.scale,
    'package:flutter/src/widgets/basic.dart@RawImage@color':
        (m.Scope scope, RawImage target) => target.color,
    'package:flutter/src/widgets/basic.dart@RawImage@opacity':
        (m.Scope scope, RawImage target) => target.opacity,
    'package:flutter/src/widgets/basic.dart@RawImage@filterQuality':
        (m.Scope scope, RawImage target) => target.filterQuality,
    'package:flutter/src/widgets/basic.dart@RawImage@colorBlendMode':
        (m.Scope scope, RawImage target) => target.colorBlendMode,
    'package:flutter/src/widgets/basic.dart@RawImage@fit':
        (m.Scope scope, RawImage target) => target.fit,
    'package:flutter/src/widgets/basic.dart@RawImage@alignment':
        (m.Scope scope, RawImage target) => target.alignment,
    'package:flutter/src/widgets/basic.dart@RawImage@repeat':
        (m.Scope scope, RawImage target) => target.repeat,
    'package:flutter/src/widgets/basic.dart@RawImage@centerSlice':
        (m.Scope scope, RawImage target) => target.centerSlice,
    'package:flutter/src/widgets/basic.dart@RawImage@matchTextDirection':
        (m.Scope scope, RawImage target) => target.matchTextDirection,
    'package:flutter/src/widgets/basic.dart@RawImage@invertColors':
        (m.Scope scope, RawImage target) => target.invertColors,
    'package:flutter/src/widgets/basic.dart@RawImage@isAntiAlias':
        (m.Scope scope, RawImage target) => target.isAntiAlias,
    'package:flutter/src/widgets/basic.dart@RawImage@': (m.Scope scope) => (
            {alignment,
            centerSlice,
            color,
            colorBlendMode,
            debugImageLabel,
            filterQuality,
            fit,
            height,
            image,
            invertColors,
            isAntiAlias,
            key,
            matchTextDirection,
            opacity,
            repeat,
            scale,
            width}) {
          return RawImage(
              alignment: alignment ?? Alignment.center,
              centerSlice: centerSlice,
              color: color,
              colorBlendMode: colorBlendMode,
              debugImageLabel: debugImageLabel,
              filterQuality: filterQuality ?? FilterQuality.low,
              fit: fit,
              height: height,
              image: image,
              invertColors: invertColors ?? false,
              isAntiAlias: isAntiAlias ?? false,
              key: key,
              matchTextDirection: matchTextDirection ?? false,
              opacity: opacity,
              repeat: repeat ?? ImageRepeat.noRepeat,
              scale: scale ?? 1.0,
              width: width);
        },
    'package:flutter/src/widgets/basic.dart@RawImage@createRenderObject':
        (m.Scope scope, RawImage target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@RawImage@updateRenderObject':
        (m.Scope scope, RawImage target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@RawImage@didUnmountRenderObject':
        (m.Scope scope, RawImage target) => target.didUnmountRenderObject,
    'package:flutter/src/widgets/basic.dart@RawImage@debugFillProperties':
        (m.Scope scope, RawImage target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@DefaultAssetBundle@#as':
        (m.Scope scope, target) => () => target as DefaultAssetBundle,
    'package:flutter/src/widgets/basic.dart@DefaultAssetBundle@#is':
        (m.Scope scope, target) => () => target is DefaultAssetBundle,
    'package:flutter/src/widgets/basic.dart@DefaultAssetBundle@bundle':
        (m.Scope scope, DefaultAssetBundle target) => target.bundle,
    'package:flutter/src/widgets/basic.dart@DefaultAssetBundle@':
        (m.Scope scope) => ({bundle, child, key}) {
              return DefaultAssetBundle(bundle: bundle, child: child, key: key);
            },
    'package:flutter/src/widgets/basic.dart@DefaultAssetBundle@of':
        (m.Scope scope) => DefaultAssetBundle.of,
    'package:flutter/src/widgets/basic.dart@DefaultAssetBundle@updateShouldNotify':
        (m.Scope scope, DefaultAssetBundle target) => target.updateShouldNotify,
    'package:flutter/src/widgets/basic.dart@WidgetToRenderBoxAdapter@#as':
        (m.Scope scope, target) => () => target as WidgetToRenderBoxAdapter,
    'package:flutter/src/widgets/basic.dart@WidgetToRenderBoxAdapter@#is':
        (m.Scope scope, target) => () => target is WidgetToRenderBoxAdapter,
    'package:flutter/src/widgets/basic.dart@WidgetToRenderBoxAdapter@renderBox':
        (m.Scope scope, WidgetToRenderBoxAdapter target) => target.renderBox,
    'package:flutter/src/widgets/basic.dart@WidgetToRenderBoxAdapter@onBuild':
        (m.Scope scope, WidgetToRenderBoxAdapter target) => target.onBuild,
    'package:flutter/src/widgets/basic.dart@WidgetToRenderBoxAdapter@onUnmount':
        (m.Scope scope, WidgetToRenderBoxAdapter target) => target.onUnmount,
    'package:flutter/src/widgets/basic.dart@WidgetToRenderBoxAdapter@':
        (m.Scope scope) => ({onBuild, onUnmount, renderBox}) {
              void onBuildProxy() {
                engine.callFunctionPointer(scope, onBuild!, [], {});
              }

              void onUnmountProxy() {
                engine.callFunctionPointer(scope, onUnmount!, [], {});
              }

              return WidgetToRenderBoxAdapter(
                  onBuild: onBuild == null ? null : onBuildProxy,
                  onUnmount: onUnmount == null ? null : onUnmountProxy,
                  renderBox: renderBox);
            },
    'package:flutter/src/widgets/basic.dart@WidgetToRenderBoxAdapter@createRenderObject':
        (m.Scope scope, WidgetToRenderBoxAdapter target) =>
            target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@WidgetToRenderBoxAdapter@updateRenderObject':
        (m.Scope scope, WidgetToRenderBoxAdapter target) =>
            target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@WidgetToRenderBoxAdapter@didUnmountRenderObject':
        (m.Scope scope, WidgetToRenderBoxAdapter target) =>
            target.didUnmountRenderObject,
    'package:flutter/src/widgets/basic.dart@Listener@#as':
        (m.Scope scope, target) => () => target as Listener,
    'package:flutter/src/widgets/basic.dart@Listener@#is':
        (m.Scope scope, target) => () => target is Listener,
    'package:flutter/src/widgets/basic.dart@Listener@onPointerDown':
        (m.Scope scope, Listener target) => target.onPointerDown,
    'package:flutter/src/widgets/basic.dart@Listener@onPointerMove':
        (m.Scope scope, Listener target) => target.onPointerMove,
    'package:flutter/src/widgets/basic.dart@Listener@onPointerUp':
        (m.Scope scope, Listener target) => target.onPointerUp,
    'package:flutter/src/widgets/basic.dart@Listener@onPointerHover':
        (m.Scope scope, Listener target) => target.onPointerHover,
    'package:flutter/src/widgets/basic.dart@Listener@onPointerCancel':
        (m.Scope scope, Listener target) => target.onPointerCancel,
    'package:flutter/src/widgets/basic.dart@Listener@onPointerPanZoomStart':
        (m.Scope scope, Listener target) => target.onPointerPanZoomStart,
    'package:flutter/src/widgets/basic.dart@Listener@onPointerPanZoomUpdate':
        (m.Scope scope, Listener target) => target.onPointerPanZoomUpdate,
    'package:flutter/src/widgets/basic.dart@Listener@onPointerPanZoomEnd':
        (m.Scope scope, Listener target) => target.onPointerPanZoomEnd,
    'package:flutter/src/widgets/basic.dart@Listener@onPointerSignal':
        (m.Scope scope, Listener target) => target.onPointerSignal,
    'package:flutter/src/widgets/basic.dart@Listener@behavior':
        (m.Scope scope, Listener target) => target.behavior,
    'package:flutter/src/widgets/basic.dart@Listener@': (m.Scope scope) => (
            {behavior,
            child,
            key,
            onPointerCancel,
            onPointerDown,
            onPointerHover,
            onPointerMove,
            onPointerPanZoomEnd,
            onPointerPanZoomStart,
            onPointerPanZoomUpdate,
            onPointerSignal,
            onPointerUp}) {
          void onPointerCancelProxy(event) {
            engine.callFunctionPointer(scope, onPointerCancel!, [event], {});
          }

          void onPointerDownProxy(event) {
            engine.callFunctionPointer(scope, onPointerDown!, [event], {});
          }

          void onPointerHoverProxy(event) {
            engine.callFunctionPointer(scope, onPointerHover!, [event], {});
          }

          void onPointerMoveProxy(event) {
            engine.callFunctionPointer(scope, onPointerMove!, [event], {});
          }

          void onPointerPanZoomEndProxy(event) {
            engine
                .callFunctionPointer(scope, onPointerPanZoomEnd!, [event], {});
          }

          void onPointerPanZoomStartProxy(event) {
            engine.callFunctionPointer(
                scope, onPointerPanZoomStart!, [event], {});
          }

          void onPointerPanZoomUpdateProxy(event) {
            engine.callFunctionPointer(
                scope, onPointerPanZoomUpdate!, [event], {});
          }

          void onPointerSignalProxy(event) {
            engine.callFunctionPointer(scope, onPointerSignal!, [event], {});
          }

          void onPointerUpProxy(event) {
            engine.callFunctionPointer(scope, onPointerUp!, [event], {});
          }

          return Listener(
              behavior: behavior ?? HitTestBehavior.deferToChild,
              child: child,
              key: key,
              onPointerCancel:
                  onPointerCancel == null ? null : onPointerCancelProxy,
              onPointerDown: onPointerDown == null ? null : onPointerDownProxy,
              onPointerHover:
                  onPointerHover == null ? null : onPointerHoverProxy,
              onPointerMove: onPointerMove == null ? null : onPointerMoveProxy,
              onPointerPanZoomEnd:
                  onPointerPanZoomEnd == null ? null : onPointerPanZoomEndProxy,
              onPointerPanZoomStart: onPointerPanZoomStart == null
                  ? null
                  : onPointerPanZoomStartProxy,
              onPointerPanZoomUpdate: onPointerPanZoomUpdate == null
                  ? null
                  : onPointerPanZoomUpdateProxy,
              onPointerSignal:
                  onPointerSignal == null ? null : onPointerSignalProxy,
              onPointerUp: onPointerUp == null ? null : onPointerUpProxy);
        },
    'package:flutter/src/widgets/basic.dart@Listener@createRenderObject':
        (m.Scope scope, Listener target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Listener@updateRenderObject':
        (m.Scope scope, Listener target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@Listener@debugFillProperties':
        (m.Scope scope, Listener target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@MouseRegion@#as':
        (m.Scope scope, target) => () => target as MouseRegion,
    'package:flutter/src/widgets/basic.dart@MouseRegion@#is':
        (m.Scope scope, target) => () => target is MouseRegion,
    'package:flutter/src/widgets/basic.dart@MouseRegion@onEnter':
        (m.Scope scope, MouseRegion target) => target.onEnter,
    'package:flutter/src/widgets/basic.dart@MouseRegion@onHover':
        (m.Scope scope, MouseRegion target) => target.onHover,
    'package:flutter/src/widgets/basic.dart@MouseRegion@onExit':
        (m.Scope scope, MouseRegion target) => target.onExit,
    'package:flutter/src/widgets/basic.dart@MouseRegion@cursor':
        (m.Scope scope, MouseRegion target) => target.cursor,
    'package:flutter/src/widgets/basic.dart@MouseRegion@opaque':
        (m.Scope scope, MouseRegion target) => target.opaque,
    'package:flutter/src/widgets/basic.dart@MouseRegion@hitTestBehavior':
        (m.Scope scope, MouseRegion target) => target.hitTestBehavior,
    'package:flutter/src/widgets/basic.dart@MouseRegion@': (m.Scope scope) => (
            {child,
            cursor,
            hitTestBehavior,
            key,
            onEnter,
            onExit,
            onHover,
            opaque}) {
          void onEnterProxy(event) {
            engine.callFunctionPointer(scope, onEnter!, [event], {});
          }

          void onExitProxy(event) {
            engine.callFunctionPointer(scope, onExit!, [event], {});
          }

          void onHoverProxy(event) {
            engine.callFunctionPointer(scope, onHover!, [event], {});
          }

          return MouseRegion(
              child: child,
              cursor: cursor ?? MouseCursor.defer,
              hitTestBehavior: hitTestBehavior,
              key: key,
              onEnter: onEnter == null ? null : onEnterProxy,
              onExit: onExit == null ? null : onExitProxy,
              onHover: onHover == null ? null : onHoverProxy,
              opaque: opaque ?? true);
        },
    'package:flutter/src/widgets/basic.dart@MouseRegion@createRenderObject':
        (m.Scope scope, MouseRegion target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@MouseRegion@updateRenderObject':
        (m.Scope scope, MouseRegion target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@MouseRegion@debugFillProperties':
        (m.Scope scope, MouseRegion target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@RepaintBoundary@#as':
        (m.Scope scope, target) => () => target as RepaintBoundary,
    'package:flutter/src/widgets/basic.dart@RepaintBoundary@#is':
        (m.Scope scope, target) => () => target is RepaintBoundary,
    'package:flutter/src/widgets/basic.dart@RepaintBoundary@':
        (m.Scope scope) => ({child, key}) {
              return RepaintBoundary(child: child, key: key);
            },
    'package:flutter/src/widgets/basic.dart@RepaintBoundary@wrap':
        (m.Scope scope) => RepaintBoundary.wrap,
    'package:flutter/src/widgets/basic.dart@RepaintBoundary@wrapAll':
        (m.Scope scope) => RepaintBoundary.wrapAll,
    'package:flutter/src/widgets/basic.dart@RepaintBoundary@createRenderObject':
        (m.Scope scope, RepaintBoundary target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@IgnorePointer@#as':
        (m.Scope scope, target) => () => target as IgnorePointer,
    'package:flutter/src/widgets/basic.dart@IgnorePointer@#is':
        (m.Scope scope, target) => () => target is IgnorePointer,
    'package:flutter/src/widgets/basic.dart@IgnorePointer@ignoring':
        (m.Scope scope, IgnorePointer target) => target.ignoring,
    'package:flutter/src/widgets/basic.dart@IgnorePointer@ignoringSemantics':
        (m.Scope scope, IgnorePointer target) => target.ignoringSemantics,
    'package:flutter/src/widgets/basic.dart@IgnorePointer@': (m.Scope scope) =>
        ({child, ignoring, ignoringSemantics, key}) {
          return IgnorePointer(
              child: child,
              ignoring: ignoring ?? true,
              ignoringSemantics: ignoringSemantics,
              key: key);
        },
    'package:flutter/src/widgets/basic.dart@IgnorePointer@createRenderObject':
        (m.Scope scope, IgnorePointer target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@IgnorePointer@updateRenderObject':
        (m.Scope scope, IgnorePointer target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@IgnorePointer@debugFillProperties':
        (m.Scope scope, IgnorePointer target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@AbsorbPointer@#as':
        (m.Scope scope, target) => () => target as AbsorbPointer,
    'package:flutter/src/widgets/basic.dart@AbsorbPointer@#is':
        (m.Scope scope, target) => () => target is AbsorbPointer,
    'package:flutter/src/widgets/basic.dart@AbsorbPointer@absorbing':
        (m.Scope scope, AbsorbPointer target) => target.absorbing,
    'package:flutter/src/widgets/basic.dart@AbsorbPointer@ignoringSemantics':
        (m.Scope scope, AbsorbPointer target) => target.ignoringSemantics,
    'package:flutter/src/widgets/basic.dart@AbsorbPointer@': (m.Scope scope) =>
        ({absorbing, child, ignoringSemantics, key}) {
          return AbsorbPointer(
              absorbing: absorbing ?? true,
              child: child,
              ignoringSemantics: ignoringSemantics,
              key: key);
        },
    'package:flutter/src/widgets/basic.dart@AbsorbPointer@createRenderObject':
        (m.Scope scope, AbsorbPointer target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@AbsorbPointer@updateRenderObject':
        (m.Scope scope, AbsorbPointer target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@AbsorbPointer@debugFillProperties':
        (m.Scope scope, AbsorbPointer target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@MetaData@#as':
        (m.Scope scope, target) => () => target as MetaData,
    'package:flutter/src/widgets/basic.dart@MetaData@#is':
        (m.Scope scope, target) => () => target is MetaData,
    'package:flutter/src/widgets/basic.dart@MetaData@metaData':
        (m.Scope scope, MetaData target) => target.metaData,
    'package:flutter/src/widgets/basic.dart@MetaData@behavior':
        (m.Scope scope, MetaData target) => target.behavior,
    'package:flutter/src/widgets/basic.dart@MetaData@': (m.Scope scope) =>
        ({behavior, child, key, metaData}) {
          return MetaData(
              behavior: behavior ?? HitTestBehavior.deferToChild,
              child: child,
              key: key,
              metaData: metaData);
        },
    'package:flutter/src/widgets/basic.dart@MetaData@createRenderObject':
        (m.Scope scope, MetaData target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@MetaData@updateRenderObject':
        (m.Scope scope, MetaData target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@MetaData@debugFillProperties':
        (m.Scope scope, MetaData target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@Semantics@#as':
        (m.Scope scope, target) => () => target as Semantics,
    'package:flutter/src/widgets/basic.dart@Semantics@#is':
        (m.Scope scope, target) => () => target is Semantics,
    'package:flutter/src/widgets/basic.dart@Semantics@properties':
        (m.Scope scope, Semantics target) => target.properties,
    'package:flutter/src/widgets/basic.dart@Semantics@container':
        (m.Scope scope, Semantics target) => target.container,
    'package:flutter/src/widgets/basic.dart@Semantics@explicitChildNodes':
        (m.Scope scope, Semantics target) => target.explicitChildNodes,
    'package:flutter/src/widgets/basic.dart@Semantics@excludeSemantics':
        (m.Scope scope, Semantics target) => target.excludeSemantics,
    'package:flutter/src/widgets/basic.dart@Semantics@': (m.Scope scope) => (
            {attributedDecreasedValue,
            attributedHint,
            attributedIncreasedValue,
            attributedLabel,
            attributedValue,
            button,
            checked,
            child,
            container,
            currentValueLength,
            customSemanticsActions,
            decreasedValue,
            enabled,
            excludeSemantics,
            explicitChildNodes,
            focusable,
            focused,
            header,
            hidden,
            hint,
            image,
            inMutuallyExclusiveGroup,
            increasedValue,
            key,
            keyboardKey,
            label,
            link,
            liveRegion,
            maxValueLength,
            mixed,
            multiline,
            namesRoute,
            obscured,
            onCopy,
            onCut,
            onDecrease,
            onDidGainAccessibilityFocus,
            onDidLoseAccessibilityFocus,
            onDismiss,
            onIncrease,
            onLongPress,
            onLongPressHint,
            onMoveCursorBackwardByCharacter,
            onMoveCursorForwardByCharacter,
            onPaste,
            onScrollDown,
            onScrollLeft,
            onScrollRight,
            onScrollUp,
            onSetSelection,
            onSetText,
            onTap,
            onTapHint,
            readOnly,
            scopesRoute,
            selected,
            slider,
            sortKey,
            tagForChildren,
            textDirection,
            textField,
            toggled,
            tooltip,
            value}) {
          void onCopyProxy() {
            engine.callFunctionPointer(scope, onCopy!, [], {});
          }

          void onCutProxy() {
            engine.callFunctionPointer(scope, onCut!, [], {});
          }

          void onDecreaseProxy() {
            engine.callFunctionPointer(scope, onDecrease!, [], {});
          }

          void onDidGainAccessibilityFocusProxy() {
            engine.callFunctionPointer(
                scope, onDidGainAccessibilityFocus!, [], {});
          }

          void onDidLoseAccessibilityFocusProxy() {
            engine.callFunctionPointer(
                scope, onDidLoseAccessibilityFocus!, [], {});
          }

          void onDismissProxy() {
            engine.callFunctionPointer(scope, onDismiss!, [], {});
          }

          void onIncreaseProxy() {
            engine.callFunctionPointer(scope, onIncrease!, [], {});
          }

          void onLongPressProxy() {
            engine.callFunctionPointer(scope, onLongPress!, [], {});
          }

          void onMoveCursorBackwardByCharacterProxy(extendSelection) {
            engine.callFunctionPointer(
                scope, onMoveCursorBackwardByCharacter!, [extendSelection], {});
          }

          void onMoveCursorForwardByCharacterProxy(extendSelection) {
            engine.callFunctionPointer(
                scope, onMoveCursorForwardByCharacter!, [extendSelection], {});
          }

          void onPasteProxy() {
            engine.callFunctionPointer(scope, onPaste!, [], {});
          }

          void onScrollDownProxy() {
            engine.callFunctionPointer(scope, onScrollDown!, [], {});
          }

          void onScrollLeftProxy() {
            engine.callFunctionPointer(scope, onScrollLeft!, [], {});
          }

          void onScrollRightProxy() {
            engine.callFunctionPointer(scope, onScrollRight!, [], {});
          }

          void onScrollUpProxy() {
            engine.callFunctionPointer(scope, onScrollUp!, [], {});
          }

          void onSetSelectionProxy(selection) {
            engine.callFunctionPointer(scope, onSetSelection!, [selection], {});
          }

          void onSetTextProxy(text) {
            engine.callFunctionPointer(scope, onSetText!, [text], {});
          }

          void onTapProxy() {
            engine.callFunctionPointer(scope, onTap!, [], {});
          }

          return Semantics(
              attributedDecreasedValue: attributedDecreasedValue,
              attributedHint: attributedHint,
              attributedIncreasedValue: attributedIncreasedValue,
              attributedLabel: attributedLabel,
              attributedValue: attributedValue,
              button: button,
              checked: checked,
              child: child,
              container: container ?? false,
              currentValueLength: currentValueLength,
              customSemanticsActions: customSemanticsActions,
              decreasedValue: decreasedValue,
              enabled: enabled,
              excludeSemantics: excludeSemantics ?? false,
              explicitChildNodes: explicitChildNodes ?? false,
              focusable: focusable,
              focused: focused,
              header: header,
              hidden: hidden,
              hint: hint,
              image: image,
              inMutuallyExclusiveGroup: inMutuallyExclusiveGroup,
              increasedValue: increasedValue,
              key: key,
              keyboardKey: keyboardKey,
              label: label,
              link: link,
              liveRegion: liveRegion,
              maxValueLength: maxValueLength,
              mixed: mixed,
              multiline: multiline,
              namesRoute: namesRoute,
              obscured: obscured,
              onCopy: onCopy == null ? null : onCopyProxy,
              onCut: onCut == null ? null : onCutProxy,
              onDecrease: onDecrease == null ? null : onDecreaseProxy,
              onDidGainAccessibilityFocus: onDidGainAccessibilityFocus == null
                  ? null
                  : onDidGainAccessibilityFocusProxy,
              onDidLoseAccessibilityFocus: onDidLoseAccessibilityFocus == null
                  ? null
                  : onDidLoseAccessibilityFocusProxy,
              onDismiss: onDismiss == null ? null : onDismissProxy,
              onIncrease: onIncrease == null ? null : onIncreaseProxy,
              onLongPress: onLongPress == null ? null : onLongPressProxy,
              onLongPressHint: onLongPressHint,
              onMoveCursorBackwardByCharacter:
                  onMoveCursorBackwardByCharacter == null
                      ? null
                      : onMoveCursorBackwardByCharacterProxy,
              onMoveCursorForwardByCharacter:
                  onMoveCursorForwardByCharacter == null
                      ? null
                      : onMoveCursorForwardByCharacterProxy,
              onPaste: onPaste == null ? null : onPasteProxy,
              onScrollDown: onScrollDown == null ? null : onScrollDownProxy,
              onScrollLeft: onScrollLeft == null ? null : onScrollLeftProxy,
              onScrollRight: onScrollRight == null ? null : onScrollRightProxy,
              onScrollUp: onScrollUp == null ? null : onScrollUpProxy,
              onSetSelection:
                  onSetSelection == null ? null : onSetSelectionProxy,
              onSetText: onSetText == null ? null : onSetTextProxy,
              onTap: onTap == null ? null : onTapProxy,
              onTapHint: onTapHint,
              readOnly: readOnly,
              scopesRoute: scopesRoute,
              selected: selected,
              slider: slider,
              sortKey: sortKey,
              tagForChildren: tagForChildren,
              textDirection: textDirection,
              textField: textField,
              toggled: toggled,
              tooltip: tooltip,
              value: value);
        },
    'package:flutter/src/widgets/basic.dart@Semantics@fromProperties':
        (m.Scope scope) => Semantics.fromProperties,
    'package:flutter/src/widgets/basic.dart@Semantics@createRenderObject':
        (m.Scope scope, Semantics target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@Semantics@updateRenderObject':
        (m.Scope scope, Semantics target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@Semantics@debugFillProperties':
        (m.Scope scope, Semantics target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@MergeSemantics@#as':
        (m.Scope scope, target) => () => target as MergeSemantics,
    'package:flutter/src/widgets/basic.dart@MergeSemantics@#is':
        (m.Scope scope, target) => () => target is MergeSemantics,
    'package:flutter/src/widgets/basic.dart@MergeSemantics@': (m.Scope scope) =>
        ({child, key}) {
          return MergeSemantics(child: child, key: key);
        },
    'package:flutter/src/widgets/basic.dart@MergeSemantics@createRenderObject':
        (m.Scope scope, MergeSemantics target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@BlockSemantics@#as':
        (m.Scope scope, target) => () => target as BlockSemantics,
    'package:flutter/src/widgets/basic.dart@BlockSemantics@#is':
        (m.Scope scope, target) => () => target is BlockSemantics,
    'package:flutter/src/widgets/basic.dart@BlockSemantics@blocking':
        (m.Scope scope, BlockSemantics target) => target.blocking,
    'package:flutter/src/widgets/basic.dart@BlockSemantics@': (m.Scope scope) =>
        ({blocking, child, key}) {
          return BlockSemantics(
              blocking: blocking ?? true, child: child, key: key);
        },
    'package:flutter/src/widgets/basic.dart@BlockSemantics@createRenderObject':
        (m.Scope scope, BlockSemantics target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@BlockSemantics@updateRenderObject':
        (m.Scope scope, BlockSemantics target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@BlockSemantics@debugFillProperties':
        (m.Scope scope, BlockSemantics target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@ExcludeSemantics@#as':
        (m.Scope scope, target) => () => target as ExcludeSemantics,
    'package:flutter/src/widgets/basic.dart@ExcludeSemantics@#is':
        (m.Scope scope, target) => () => target is ExcludeSemantics,
    'package:flutter/src/widgets/basic.dart@ExcludeSemantics@excluding':
        (m.Scope scope, ExcludeSemantics target) => target.excluding,
    'package:flutter/src/widgets/basic.dart@ExcludeSemantics@':
        (m.Scope scope) => ({child, excluding, key}) {
              return ExcludeSemantics(
                  child: child, excluding: excluding ?? true, key: key);
            },
    'package:flutter/src/widgets/basic.dart@ExcludeSemantics@createRenderObject':
        (m.Scope scope, ExcludeSemantics target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@ExcludeSemantics@updateRenderObject':
        (m.Scope scope, ExcludeSemantics target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@ExcludeSemantics@debugFillProperties':
        (m.Scope scope, ExcludeSemantics target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@IndexedSemantics@#as':
        (m.Scope scope, target) => () => target as IndexedSemantics,
    'package:flutter/src/widgets/basic.dart@IndexedSemantics@#is':
        (m.Scope scope, target) => () => target is IndexedSemantics,
    'package:flutter/src/widgets/basic.dart@IndexedSemantics@index':
        (m.Scope scope, IndexedSemantics target) => target.index,
    'package:flutter/src/widgets/basic.dart@IndexedSemantics@':
        (m.Scope scope) => ({child, index, key}) {
              return IndexedSemantics(child: child, index: index, key: key);
            },
    'package:flutter/src/widgets/basic.dart@IndexedSemantics@createRenderObject':
        (m.Scope scope, IndexedSemantics target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@IndexedSemantics@updateRenderObject':
        (m.Scope scope, IndexedSemantics target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@IndexedSemantics@debugFillProperties':
        (m.Scope scope, IndexedSemantics target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@KeyedSubtree@#as':
        (m.Scope scope, target) => () => target as KeyedSubtree,
    'package:flutter/src/widgets/basic.dart@KeyedSubtree@#is':
        (m.Scope scope, target) => () => target is KeyedSubtree,
    'package:flutter/src/widgets/basic.dart@KeyedSubtree@child':
        (m.Scope scope, KeyedSubtree target) => target.child,
    'package:flutter/src/widgets/basic.dart@KeyedSubtree@': (m.Scope scope) =>
        ({child, key}) {
          return KeyedSubtree(child: child, key: key);
        },
    'package:flutter/src/widgets/basic.dart@KeyedSubtree@wrap':
        (m.Scope scope) => KeyedSubtree.wrap,
    'package:flutter/src/widgets/basic.dart@KeyedSubtree@ensureUniqueKeysForList':
        (m.Scope scope) => KeyedSubtree.ensureUniqueKeysForList,
    'package:flutter/src/widgets/basic.dart@KeyedSubtree@build':
        (m.Scope scope, KeyedSubtree target) => target.build,
    'package:flutter/src/widgets/basic.dart@Builder@#as':
        (m.Scope scope, target) => () => target as Builder,
    'package:flutter/src/widgets/basic.dart@Builder@#is':
        (m.Scope scope, target) => () => target is Builder,
    'package:flutter/src/widgets/basic.dart@Builder@builder':
        (m.Scope scope, Builder target) => target.builder,
    'package:flutter/src/widgets/basic.dart@Builder@': (m.Scope scope) =>
        ({builder, key}) {
          Widget builderProxy(context) {
            return engine.callFunctionPointer(scope, builder!, [context], {});
          }

          return Builder(builder: builderProxy, key: key);
        },
    'package:flutter/src/widgets/basic.dart@Builder@build':
        (m.Scope scope, Builder target) => target.build,
    'package:flutter/src/widgets/basic.dart@StatefulBuilder@#as':
        (m.Scope scope, target) => () => target as StatefulBuilder,
    'package:flutter/src/widgets/basic.dart@StatefulBuilder@#is':
        (m.Scope scope, target) => () => target is StatefulBuilder,
    'package:flutter/src/widgets/basic.dart@StatefulBuilder@builder':
        (m.Scope scope, StatefulBuilder target) => target.builder,
    'package:flutter/src/widgets/basic.dart@StatefulBuilder@':
        (m.Scope scope) => ({builder, key}) {
              Widget builderProxy(context, setState) {
                return engine.callFunctionPointer(
                    scope, builder!, [context, setState], {});
              }

              return StatefulBuilder(builder: builderProxy, key: key);
            },
    'package:flutter/src/widgets/basic.dart@StatefulBuilder@createState':
        (m.Scope scope, StatefulBuilder target) => target.createState,
    'package:flutter/src/widgets/basic.dart@ColoredBox@#as':
        (m.Scope scope, target) => () => target as ColoredBox,
    'package:flutter/src/widgets/basic.dart@ColoredBox@#is':
        (m.Scope scope, target) => () => target is ColoredBox,
    'package:flutter/src/widgets/basic.dart@ColoredBox@color':
        (m.Scope scope, ColoredBox target) => target.color,
    'package:flutter/src/widgets/basic.dart@ColoredBox@': (m.Scope scope) =>
        ({child, color, key}) {
          return ColoredBox(child: child, color: color, key: key);
        },
    'package:flutter/src/widgets/basic.dart@ColoredBox@createRenderObject':
        (m.Scope scope, ColoredBox target) => target.createRenderObject,
    'package:flutter/src/widgets/basic.dart@ColoredBox@updateRenderObject':
        (m.Scope scope, ColoredBox target) => target.updateRenderObject,
    'package:flutter/src/widgets/basic.dart@ColoredBox@debugFillProperties':
        (m.Scope scope, ColoredBox target) => target.debugFillProperties,
    'package:flutter/src/widgets/basic.dart@@getAxisDirectionFromAxisReverseAndDirectionality':
        (m.Scope scope) => getAxisDirectionFromAxisReverseAndDirectionality,
  };
}
