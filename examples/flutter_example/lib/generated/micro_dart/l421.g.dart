import 'package:flutter/src/cupertino/route.dart';
import 'dart:math';
import 'dart:ui' show ImageFilter, lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/interface_level.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/cupertino/route.dart@@kCupertinoModalBarrierColor':
        (m.Scope scope) => kCupertinoModalBarrierColor,
    'package:flutter/src/cupertino/route.dart@CupertinoPageRoute@#as':
        (m.Scope scope, target) => () => target as CupertinoPageRoute,
    'package:flutter/src/cupertino/route.dart@CupertinoPageRoute@#is':
        (m.Scope scope, target) => () => target is CupertinoPageRoute,
    'package:flutter/src/cupertino/route.dart@CupertinoPageRoute@builder':
        (m.Scope scope, CupertinoPageRoute target) => target.builder,
    'package:flutter/src/cupertino/route.dart@CupertinoPageRoute@title':
        (m.Scope scope, CupertinoPageRoute target) => target.title,
    'package:flutter/src/cupertino/route.dart@CupertinoPageRoute@maintainState':
        (m.Scope scope, CupertinoPageRoute target) => target.maintainState,
    'package:flutter/src/cupertino/route.dart@CupertinoPageRoute@debugLabel':
        (m.Scope scope, CupertinoPageRoute target) => target.debugLabel,
    'package:flutter/src/cupertino/route.dart@CupertinoPageRoute@':
        (m.Scope scope) => (
                {allowSnapshotting,
                builder,
                fullscreenDialog,
                maintainState,
                settings,
                title}) {
              Widget builderProxy(context) {
                return engine
                    .callFunctionPointer(scope, builder!, [context], {});
              }

              return CupertinoPageRoute(
                  allowSnapshotting: allowSnapshotting ?? true,
                  builder: builderProxy,
                  fullscreenDialog: fullscreenDialog ?? false,
                  maintainState: maintainState ?? true,
                  settings: settings,
                  title: title);
            },
    'package:flutter/src/cupertino/route.dart@CupertinoPageRoute@buildContent':
        (m.Scope scope, CupertinoPageRoute target) => target.buildContent,
    'package:flutter/src/cupertino/route.dart@CupertinoPage@#as':
        (m.Scope scope, target) => () => target as CupertinoPage,
    'package:flutter/src/cupertino/route.dart@CupertinoPage@#is':
        (m.Scope scope, target) => () => target is CupertinoPage,
    'package:flutter/src/cupertino/route.dart@CupertinoPage@child':
        (m.Scope scope, CupertinoPage target) => target.child,
    'package:flutter/src/cupertino/route.dart@CupertinoPage@title':
        (m.Scope scope, CupertinoPage target) => target.title,
    'package:flutter/src/cupertino/route.dart@CupertinoPage@maintainState':
        (m.Scope scope, CupertinoPage target) => target.maintainState,
    'package:flutter/src/cupertino/route.dart@CupertinoPage@fullscreenDialog':
        (m.Scope scope, CupertinoPage target) => target.fullscreenDialog,
    'package:flutter/src/cupertino/route.dart@CupertinoPage@allowSnapshotting':
        (m.Scope scope, CupertinoPage target) => target.allowSnapshotting,
    'package:flutter/src/cupertino/route.dart@CupertinoPage@':
        (m.Scope scope) => CupertinoPage,
    'package:flutter/src/cupertino/route.dart@CupertinoPage@createRoute':
        (m.Scope scope, CupertinoPage target) => target.createRoute,
    'package:flutter/src/cupertino/route.dart@CupertinoPageTransition@#as':
        (m.Scope scope, target) => () => target as CupertinoPageTransition,
    'package:flutter/src/cupertino/route.dart@CupertinoPageTransition@#is':
        (m.Scope scope, target) => () => target is CupertinoPageTransition,
    'package:flutter/src/cupertino/route.dart@CupertinoPageTransition@child':
        (m.Scope scope, CupertinoPageTransition target) => target.child,
    'package:flutter/src/cupertino/route.dart@CupertinoPageTransition@':
        (m.Scope scope) => CupertinoPageTransition,
    'package:flutter/src/cupertino/route.dart@CupertinoPageTransition@build':
        (m.Scope scope, CupertinoPageTransition target) => target.build,
    'package:flutter/src/cupertino/route.dart@CupertinoFullscreenDialogTransition@#as':
        (m.Scope scope, target) =>
            () => target as CupertinoFullscreenDialogTransition,
    'package:flutter/src/cupertino/route.dart@CupertinoFullscreenDialogTransition@#is':
        (m.Scope scope, target) =>
            () => target is CupertinoFullscreenDialogTransition,
    'package:flutter/src/cupertino/route.dart@CupertinoFullscreenDialogTransition@child':
        (m.Scope scope, CupertinoFullscreenDialogTransition target) =>
            target.child,
    'package:flutter/src/cupertino/route.dart@CupertinoFullscreenDialogTransition@':
        (m.Scope scope) => CupertinoFullscreenDialogTransition,
    'package:flutter/src/cupertino/route.dart@CupertinoFullscreenDialogTransition@build':
        (m.Scope scope, CupertinoFullscreenDialogTransition target) =>
            target.build,
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@#as':
        (m.Scope scope, target) => () => target as CupertinoModalPopupRoute,
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@#is':
        (m.Scope scope, target) => () => target is CupertinoModalPopupRoute,
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@builder':
        (m.Scope scope, CupertinoModalPopupRoute target) => target.builder,
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@barrierLabel':
        (m.Scope scope, CupertinoModalPopupRoute target) => target.barrierLabel,
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@barrierColor':
        (m.Scope scope, CupertinoModalPopupRoute target) => target.barrierColor,
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@anchorPoint':
        (m.Scope scope, CupertinoModalPopupRoute target) => target.anchorPoint,
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@barrierDismissible':
        (m.Scope scope, CupertinoModalPopupRoute target) =>
            target.barrierDismissible,
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@semanticsDismissible':
        (m.Scope scope, CupertinoModalPopupRoute target) =>
            target.semanticsDismissible,
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@transitionDuration':
        (m.Scope scope, CupertinoModalPopupRoute target) =>
            target.transitionDuration,
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@':
        (m.Scope scope) => (
                {anchorPoint,
                barrierColor,
                barrierDismissible,
                barrierLabel,
                builder,
                filter,
                semanticsDismissible,
                settings}) {
              Widget builderProxy(context) {
                return engine
                    .callFunctionPointer(scope, builder!, [context], {});
              }

              return CupertinoModalPopupRoute(
                  anchorPoint: anchorPoint,
                  barrierColor: barrierColor ?? kCupertinoModalBarrierColor,
                  barrierDismissible: barrierDismissible ?? true,
                  barrierLabel: barrierLabel ?? 'Dismiss',
                  builder: builderProxy,
                  filter: filter,
                  semanticsDismissible: semanticsDismissible ?? false,
                  settings: settings);
            },
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@createAnimation':
        (m.Scope scope, CupertinoModalPopupRoute target) =>
            target.createAnimation,
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@buildPage':
        (m.Scope scope, CupertinoModalPopupRoute target) => target.buildPage,
    'package:flutter/src/cupertino/route.dart@CupertinoModalPopupRoute@buildTransitions':
        (m.Scope scope, CupertinoModalPopupRoute target) =>
            target.buildTransitions,
    'package:flutter/src/cupertino/route.dart@CupertinoDialogRoute@#as':
        (m.Scope scope, target) => () => target as CupertinoDialogRoute,
    'package:flutter/src/cupertino/route.dart@CupertinoDialogRoute@#is':
        (m.Scope scope, target) => () => target is CupertinoDialogRoute,
    'package:flutter/src/cupertino/route.dart@CupertinoDialogRoute@': (m.Scope
            scope) =>
        (
            {anchorPoint,
            barrierColor,
            barrierDismissible,
            barrierLabel,
            builder,
            context,
            settings,
            transitionBuilder,
            transitionDuration}) {
          Widget builderProxy(context) {
            return engine.callFunctionPointer(scope, builder!, [context], {});
          }

          Widget transitionBuilderProxy(
              context, animation, secondaryAnimation, child) {
            return engine.callFunctionPointer(scope, transitionBuilder!,
                [context, animation, secondaryAnimation, child], {});
          }

          return CupertinoDialogRoute(
              anchorPoint: anchorPoint,
              barrierColor: barrierColor,
              barrierDismissible: barrierDismissible ?? true,
              barrierLabel: barrierLabel,
              builder: builderProxy,
              context: context,
              settings: settings,
              transitionBuilder: transitionBuilder == null
                  ? (BuildContext context, Animation<double> animation,
                      Animation<double> secondaryAnimation, Widget child) {
                      final CurvedAnimation fadeAnimation = CurvedAnimation(
                        parent: animation,
                        curve: Curves.easeInOut,
                      );
                      if (animation.status == AnimationStatus.reverse) {
                        return FadeTransition(
                          opacity: fadeAnimation,
                          child: child,
                        );
                      }
                      return FadeTransition(
                        opacity: fadeAnimation,
                        child: ScaleTransition(
                          scale: animation.drive(
                              Tween<double>(begin: 1.3, end: 1.0).chain(
                                  CurveTween(curve: Curves.linearToEaseOut))),
                          child: child,
                        ),
                      );
                    }
                  : transitionBuilderProxy,
              transitionDuration:
                  transitionDuration ?? const Duration(milliseconds: 250));
        },
    'package:flutter/src/cupertino/route.dart@@showCupertinoModalPopup':
        (m.Scope scope) => (
                {anchorPoint,
                barrierColor,
                barrierDismissible,
                builder,
                context,
                filter,
                routeSettings,
                semanticsDismissible,
                useRootNavigator}) {
              Widget builderProxy(context) {
                return engine
                    .callFunctionPointer(scope, builder!, [context], {});
              }

              return showCupertinoModalPopup(
                  anchorPoint: anchorPoint,
                  barrierColor: barrierColor ?? kCupertinoModalBarrierColor,
                  barrierDismissible: barrierDismissible ?? true,
                  builder: builderProxy,
                  context: context,
                  filter: filter,
                  routeSettings: routeSettings,
                  semanticsDismissible: semanticsDismissible ?? false,
                  useRootNavigator: useRootNavigator ?? true);
            },
    'package:flutter/src/cupertino/route.dart@@showCupertinoDialog':
        (m.Scope scope) => (
                {anchorPoint,
                barrierDismissible,
                barrierLabel,
                builder,
                context,
                routeSettings,
                useRootNavigator}) {
              Widget builderProxy(context) {
                return engine
                    .callFunctionPointer(scope, builder!, [context], {});
              }

              return showCupertinoDialog(
                  anchorPoint: anchorPoint,
                  barrierDismissible: barrierDismissible ?? false,
                  barrierLabel: barrierLabel,
                  builder: builderProxy,
                  context: context,
                  routeSettings: routeSettings,
                  useRootNavigator: useRootNavigator ?? true);
            },
  };
}
