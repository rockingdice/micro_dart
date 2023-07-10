import 'package:flutter/src/material/app.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/material/arc.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/floating_action_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/page.dart';
import 'package:flutter/src/material/scaffold.dart'
    show ScaffoldMessenger, ScaffoldMessengerState;
import 'package:flutter/src/material/scrollbar.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/tooltip.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;

Map<String, Function> getLibrary(m.MicroDartEngine engine) {
  return {
    'package:flutter/src/material/app.dart@MaterialApp@#as':
        (m.Scope scope, target) => () => target as MaterialApp,
    'package:flutter/src/material/app.dart@MaterialApp@#is':
        (m.Scope scope, target) => () => target is MaterialApp,
    'package:flutter/src/material/app.dart@MaterialApp@navigatorKey':
        (m.Scope scope, MaterialApp target) => target.navigatorKey,
    'package:flutter/src/material/app.dart@MaterialApp@scaffoldMessengerKey':
        (m.Scope scope, MaterialApp target) => target.scaffoldMessengerKey,
    'package:flutter/src/material/app.dart@MaterialApp@home':
        (m.Scope scope, MaterialApp target) => target.home,
    'package:flutter/src/material/app.dart@MaterialApp@routes':
        (m.Scope scope, MaterialApp target) => target.routes,
    'package:flutter/src/material/app.dart@MaterialApp@initialRoute':
        (m.Scope scope, MaterialApp target) => target.initialRoute,
    'package:flutter/src/material/app.dart@MaterialApp@onGenerateRoute':
        (m.Scope scope, MaterialApp target) => target.onGenerateRoute,
    'package:flutter/src/material/app.dart@MaterialApp@onGenerateInitialRoutes':
        (m.Scope scope, MaterialApp target) => target.onGenerateInitialRoutes,
    'package:flutter/src/material/app.dart@MaterialApp@onUnknownRoute':
        (m.Scope scope, MaterialApp target) => target.onUnknownRoute,
    'package:flutter/src/material/app.dart@MaterialApp@navigatorObservers':
        (m.Scope scope, MaterialApp target) => target.navigatorObservers,
    'package:flutter/src/material/app.dart@MaterialApp@routeInformationProvider':
        (m.Scope scope, MaterialApp target) => target.routeInformationProvider,
    'package:flutter/src/material/app.dart@MaterialApp@routeInformationParser':
        (m.Scope scope, MaterialApp target) => target.routeInformationParser,
    'package:flutter/src/material/app.dart@MaterialApp@routerDelegate':
        (m.Scope scope, MaterialApp target) => target.routerDelegate,
    'package:flutter/src/material/app.dart@MaterialApp@backButtonDispatcher':
        (m.Scope scope, MaterialApp target) => target.backButtonDispatcher,
    'package:flutter/src/material/app.dart@MaterialApp@routerConfig':
        (m.Scope scope, MaterialApp target) => target.routerConfig,
    'package:flutter/src/material/app.dart@MaterialApp@builder':
        (m.Scope scope, MaterialApp target) => target.builder,
    'package:flutter/src/material/app.dart@MaterialApp@title':
        (m.Scope scope, MaterialApp target) => target.title,
    'package:flutter/src/material/app.dart@MaterialApp@onGenerateTitle':
        (m.Scope scope, MaterialApp target) => target.onGenerateTitle,
    'package:flutter/src/material/app.dart@MaterialApp@theme':
        (m.Scope scope, MaterialApp target) => target.theme,
    'package:flutter/src/material/app.dart@MaterialApp@darkTheme':
        (m.Scope scope, MaterialApp target) => target.darkTheme,
    'package:flutter/src/material/app.dart@MaterialApp@highContrastTheme':
        (m.Scope scope, MaterialApp target) => target.highContrastTheme,
    'package:flutter/src/material/app.dart@MaterialApp@highContrastDarkTheme':
        (m.Scope scope, MaterialApp target) => target.highContrastDarkTheme,
    'package:flutter/src/material/app.dart@MaterialApp@themeMode':
        (m.Scope scope, MaterialApp target) => target.themeMode,
    'package:flutter/src/material/app.dart@MaterialApp@themeAnimationDuration':
        (m.Scope scope, MaterialApp target) => target.themeAnimationDuration,
    'package:flutter/src/material/app.dart@MaterialApp@themeAnimationCurve':
        (m.Scope scope, MaterialApp target) => target.themeAnimationCurve,
    'package:flutter/src/material/app.dart@MaterialApp@color':
        (m.Scope scope, MaterialApp target) => target.color,
    'package:flutter/src/material/app.dart@MaterialApp@locale':
        (m.Scope scope, MaterialApp target) => target.locale,
    'package:flutter/src/material/app.dart@MaterialApp@localizationsDelegates':
        (m.Scope scope, MaterialApp target) => target.localizationsDelegates,
    'package:flutter/src/material/app.dart@MaterialApp@localeListResolutionCallback':
        (m.Scope scope, MaterialApp target) =>
            target.localeListResolutionCallback,
    'package:flutter/src/material/app.dart@MaterialApp@localeResolutionCallback':
        (m.Scope scope, MaterialApp target) => target.localeResolutionCallback,
    'package:flutter/src/material/app.dart@MaterialApp@supportedLocales':
        (m.Scope scope, MaterialApp target) => target.supportedLocales,
    'package:flutter/src/material/app.dart@MaterialApp@showPerformanceOverlay':
        (m.Scope scope, MaterialApp target) => target.showPerformanceOverlay,
    'package:flutter/src/material/app.dart@MaterialApp@checkerboardRasterCacheImages':
        (m.Scope scope, MaterialApp target) =>
            target.checkerboardRasterCacheImages,
    'package:flutter/src/material/app.dart@MaterialApp@checkerboardOffscreenLayers':
        (m.Scope scope, MaterialApp target) =>
            target.checkerboardOffscreenLayers,
    'package:flutter/src/material/app.dart@MaterialApp@showSemanticsDebugger':
        (m.Scope scope, MaterialApp target) => target.showSemanticsDebugger,
    'package:flutter/src/material/app.dart@MaterialApp@debugShowCheckedModeBanner':
        (m.Scope scope, MaterialApp target) =>
            target.debugShowCheckedModeBanner,
    'package:flutter/src/material/app.dart@MaterialApp@shortcuts':
        (m.Scope scope, MaterialApp target) => target.shortcuts,
    'package:flutter/src/material/app.dart@MaterialApp@actions':
        (m.Scope scope, MaterialApp target) => target.actions,
    'package:flutter/src/material/app.dart@MaterialApp@restorationScopeId':
        (m.Scope scope, MaterialApp target) => target.restorationScopeId,
    'package:flutter/src/material/app.dart@MaterialApp@scrollBehavior':
        (m.Scope scope, MaterialApp target) => target.scrollBehavior,
    'package:flutter/src/material/app.dart@MaterialApp@debugShowMaterialGrid':
        (m.Scope scope, MaterialApp target) => target.debugShowMaterialGrid,
    'package:flutter/src/material/app.dart@MaterialApp@useInheritedMediaQuery':
        (m.Scope scope, MaterialApp target) => target.useInheritedMediaQuery,
    'package:flutter/src/material/app.dart@MaterialApp@': (m.Scope scope) => (
            {actions,
            builder,
            checkerboardOffscreenLayers,
            checkerboardRasterCacheImages,
            color,
            darkTheme,
            debugShowCheckedModeBanner,
            debugShowMaterialGrid,
            highContrastDarkTheme,
            highContrastTheme,
            home,
            initialRoute,
            key,
            locale,
            localeListResolutionCallback,
            localeResolutionCallback,
            List<dynamic>? localizationsDelegates,
            navigatorKey,
            navigatorObservers,
            onGenerateInitialRoutes,
            onGenerateRoute,
            onGenerateTitle,
            onUnknownRoute,
            restorationScopeId,
            routes,
            scaffoldMessengerKey,
            scrollBehavior,
            shortcuts,
            showPerformanceOverlay,
            showSemanticsDebugger,
            supportedLocales,
            theme,
            themeAnimationCurve,
            themeAnimationDuration,
            themeMode,
            title,
            useInheritedMediaQuery}) {
          Widget builderProxy(context, child) {
            return engine
                .callFunctionPointer(scope, builder!, [context, child], {});
          }

          Locale localeListResolutionCallbackProxy(locales, supportedLocales) {
            return engine.callFunctionPointer(scope,
                localeListResolutionCallback!, [locales, supportedLocales], {});
          }

          Locale localeResolutionCallbackProxy(locale, supportedLocales) {
            return engine.callFunctionPointer(scope, localeResolutionCallback!,
                [locale, supportedLocales], {});
          }

          List<Route<dynamic>> onGenerateInitialRoutesProxy(initialRoute) {
            return engine.callFunctionPointer(
                scope, onGenerateInitialRoutes!, [initialRoute], {});
          }

          Route<dynamic> onGenerateRouteProxy(settings) {
            return engine
                .callFunctionPointer(scope, onGenerateRoute!, [settings], {});
          }

          String onGenerateTitleProxy(context) {
            return engine
                .callFunctionPointer(scope, onGenerateTitle!, [context], {});
          }

          Route<dynamic> onUnknownRouteProxy(settings) {
            return engine
                .callFunctionPointer(scope, onUnknownRoute!, [settings], {});
          }

          return MaterialApp(
              actions: actions,
              builder: builder == null ? null : builderProxy,
              checkerboardOffscreenLayers: checkerboardOffscreenLayers ?? false,
              checkerboardRasterCacheImages:
                  checkerboardRasterCacheImages ?? false,
              color: color,
              darkTheme: darkTheme,
              debugShowCheckedModeBanner: debugShowCheckedModeBanner ?? true,
              debugShowMaterialGrid: debugShowMaterialGrid ?? false,
              highContrastDarkTheme: highContrastDarkTheme,
              highContrastTheme: highContrastTheme,
              home: home,
              initialRoute: initialRoute,
              key: key,
              locale: locale,
              localeListResolutionCallback: localeListResolutionCallback == null
                  ? null
                  : localeListResolutionCallbackProxy,
              localeResolutionCallback: localeResolutionCallback == null
                  ? null
                  : localeResolutionCallbackProxy,
              localizationsDelegates:
                  localizationsDelegates?.map<LocalizationsDelegate>((e) => e),
              navigatorKey: navigatorKey,
              navigatorObservers:
                  navigatorObservers ?? const <NavigatorObserver>[],
              onGenerateInitialRoutes: onGenerateInitialRoutes == null
                  ? null
                  : onGenerateInitialRoutesProxy,
              onGenerateRoute:
                  onGenerateRoute == null ? null : onGenerateRouteProxy,
              onGenerateTitle:
                  onGenerateTitle == null ? null : onGenerateTitleProxy,
              onUnknownRoute:
                  onUnknownRoute == null ? null : onUnknownRouteProxy,
              restorationScopeId: restorationScopeId,
              routes: routes ?? const <String, WidgetBuilder>{},
              scaffoldMessengerKey: scaffoldMessengerKey,
              scrollBehavior: scrollBehavior,
              shortcuts: shortcuts,
              showPerformanceOverlay: showPerformanceOverlay ?? false,
              showSemanticsDebugger: showSemanticsDebugger ?? false,
              supportedLocales:
                  supportedLocales ?? const <Locale>[Locale('en', 'US')],
              theme: theme,
              themeAnimationCurve: themeAnimationCurve ?? Curves.linear,
              themeAnimationDuration:
                  themeAnimationDuration ?? kThemeAnimationDuration,
              themeMode: themeMode ?? ThemeMode.system,
              title: title ?? '',
              useInheritedMediaQuery: useInheritedMediaQuery ?? false);
        },
    'package:flutter/src/material/app.dart@MaterialApp@router': (m.Scope
            scope) =>
        (
            {actions,
            backButtonDispatcher,
            builder,
            checkerboardOffscreenLayers,
            checkerboardRasterCacheImages,
            color,
            darkTheme,
            debugShowCheckedModeBanner,
            debugShowMaterialGrid,
            highContrastDarkTheme,
            highContrastTheme,
            key,
            locale,
            localeListResolutionCallback,
            localeResolutionCallback,
            localizationsDelegates,
            onGenerateTitle,
            restorationScopeId,
            routeInformationParser,
            routeInformationProvider,
            routerConfig,
            routerDelegate,
            scaffoldMessengerKey,
            scrollBehavior,
            shortcuts,
            showPerformanceOverlay,
            showSemanticsDebugger,
            supportedLocales,
            theme,
            themeAnimationCurve,
            themeAnimationDuration,
            themeMode,
            title,
            useInheritedMediaQuery}) {
          Widget builderProxy(context, child) {
            return engine
                .callFunctionPointer(scope, builder!, [context, child], {});
          }

          Locale localeListResolutionCallbackProxy(locales, supportedLocales) {
            return engine.callFunctionPointer(scope,
                localeListResolutionCallback!, [locales, supportedLocales], {});
          }

          Locale localeResolutionCallbackProxy(locale, supportedLocales) {
            return engine.callFunctionPointer(scope, localeResolutionCallback!,
                [locale, supportedLocales], {});
          }

          String onGenerateTitleProxy(context) {
            return engine
                .callFunctionPointer(scope, onGenerateTitle!, [context], {});
          }

          return MaterialApp.router(
              actions: actions,
              backButtonDispatcher: backButtonDispatcher,
              builder: builder == null ? null : builderProxy,
              checkerboardOffscreenLayers: checkerboardOffscreenLayers ?? false,
              checkerboardRasterCacheImages:
                  checkerboardRasterCacheImages ?? false,
              color: color,
              darkTheme: darkTheme,
              debugShowCheckedModeBanner: debugShowCheckedModeBanner ?? true,
              debugShowMaterialGrid: debugShowMaterialGrid ?? false,
              highContrastDarkTheme: highContrastDarkTheme,
              highContrastTheme: highContrastTheme,
              key: key,
              locale: locale,
              localeListResolutionCallback: localeListResolutionCallback == null
                  ? null
                  : localeListResolutionCallbackProxy,
              localeResolutionCallback: localeResolutionCallback == null
                  ? null
                  : localeResolutionCallbackProxy,
              localizationsDelegates: localizationsDelegates,
              onGenerateTitle:
                  onGenerateTitle == null ? null : onGenerateTitleProxy,
              restorationScopeId: restorationScopeId,
              routeInformationParser: routeInformationParser,
              routeInformationProvider: routeInformationProvider,
              routerConfig: routerConfig,
              routerDelegate: routerDelegate,
              scaffoldMessengerKey: scaffoldMessengerKey,
              scrollBehavior: scrollBehavior,
              shortcuts: shortcuts,
              showPerformanceOverlay: showPerformanceOverlay ?? false,
              showSemanticsDebugger: showSemanticsDebugger ?? false,
              supportedLocales:
                  supportedLocales ?? const <Locale>[Locale('en', 'US')],
              theme: theme,
              themeAnimationCurve: themeAnimationCurve ?? Curves.linear,
              themeAnimationDuration:
                  themeAnimationDuration ?? kThemeAnimationDuration,
              themeMode: themeMode ?? ThemeMode.system,
              title: title ?? '',
              useInheritedMediaQuery: useInheritedMediaQuery ?? false);
        },
    'package:flutter/src/material/app.dart@MaterialApp@createState':
        (m.Scope scope, MaterialApp target) => target.createState,
    'package:flutter/src/material/app.dart@MaterialApp@createMaterialHeroController':
        (m.Scope scope) => MaterialApp.createMaterialHeroController,
    'package:flutter/src/material/app.dart@MaterialScrollBehavior@#as':
        (m.Scope scope, target) => () => target as MaterialScrollBehavior,
    'package:flutter/src/material/app.dart@MaterialScrollBehavior@#is':
        (m.Scope scope, target) => () => target is MaterialScrollBehavior,
    'package:flutter/src/material/app.dart@MaterialScrollBehavior@':
        (m.Scope scope) => ({androidOverscrollIndicator}) {
              return MaterialScrollBehavior(
                  androidOverscrollIndicator: androidOverscrollIndicator);
            },
    'package:flutter/src/material/app.dart@MaterialScrollBehavior@getPlatform':
        (m.Scope scope, MaterialScrollBehavior target) => target.getPlatform,
    'package:flutter/src/material/app.dart@MaterialScrollBehavior@buildScrollbar':
        (m.Scope scope, MaterialScrollBehavior target) => target.buildScrollbar,
    'package:flutter/src/material/app.dart@MaterialScrollBehavior@buildOverscrollIndicator':
        (m.Scope scope, MaterialScrollBehavior target) =>
            target.buildOverscrollIndicator,
    'package:flutter/src/material/app.dart@ThemeMode@system': (m.Scope scope) =>
        ThemeMode.system,
    'package:flutter/src/material/app.dart@ThemeMode@light': (m.Scope scope) =>
        ThemeMode.light,
    'package:flutter/src/material/app.dart@ThemeMode@dark': (m.Scope scope) =>
        ThemeMode.dark
  };
}
