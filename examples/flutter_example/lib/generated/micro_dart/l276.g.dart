import 'package:flutter/src/widgets/navigator.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:developer';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/heroes.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/restoration.dart';
import 'package:flutter/src/widgets/restoration_properties.dart';
import 'package:flutter/src/widgets/routes.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/widgets/navigator.dart@@kDefaultRouteTraversalEdgeBehavior':
        (m.Scope scope) => kDefaultRouteTraversalEdgeBehavior,
    'package:flutter/src/widgets/navigator.dart@Route@#as':
        (m.Scope scope, target) => () => target as Route,
    'package:flutter/src/widgets/navigator.dart@Route@#is':
        (m.Scope scope, target) => () => target is Route,
    'package:flutter/src/widgets/navigator.dart@Route@navigator':
        (m.Scope scope, Route target) => target.navigator,
    'package:flutter/src/widgets/navigator.dart@Route@settings':
        (m.Scope scope, Route target) => target.settings,
    'package:flutter/src/widgets/navigator.dart@Route@restorationScopeId':
        (m.Scope scope, Route target) => target.restorationScopeId,
    'package:flutter/src/widgets/navigator.dart@Route@overlayEntries':
        (m.Scope scope, Route target) => target.overlayEntries,
    'package:flutter/src/widgets/navigator.dart@Route@willHandlePopInternally':
        (m.Scope scope, Route target) => target.willHandlePopInternally,
    'package:flutter/src/widgets/navigator.dart@Route@currentResult':
        (m.Scope scope, Route target) => target.currentResult,
    'package:flutter/src/widgets/navigator.dart@Route@popped':
        (m.Scope scope, Route target) => target.popped,
    'package:flutter/src/widgets/navigator.dart@Route@isCurrent':
        (m.Scope scope, Route target) => target.isCurrent,
    'package:flutter/src/widgets/navigator.dart@Route@isFirst':
        (m.Scope scope, Route target) => target.isFirst,
    'package:flutter/src/widgets/navigator.dart@Route@hasActiveRouteBelow':
        (m.Scope scope, Route target) => target.hasActiveRouteBelow,
    'package:flutter/src/widgets/navigator.dart@Route@isActive':
        (m.Scope scope, Route target) => target.isActive,
    'package:flutter/src/widgets/navigator.dart@Route@install':
        (m.Scope scope, Route target) => target.install,
    'package:flutter/src/widgets/navigator.dart@Route@didPush':
        (m.Scope scope, Route target) => target.didPush,
    'package:flutter/src/widgets/navigator.dart@Route@didAdd':
        (m.Scope scope, Route target) => target.didAdd,
    'package:flutter/src/widgets/navigator.dart@Route@didReplace':
        (m.Scope scope, Route target) => target.didReplace,
    'package:flutter/src/widgets/navigator.dart@Route@willPop':
        (m.Scope scope, Route target) => target.willPop,
    'package:flutter/src/widgets/navigator.dart@Route@didPop':
        (m.Scope scope, Route target) => target.didPop,
    'package:flutter/src/widgets/navigator.dart@Route@didComplete':
        (m.Scope scope, Route target) => target.didComplete,
    'package:flutter/src/widgets/navigator.dart@Route@didPopNext':
        (m.Scope scope, Route target) => target.didPopNext,
    'package:flutter/src/widgets/navigator.dart@Route@didChangeNext':
        (m.Scope scope, Route target) => target.didChangeNext,
    'package:flutter/src/widgets/navigator.dart@Route@didChangePrevious':
        (m.Scope scope, Route target) => target.didChangePrevious,
    'package:flutter/src/widgets/navigator.dart@Route@changedInternalState':
        (m.Scope scope, Route target) => target.changedInternalState,
    'package:flutter/src/widgets/navigator.dart@Route@changedExternalState':
        (m.Scope scope, Route target) => target.changedExternalState,
    'package:flutter/src/widgets/navigator.dart@Route@dispose':
        (m.Scope scope, Route target) => target.dispose,
    'package:flutter/src/widgets/navigator.dart@RouteSettings@#as':
        (m.Scope scope, target) => () => target as RouteSettings,
    'package:flutter/src/widgets/navigator.dart@RouteSettings@#is':
        (m.Scope scope, target) => () => target is RouteSettings,
    'package:flutter/src/widgets/navigator.dart@RouteSettings@name':
        (m.Scope scope, RouteSettings target) => target.name,
    'package:flutter/src/widgets/navigator.dart@RouteSettings@arguments':
        (m.Scope scope, RouteSettings target) => target.arguments,
    'package:flutter/src/widgets/navigator.dart@RouteSettings@':
        (m.Scope scope) => ({arguments, name}) {
              return RouteSettings(arguments: arguments, name: name);
            },
    'package:flutter/src/widgets/navigator.dart@RouteSettings@toString':
        (m.Scope scope, RouteSettings target) => target.toString,
    'package:flutter/src/widgets/navigator.dart@Page@#as':
        (m.Scope scope, target) => () => target as Page,
    'package:flutter/src/widgets/navigator.dart@Page@#is':
        (m.Scope scope, target) => () => target is Page,
    'package:flutter/src/widgets/navigator.dart@Page@key':
        (m.Scope scope, Page target) => target.key,
    'package:flutter/src/widgets/navigator.dart@Page@restorationId':
        (m.Scope scope, Page target) => target.restorationId,
    'package:flutter/src/widgets/navigator.dart@Page@canUpdate':
        (m.Scope scope, Page target) => target.canUpdate,
    'package:flutter/src/widgets/navigator.dart@Page@createRoute':
        (m.Scope scope, Page target) => target.createRoute,
    'package:flutter/src/widgets/navigator.dart@Page@toString':
        (m.Scope scope, Page target) => target.toString,
    'package:flutter/src/widgets/navigator.dart@NavigatorObserver@#as':
        (m.Scope scope, target) => () => target as NavigatorObserver,
    'package:flutter/src/widgets/navigator.dart@NavigatorObserver@#is':
        (m.Scope scope, target) => () => target is NavigatorObserver,
    'package:flutter/src/widgets/navigator.dart@NavigatorObserver@navigator':
        (m.Scope scope, NavigatorObserver target) => target.navigator,
    'package:flutter/src/widgets/navigator.dart@NavigatorObserver@':
        (m.Scope scope) => () {
              return NavigatorObserver();
            },
    'package:flutter/src/widgets/navigator.dart@NavigatorObserver@didPush':
        (m.Scope scope, NavigatorObserver target) => target.didPush,
    'package:flutter/src/widgets/navigator.dart@NavigatorObserver@didPop':
        (m.Scope scope, NavigatorObserver target) => target.didPop,
    'package:flutter/src/widgets/navigator.dart@NavigatorObserver@didRemove':
        (m.Scope scope, NavigatorObserver target) => target.didRemove,
    'package:flutter/src/widgets/navigator.dart@NavigatorObserver@didReplace':
        (m.Scope scope, NavigatorObserver target) => target.didReplace,
    'package:flutter/src/widgets/navigator.dart@NavigatorObserver@didStartUserGesture':
        (m.Scope scope, NavigatorObserver target) => target.didStartUserGesture,
    'package:flutter/src/widgets/navigator.dart@NavigatorObserver@didStopUserGesture':
        (m.Scope scope, NavigatorObserver target) => target.didStopUserGesture,
    'package:flutter/src/widgets/navigator.dart@HeroControllerScope@#as':
        (m.Scope scope, target) => () => target as HeroControllerScope,
    'package:flutter/src/widgets/navigator.dart@HeroControllerScope@#is':
        (m.Scope scope, target) => () => target is HeroControllerScope,
    'package:flutter/src/widgets/navigator.dart@HeroControllerScope@controller':
        (m.Scope scope, HeroControllerScope target) => target.controller,
    'package:flutter/src/widgets/navigator.dart@HeroControllerScope@':
        (m.Scope scope) => HeroControllerScope,
    'package:flutter/src/widgets/navigator.dart@HeroControllerScope@none':
        (m.Scope scope) => HeroControllerScope.none,
    'package:flutter/src/widgets/navigator.dart@HeroControllerScope@maybeOf':
        (m.Scope scope) => HeroControllerScope.maybeOf,
    'package:flutter/src/widgets/navigator.dart@HeroControllerScope@of':
        (m.Scope scope) => HeroControllerScope.of,
    'package:flutter/src/widgets/navigator.dart@HeroControllerScope@updateShouldNotify':
        (m.Scope scope, HeroControllerScope target) =>
            target.updateShouldNotify,
    'package:flutter/src/widgets/navigator.dart@RouteTransitionRecord@#as':
        (m.Scope scope, target) => () => target as RouteTransitionRecord,
    'package:flutter/src/widgets/navigator.dart@RouteTransitionRecord@#is':
        (m.Scope scope, target) => () => target is RouteTransitionRecord,
    'package:flutter/src/widgets/navigator.dart@RouteTransitionRecord@route':
        (m.Scope scope, RouteTransitionRecord target) => target.route,
    'package:flutter/src/widgets/navigator.dart@RouteTransitionRecord@isWaitingForEnteringDecision':
        (m.Scope scope, RouteTransitionRecord target) =>
            target.isWaitingForEnteringDecision,
    'package:flutter/src/widgets/navigator.dart@RouteTransitionRecord@isWaitingForExitingDecision':
        (m.Scope scope, RouteTransitionRecord target) =>
            target.isWaitingForExitingDecision,
    'package:flutter/src/widgets/navigator.dart@RouteTransitionRecord@markForPush':
        (m.Scope scope, RouteTransitionRecord target) => target.markForPush,
    'package:flutter/src/widgets/navigator.dart@RouteTransitionRecord@markForAdd':
        (m.Scope scope, RouteTransitionRecord target) => target.markForAdd,
    'package:flutter/src/widgets/navigator.dart@RouteTransitionRecord@markForPop':
        (m.Scope scope, RouteTransitionRecord target) => target.markForPop,
    'package:flutter/src/widgets/navigator.dart@RouteTransitionRecord@markForComplete':
        (m.Scope scope, RouteTransitionRecord target) => target.markForComplete,
    'package:flutter/src/widgets/navigator.dart@RouteTransitionRecord@markForRemove':
        (m.Scope scope, RouteTransitionRecord target) => target.markForRemove,
    'package:flutter/src/widgets/navigator.dart@TransitionDelegate@#as':
        (m.Scope scope, target) => () => target as TransitionDelegate,
    'package:flutter/src/widgets/navigator.dart@TransitionDelegate@#is':
        (m.Scope scope, target) => () => target is TransitionDelegate,
    'package:flutter/src/widgets/navigator.dart@TransitionDelegate@resolve':
        (m.Scope scope, TransitionDelegate target) => target.resolve,
    'package:flutter/src/widgets/navigator.dart@DefaultTransitionDelegate@#as':
        (m.Scope scope, target) => () => target as DefaultTransitionDelegate,
    'package:flutter/src/widgets/navigator.dart@DefaultTransitionDelegate@#is':
        (m.Scope scope, target) => () => target is DefaultTransitionDelegate,
    'package:flutter/src/widgets/navigator.dart@DefaultTransitionDelegate@':
        (m.Scope scope) => <T>() {
              return DefaultTransitionDelegate();
            },
    'package:flutter/src/widgets/navigator.dart@DefaultTransitionDelegate@resolve':
        (m.Scope scope, DefaultTransitionDelegate target) => target.resolve,
    'package:flutter/src/widgets/navigator.dart@Navigator@#as':
        (m.Scope scope, target) => () => target as Navigator,
    'package:flutter/src/widgets/navigator.dart@Navigator@#is':
        (m.Scope scope, target) => () => target is Navigator,
    'package:flutter/src/widgets/navigator.dart@Navigator@pages':
        (m.Scope scope, Navigator target) => target.pages,
    'package:flutter/src/widgets/navigator.dart@Navigator@onPopPage':
        (m.Scope scope, Navigator target) => target.onPopPage,
    'package:flutter/src/widgets/navigator.dart@Navigator@transitionDelegate':
        (m.Scope scope, Navigator target) => target.transitionDelegate,
    'package:flutter/src/widgets/navigator.dart@Navigator@initialRoute':
        (m.Scope scope, Navigator target) => target.initialRoute,
    'package:flutter/src/widgets/navigator.dart@Navigator@onGenerateRoute':
        (m.Scope scope, Navigator target) => target.onGenerateRoute,
    'package:flutter/src/widgets/navigator.dart@Navigator@onUnknownRoute':
        (m.Scope scope, Navigator target) => target.onUnknownRoute,
    'package:flutter/src/widgets/navigator.dart@Navigator@observers':
        (m.Scope scope, Navigator target) => target.observers,
    'package:flutter/src/widgets/navigator.dart@Navigator@restorationScopeId':
        (m.Scope scope, Navigator target) => target.restorationScopeId,
    'package:flutter/src/widgets/navigator.dart@Navigator@routeTraversalEdgeBehavior':
        (m.Scope scope, Navigator target) => target.routeTraversalEdgeBehavior,
    'package:flutter/src/widgets/navigator.dart@Navigator@defaultRouteName':
        (m.Scope scope) => Navigator.defaultRouteName,
    'package:flutter/src/widgets/navigator.dart@Navigator@onGenerateInitialRoutes':
        (m.Scope scope, Navigator target) => target.onGenerateInitialRoutes,
    'package:flutter/src/widgets/navigator.dart@Navigator@reportsRouteUpdateToEngine':
        (m.Scope scope, Navigator target) => target.reportsRouteUpdateToEngine,
    'package:flutter/src/widgets/navigator.dart@Navigator@clipBehavior':
        (m.Scope scope, Navigator target) => target.clipBehavior,
    'package:flutter/src/widgets/navigator.dart@Navigator@requestFocus':
        (m.Scope scope, Navigator target) => target.requestFocus,
    'package:flutter/src/widgets/navigator.dart@Navigator@': (m.Scope scope) =>
        (
            {clipBehavior,
            initialRoute,
            key,
            observers,
            onGenerateInitialRoutes,
            onGenerateRoute,
            onPopPage,
            onUnknownRoute,
            pages,
            reportsRouteUpdateToEngine,
            requestFocus,
            restorationScopeId,
            routeTraversalEdgeBehavior,
            transitionDelegate}) {
          List<Route<dynamic>> onGenerateInitialRoutesProxy(
              navigator, initialRoute) {
            return engine.callFunctionPointer(
                scope, onGenerateInitialRoutes!, [navigator, initialRoute], {});
          }

          Route<dynamic> onGenerateRouteProxy(settings) {
            return engine
                .callFunctionPointer(scope, onGenerateRoute!, [settings], {});
          }

          bool onPopPageProxy(route, result) {
            return engine
                .callFunctionPointer(scope, onPopPage!, [route, result], {});
          }

          Route<dynamic> onUnknownRouteProxy(settings) {
            return engine
                .callFunctionPointer(scope, onUnknownRoute!, [settings], {});
          }

          return Navigator(
              clipBehavior: clipBehavior ?? Clip.hardEdge,
              initialRoute: initialRoute,
              key: key,
              observers: observers ?? const <NavigatorObserver>[],
              onGenerateInitialRoutes: onGenerateInitialRoutes == null
                  ? Navigator.defaultGenerateInitialRoutes
                  : onGenerateInitialRoutesProxy,
              onGenerateRoute:
                  onGenerateRoute == null ? null : onGenerateRouteProxy,
              onPopPage: onPopPage == null ? null : onPopPageProxy,
              onUnknownRoute:
                  onUnknownRoute == null ? null : onUnknownRouteProxy,
              pages: pages ?? const <Page<dynamic>>[],
              reportsRouteUpdateToEngine: reportsRouteUpdateToEngine ?? false,
              requestFocus: requestFocus ?? true,
              restorationScopeId: restorationScopeId,
              routeTraversalEdgeBehavior: routeTraversalEdgeBehavior ??
                  kDefaultRouteTraversalEdgeBehavior,
              transitionDelegate: transitionDelegate ??
                  const DefaultTransitionDelegate<dynamic>());
        },
    'package:flutter/src/widgets/navigator.dart@Navigator@pushNamed':
        (m.Scope scope) => Navigator.pushNamed,
    'package:flutter/src/widgets/navigator.dart@Navigator@restorablePushNamed':
        (m.Scope scope) => Navigator.restorablePushNamed,
    'package:flutter/src/widgets/navigator.dart@Navigator@pushReplacementNamed':
        (m.Scope scope) => Navigator.pushReplacementNamed,
    'package:flutter/src/widgets/navigator.dart@Navigator@restorablePushReplacementNamed':
        (m.Scope scope) => Navigator.restorablePushReplacementNamed,
    'package:flutter/src/widgets/navigator.dart@Navigator@popAndPushNamed':
        (m.Scope scope) => Navigator.popAndPushNamed,
    'package:flutter/src/widgets/navigator.dart@Navigator@restorablePopAndPushNamed':
        (m.Scope scope) => Navigator.restorablePopAndPushNamed,
    'package:flutter/src/widgets/navigator.dart@Navigator@pushNamedAndRemoveUntil':
        (m.Scope scope) => (context, newRouteName, predicate, {arguments}) {
              bool predicateProxy(route) {
                return engine
                    .callFunctionPointer(scope, predicate!, [route], {});
              }

              return Navigator.pushNamedAndRemoveUntil<Object>(
                  context, newRouteName, predicateProxy,
                  arguments: arguments);
            },
    'package:flutter/src/widgets/navigator.dart@Navigator@restorablePushNamedAndRemoveUntil':
        (m.Scope scope) => (context, newRouteName, predicate, {arguments}) {
              bool predicateProxy(route) {
                return engine
                    .callFunctionPointer(scope, predicate!, [route], {});
              }

              return Navigator.restorablePushNamedAndRemoveUntil<Object>(
                  context, newRouteName, predicateProxy,
                  arguments: arguments);
            },
    'package:flutter/src/widgets/navigator.dart@Navigator@push':
        (m.Scope scope) => Navigator.push,
    'package:flutter/src/widgets/navigator.dart@Navigator@restorablePush':
        (m.Scope scope) => (context, routeBuilder, {arguments}) {
              Route<T> routeBuilderProxy<T>(context, arguments) {
                return engine.callFunctionPointer(
                    scope, routeBuilder!, [context, arguments], {});
              }

              return Navigator.restorablePush<Object>(
                  context, routeBuilderProxy,
                  arguments: arguments);
            },
    'package:flutter/src/widgets/navigator.dart@Navigator@pushReplacement':
        (m.Scope scope) => Navigator.pushReplacement,
    'package:flutter/src/widgets/navigator.dart@Navigator@restorablePushReplacement':
        (m.Scope scope) => (context, routeBuilder, {arguments, result}) {
              Route<T> routeBuilderProxy<T>(context, arguments) {
                return engine.callFunctionPointer(
                    scope, routeBuilder!, [context, arguments], {});
              }

              return Navigator.restorablePushReplacement<Object, Object>(
                  context, routeBuilderProxy,
                  arguments: arguments, result: result);
            },
    'package:flutter/src/widgets/navigator.dart@Navigator@pushAndRemoveUntil':
        (m.Scope scope) => (context, newRoute, predicate) {
              bool predicateProxy(route) {
                return engine
                    .callFunctionPointer(scope, predicate!, [route], {});
              }

              return Navigator.pushAndRemoveUntil<Object>(
                  context, newRoute, predicateProxy);
            },
    'package:flutter/src/widgets/navigator.dart@Navigator@restorablePushAndRemoveUntil':
        (m.Scope scope) => (context, newRouteBuilder, predicate, {arguments}) {
              Route<T> newRouteBuilderProxy<T>(context, arguments) {
                return engine.callFunctionPointer(
                    scope, newRouteBuilder!, [context, arguments], {});
              }

              bool predicateProxy(route) {
                return engine
                    .callFunctionPointer(scope, predicate!, [route], {});
              }

              return Navigator.restorablePushAndRemoveUntil<Object>(
                  context, newRouteBuilderProxy, predicateProxy,
                  arguments: arguments);
            },
    'package:flutter/src/widgets/navigator.dart@Navigator@replace':
        (m.Scope scope) => Navigator.replace,
    'package:flutter/src/widgets/navigator.dart@Navigator@restorableReplace':
        (m.Scope scope) => (context, {arguments, newRouteBuilder, oldRoute}) {
              Route<T> newRouteBuilderProxy<T>(context, arguments) {
                return engine.callFunctionPointer(
                    scope, newRouteBuilder!, [context, arguments], {});
              }

              return Navigator.restorableReplace<Object>(context,
                  arguments: arguments,
                  newRouteBuilder: newRouteBuilderProxy,
                  oldRoute: oldRoute);
            },
    'package:flutter/src/widgets/navigator.dart@Navigator@replaceRouteBelow':
        (m.Scope scope) => Navigator.replaceRouteBelow,
    'package:flutter/src/widgets/navigator.dart@Navigator@restorableReplaceRouteBelow':
        (m.Scope scope) =>
            (context, {anchorRoute, arguments, newRouteBuilder}) {
              Route<T> newRouteBuilderProxy<T>(context, arguments) {
                return engine.callFunctionPointer(
                    scope, newRouteBuilder!, [context, arguments], {});
              }

              return Navigator.restorableReplaceRouteBelow<Object>(context,
                  anchorRoute: anchorRoute,
                  arguments: arguments,
                  newRouteBuilder: newRouteBuilderProxy);
            },
    'package:flutter/src/widgets/navigator.dart@Navigator@canPop':
        (m.Scope scope) => Navigator.canPop,
    'package:flutter/src/widgets/navigator.dart@Navigator@maybePop':
        (m.Scope scope) => Navigator.maybePop,
    'package:flutter/src/widgets/navigator.dart@Navigator@pop':
        (m.Scope scope) => Navigator.pop,
    'package:flutter/src/widgets/navigator.dart@Navigator@popUntil':
        (m.Scope scope) => (context, predicate) {
              bool predicateProxy(route) {
                return engine
                    .callFunctionPointer(scope, predicate!, [route], {});
              }

              Navigator.popUntil(context, predicateProxy);
            },
    'package:flutter/src/widgets/navigator.dart@Navigator@removeRoute':
        (m.Scope scope) => Navigator.removeRoute,
    'package:flutter/src/widgets/navigator.dart@Navigator@removeRouteBelow':
        (m.Scope scope) => Navigator.removeRouteBelow,
    'package:flutter/src/widgets/navigator.dart@Navigator@of':
        (m.Scope scope) => Navigator.of,
    'package:flutter/src/widgets/navigator.dart@Navigator@maybeOf':
        (m.Scope scope) => Navigator.maybeOf,
    'package:flutter/src/widgets/navigator.dart@Navigator@defaultGenerateInitialRoutes':
        (m.Scope scope) => Navigator.defaultGenerateInitialRoutes,
    'package:flutter/src/widgets/navigator.dart@Navigator@createState':
        (m.Scope scope, Navigator target) => target.createState,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@#as':
        (m.Scope scope, target) => () => target as NavigatorState,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@#is':
        (m.Scope scope, target) => () => target is NavigatorState,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@focusNode':
        (m.Scope scope, NavigatorState target) => target.focusNode,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@userGestureInProgressNotifier':
        (m.Scope scope, NavigatorState target) =>
            target.userGestureInProgressNotifier,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@restorationId':
        (m.Scope scope, NavigatorState target) => target.restorationId,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@overlay':
        (m.Scope scope, NavigatorState target) => target.overlay,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@userGestureInProgress':
        (m.Scope scope, NavigatorState target) => target.userGestureInProgress,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@':
        (m.Scope scope) => () {
              return NavigatorState();
            },
    'package:flutter/src/widgets/navigator.dart@NavigatorState@initState':
        (m.Scope scope, NavigatorState target) => target.initState,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@restoreState':
        (m.Scope scope, NavigatorState target) => target.restoreState,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@didToggleBucket':
        (m.Scope scope, NavigatorState target) => target.didToggleBucket,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@didChangeDependencies':
        (m.Scope scope, NavigatorState target) => target.didChangeDependencies,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@didUpdateWidget':
        (m.Scope scope, NavigatorState target) => target.didUpdateWidget,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@deactivate':
        (m.Scope scope, NavigatorState target) => target.deactivate,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@activate':
        (m.Scope scope, NavigatorState target) => target.activate,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@dispose':
        (m.Scope scope, NavigatorState target) => target.dispose,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@pushNamed':
        (m.Scope scope, NavigatorState target) => target.pushNamed,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@restorablePushNamed':
        (m.Scope scope, NavigatorState target) => target.restorablePushNamed,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@pushReplacementNamed':
        (m.Scope scope, NavigatorState target) => target.pushReplacementNamed,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@restorablePushReplacementNamed':
        (m.Scope scope, NavigatorState target) =>
            target.restorablePushReplacementNamed,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@popAndPushNamed':
        (m.Scope scope, NavigatorState target) => target.popAndPushNamed,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@restorablePopAndPushNamed':
        (m.Scope scope, NavigatorState target) =>
            target.restorablePopAndPushNamed,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@pushNamedAndRemoveUntil':
        (m.Scope scope, NavigatorState target) =>
            (newRouteName, predicate, {arguments}) {
              bool predicateProxy(route) {
                return engine
                    .callFunctionPointer(scope, predicate!, [route], {});
              }

              return target.pushNamedAndRemoveUntil<Object>(
                  newRouteName, predicateProxy,
                  arguments: arguments);
            },
    'package:flutter/src/widgets/navigator.dart@NavigatorState@restorablePushNamedAndRemoveUntil':
        (m.Scope scope, NavigatorState target) =>
            (newRouteName, predicate, {arguments}) {
              bool predicateProxy(route) {
                return engine
                    .callFunctionPointer(scope, predicate!, [route], {});
              }

              return target.restorablePushNamedAndRemoveUntil<Object>(
                  newRouteName, predicateProxy,
                  arguments: arguments);
            },
    'package:flutter/src/widgets/navigator.dart@NavigatorState@push':
        (m.Scope scope, NavigatorState target) => target.push,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@restorablePush':
        (m.Scope scope, NavigatorState target) => (routeBuilder, {arguments}) {
              Route<T> routeBuilderProxy<T>(context, arguments) {
                return engine.callFunctionPointer(
                    scope, routeBuilder!, [context, arguments], {});
              }

              return target.restorablePush<Object>(routeBuilderProxy,
                  arguments: arguments);
            },
    'package:flutter/src/widgets/navigator.dart@NavigatorState@pushReplacement':
        (m.Scope scope, NavigatorState target) => target.pushReplacement,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@restorablePushReplacement':
        (m.Scope scope, NavigatorState target) =>
            (routeBuilder, {arguments, result}) {
              Route<T> routeBuilderProxy<T>(context, arguments) {
                return engine.callFunctionPointer(
                    scope, routeBuilder!, [context, arguments], {});
              }

              return target.restorablePushReplacement<Object, Object>(
                  routeBuilderProxy,
                  arguments: arguments,
                  result: result);
            },
    'package:flutter/src/widgets/navigator.dart@NavigatorState@pushAndRemoveUntil':
        (m.Scope scope, NavigatorState target) => (newRoute, predicate) {
              bool predicateProxy(route) {
                return engine
                    .callFunctionPointer(scope, predicate!, [route], {});
              }

              return target.pushAndRemoveUntil<Object>(
                  newRoute, predicateProxy);
            },
    'package:flutter/src/widgets/navigator.dart@NavigatorState@restorablePushAndRemoveUntil':
        (m.Scope scope, NavigatorState target) =>
            (newRouteBuilder, predicate, {arguments}) {
              Route<T> newRouteBuilderProxy<T>(context, arguments) {
                return engine.callFunctionPointer(
                    scope, newRouteBuilder!, [context, arguments], {});
              }

              bool predicateProxy(route) {
                return engine
                    .callFunctionPointer(scope, predicate!, [route], {});
              }

              return target.restorablePushAndRemoveUntil<Object>(
                  newRouteBuilderProxy, predicateProxy,
                  arguments: arguments);
            },
    'package:flutter/src/widgets/navigator.dart@NavigatorState@replace':
        (m.Scope scope, NavigatorState target) => target.replace,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@restorableReplace':
        (m.Scope scope, NavigatorState target) =>
            ({arguments, newRouteBuilder, oldRoute}) {
              Route<T> newRouteBuilderProxy<T>(context, arguments) {
                return engine.callFunctionPointer(
                    scope, newRouteBuilder!, [context, arguments], {});
              }

              return target.restorableReplace<Object>(
                  arguments: arguments,
                  newRouteBuilder: newRouteBuilderProxy,
                  oldRoute: oldRoute);
            },
    'package:flutter/src/widgets/navigator.dart@NavigatorState@replaceRouteBelow':
        (m.Scope scope, NavigatorState target) => target.replaceRouteBelow,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@restorableReplaceRouteBelow':
        (m.Scope scope, NavigatorState target) =>
            ({anchorRoute, arguments, newRouteBuilder}) {
              Route<T> newRouteBuilderProxy<T>(context, arguments) {
                return engine.callFunctionPointer(
                    scope, newRouteBuilder!, [context, arguments], {});
              }

              return target.restorableReplaceRouteBelow<Object>(
                  anchorRoute: anchorRoute,
                  arguments: arguments,
                  newRouteBuilder: newRouteBuilderProxy);
            },
    'package:flutter/src/widgets/navigator.dart@NavigatorState@canPop':
        (m.Scope scope, NavigatorState target) => target.canPop,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@maybePop':
        (m.Scope scope, NavigatorState target) => target.maybePop,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@pop':
        (m.Scope scope, NavigatorState target) => target.pop,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@popUntil':
        (m.Scope scope, NavigatorState target) => (predicate) {
              bool predicateProxy(route) {
                return engine
                    .callFunctionPointer(scope, predicate!, [route], {});
              }

              target.popUntil(predicateProxy);
            },
    'package:flutter/src/widgets/navigator.dart@NavigatorState@removeRoute':
        (m.Scope scope, NavigatorState target) => target.removeRoute,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@removeRouteBelow':
        (m.Scope scope, NavigatorState target) => target.removeRouteBelow,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@finalizeRoute':
        (m.Scope scope, NavigatorState target) => target.finalizeRoute,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@didStartUserGesture':
        (m.Scope scope, NavigatorState target) => target.didStartUserGesture,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@didStopUserGesture':
        (m.Scope scope, NavigatorState target) => target.didStopUserGesture,
    'package:flutter/src/widgets/navigator.dart@NavigatorState@build':
        (m.Scope scope, NavigatorState target) => target.build,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@#as':
        (m.Scope scope, target) => () => target as RestorableRouteFuture,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@#is':
        (m.Scope scope, target) => () => target is RestorableRouteFuture,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@navigatorFinder':
        (m.Scope scope, RestorableRouteFuture target) => target.navigatorFinder,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@onPresent':
        (m.Scope scope, RestorableRouteFuture target) => target.onPresent,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@onComplete':
        (m.Scope scope, RestorableRouteFuture target) => target.onComplete,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@isPresent':
        (m.Scope scope, RestorableRouteFuture target) => target.isPresent,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@route':
        (m.Scope scope, RestorableRouteFuture target) => target.route,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@enabled':
        (m.Scope scope, RestorableRouteFuture target) => target.enabled,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@':
        (m.Scope scope) => ({navigatorFinder, onComplete, onPresent}) {
              NavigatorState navigatorFinderProxy(context) {
                return engine.callFunctionPointer(
                    scope, navigatorFinder!, [context], {});
              }

              void onCompleteProxy<T>(result) {
                engine.callFunctionPointer(scope, onComplete!, [result], {});
              }

              String onPresentProxy(navigator, arguments) {
                return engine.callFunctionPointer(
                    scope, onPresent!, [navigator, arguments], {});
              }

              return RestorableRouteFuture(
                  navigatorFinder: navigatorFinder == null
                      ? (BuildContext context) => Navigator.of(context)
                      : navigatorFinderProxy,
                  onComplete: onComplete == null ? null : onCompleteProxy,
                  onPresent: onPresentProxy);
            },
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@present':
        (m.Scope scope, RestorableRouteFuture target) => target.present,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@createDefaultValue':
        (m.Scope scope, RestorableRouteFuture target) =>
            target.createDefaultValue,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@initWithValue':
        (m.Scope scope, RestorableRouteFuture target) => target.initWithValue,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@toPrimitives':
        (m.Scope scope, RestorableRouteFuture target) => target.toPrimitives,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@fromPrimitives':
        (m.Scope scope, RestorableRouteFuture target) => target.fromPrimitives,
    'package:flutter/src/widgets/navigator.dart@RestorableRouteFuture@dispose':
        (m.Scope scope, RestorableRouteFuture target) => target.dispose,
  };
}
