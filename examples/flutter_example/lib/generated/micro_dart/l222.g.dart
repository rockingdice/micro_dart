import 'package:flutter/src/widgets/app.dart';
import 'dart:collection' show HashMap;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/actions.dart';
import 'package:flutter/src/widgets/banner.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/default_text_editing_shortcuts.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/focus_traversal.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/localizations.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/pages.dart';
import 'package:flutter/src/widgets/performance_overlay.dart';
import 'package:flutter/src/widgets/restoration.dart';
import 'package:flutter/src/widgets/router.dart';
import 'package:flutter/src/widgets/scrollable_helpers.dart';
import 'package:flutter/src/widgets/semantics_debugger.dart';
import 'package:flutter/src/widgets/shared_app_data.dart';
import 'package:flutter/src/widgets/shortcuts.dart';
import 'package:flutter/src/widgets/tap_region.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:flutter/src/widgets/title.dart';
import 'package:flutter/src/widgets/widget_inspector.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/app.dart@WidgetsApp@#as': (m.Scope scope, target)=>()=>target as WidgetsApp,
'package:flutter/src/widgets/app.dart@WidgetsApp@#is': (m.Scope scope, target)=>()=>target is WidgetsApp,
'package:flutter/src/widgets/app.dart@WidgetsApp@navigatorKey': (m.Scope scope, WidgetsApp target)=>target.navigatorKey,
'package:flutter/src/widgets/app.dart@WidgetsApp@onGenerateRoute': (m.Scope scope, WidgetsApp target)=>target.onGenerateRoute,
'package:flutter/src/widgets/app.dart@WidgetsApp@onGenerateInitialRoutes': (m.Scope scope, WidgetsApp target)=>target.onGenerateInitialRoutes,
'package:flutter/src/widgets/app.dart@WidgetsApp@pageRouteBuilder': (m.Scope scope, WidgetsApp target)=>target.pageRouteBuilder,
'package:flutter/src/widgets/app.dart@WidgetsApp@routeInformationParser': (m.Scope scope, WidgetsApp target)=>target.routeInformationParser,
'package:flutter/src/widgets/app.dart@WidgetsApp@routerDelegate': (m.Scope scope, WidgetsApp target)=>target.routerDelegate,
'package:flutter/src/widgets/app.dart@WidgetsApp@backButtonDispatcher': (m.Scope scope, WidgetsApp target)=>target.backButtonDispatcher,
'package:flutter/src/widgets/app.dart@WidgetsApp@routeInformationProvider': (m.Scope scope, WidgetsApp target)=>target.routeInformationProvider,
'package:flutter/src/widgets/app.dart@WidgetsApp@routerConfig': (m.Scope scope, WidgetsApp target)=>target.routerConfig,
'package:flutter/src/widgets/app.dart@WidgetsApp@home': (m.Scope scope, WidgetsApp target)=>target.home,
'package:flutter/src/widgets/app.dart@WidgetsApp@routes': (m.Scope scope, WidgetsApp target)=>target.routes,
'package:flutter/src/widgets/app.dart@WidgetsApp@onUnknownRoute': (m.Scope scope, WidgetsApp target)=>target.onUnknownRoute,
'package:flutter/src/widgets/app.dart@WidgetsApp@initialRoute': (m.Scope scope, WidgetsApp target)=>target.initialRoute,
'package:flutter/src/widgets/app.dart@WidgetsApp@navigatorObservers': (m.Scope scope, WidgetsApp target)=>target.navigatorObservers,
'package:flutter/src/widgets/app.dart@WidgetsApp@builder': (m.Scope scope, WidgetsApp target)=>target.builder,
'package:flutter/src/widgets/app.dart@WidgetsApp@title': (m.Scope scope, WidgetsApp target)=>target.title,
'package:flutter/src/widgets/app.dart@WidgetsApp@onGenerateTitle': (m.Scope scope, WidgetsApp target)=>target.onGenerateTitle,
'package:flutter/src/widgets/app.dart@WidgetsApp@textStyle': (m.Scope scope, WidgetsApp target)=>target.textStyle,
'package:flutter/src/widgets/app.dart@WidgetsApp@color': (m.Scope scope, WidgetsApp target)=>target.color,
'package:flutter/src/widgets/app.dart@WidgetsApp@locale': (m.Scope scope, WidgetsApp target)=>target.locale,
'package:flutter/src/widgets/app.dart@WidgetsApp@localizationsDelegates': (m.Scope scope, WidgetsApp target)=>target.localizationsDelegates,
'package:flutter/src/widgets/app.dart@WidgetsApp@localeListResolutionCallback': (m.Scope scope, WidgetsApp target)=>target.localeListResolutionCallback,
'package:flutter/src/widgets/app.dart@WidgetsApp@localeResolutionCallback': (m.Scope scope, WidgetsApp target)=>target.localeResolutionCallback,
'package:flutter/src/widgets/app.dart@WidgetsApp@supportedLocales': (m.Scope scope, WidgetsApp target)=>target.supportedLocales,
'package:flutter/src/widgets/app.dart@WidgetsApp@showPerformanceOverlay': (m.Scope scope, WidgetsApp target)=>target.showPerformanceOverlay,
'package:flutter/src/widgets/app.dart@WidgetsApp@checkerboardRasterCacheImages': (m.Scope scope, WidgetsApp target)=>target.checkerboardRasterCacheImages,
'package:flutter/src/widgets/app.dart@WidgetsApp@checkerboardOffscreenLayers': (m.Scope scope, WidgetsApp target)=>target.checkerboardOffscreenLayers,
'package:flutter/src/widgets/app.dart@WidgetsApp@showSemanticsDebugger': (m.Scope scope, WidgetsApp target)=>target.showSemanticsDebugger,
'package:flutter/src/widgets/app.dart@WidgetsApp@debugShowWidgetInspector': (m.Scope scope, WidgetsApp target)=>target.debugShowWidgetInspector,
'package:flutter/src/widgets/app.dart@WidgetsApp@inspectorSelectButtonBuilder': (m.Scope scope, WidgetsApp target)=>target.inspectorSelectButtonBuilder,
'package:flutter/src/widgets/app.dart@WidgetsApp@debugShowCheckedModeBanner': (m.Scope scope, WidgetsApp target)=>target.debugShowCheckedModeBanner,
'package:flutter/src/widgets/app.dart@WidgetsApp@shortcuts': (m.Scope scope, WidgetsApp target)=>target.shortcuts,
'package:flutter/src/widgets/app.dart@WidgetsApp@actions': (m.Scope scope, WidgetsApp target)=>target.actions,
'package:flutter/src/widgets/app.dart@WidgetsApp@restorationScopeId': (m.Scope scope, WidgetsApp target)=>target.restorationScopeId,
'package:flutter/src/widgets/app.dart@WidgetsApp@useInheritedMediaQuery': (m.Scope scope, WidgetsApp target)=>target.useInheritedMediaQuery,
'package:flutter/src/widgets/app.dart@WidgetsApp@showPerformanceOverlayOverride': (m.Scope scope)=>WidgetsApp.showPerformanceOverlayOverride,
'package:flutter/src/widgets/app.dart@WidgetsApp@showPerformanceOverlayOverride:set': (m.Scope scope)=>(other)=>WidgetsApp.showPerformanceOverlayOverride=other,
'package:flutter/src/widgets/app.dart@WidgetsApp@debugShowWidgetInspectorOverride': (m.Scope scope)=>WidgetsApp.debugShowWidgetInspectorOverride,
'package:flutter/src/widgets/app.dart@WidgetsApp@debugShowWidgetInspectorOverride:set': (m.Scope scope)=>(other)=>WidgetsApp.debugShowWidgetInspectorOverride=other,
'package:flutter/src/widgets/app.dart@WidgetsApp@debugAllowBannerOverride': (m.Scope scope)=>WidgetsApp.debugAllowBannerOverride,
'package:flutter/src/widgets/app.dart@WidgetsApp@debugAllowBannerOverride:set': (m.Scope scope)=>(other)=>WidgetsApp.debugAllowBannerOverride=other,
'package:flutter/src/widgets/app.dart@WidgetsApp@defaultActions': (m.Scope scope)=>WidgetsApp.defaultActions,
'package:flutter/src/widgets/app.dart@WidgetsApp@defaultActions:set': (m.Scope scope)=>(other)=>WidgetsApp.defaultActions=other,
'package:flutter/src/widgets/app.dart@WidgetsApp@defaultShortcuts': (m.Scope scope)=>WidgetsApp.defaultShortcuts,
'package:flutter/src/widgets/app.dart@WidgetsApp@': (m.Scope scope)=>({ actions,  builder,  checkerboardOffscreenLayers,  checkerboardRasterCacheImages,  color,  debugShowCheckedModeBanner,  debugShowWidgetInspector,  home,  initialRoute,  inspectorSelectButtonBuilder,  key,  locale,  localeListResolutionCallback,  localeResolutionCallback,  localizationsDelegates,  navigatorKey,  navigatorObservers,  onGenerateInitialRoutes,  onGenerateRoute,  onGenerateTitle,  onUnknownRoute,  pageRouteBuilder,  restorationScopeId,  routes,  shortcuts,  showPerformanceOverlay,  showSemanticsDebugger,  supportedLocales,  textStyle,  title,  useInheritedMediaQuery}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

Widget inspectorSelectButtonBuilderProxy( context,  onPressed) {
return  engine.callFunctionPointer(scope, inspectorSelectButtonBuilder!,[context, onPressed], {});
}

Locale localeListResolutionCallbackProxy( locales,  supportedLocales) {
return  engine.callFunctionPointer(scope, localeListResolutionCallback!,[locales, supportedLocales], {});
}

Locale localeResolutionCallbackProxy( locale,  supportedLocales) {
return  engine.callFunctionPointer(scope, localeResolutionCallback!,[locale, supportedLocales], {});
}

List<Route<dynamic>> onGenerateInitialRoutesProxy( initialRoute) {
return  engine.callFunctionPointer(scope, onGenerateInitialRoutes!,[initialRoute], {});
}

Route<dynamic> onGenerateRouteProxy( settings) {
return  engine.callFunctionPointer(scope, onGenerateRoute!,[settings], {});
}

String onGenerateTitleProxy( context) {
return  engine.callFunctionPointer(scope, onGenerateTitle!,[context], {});
}

Route<dynamic> onUnknownRouteProxy( settings) {
return  engine.callFunctionPointer(scope, onUnknownRoute!,[settings], {});
}

PageRoute<T> pageRouteBuilderProxy<T>( settings,  builder) {
return  engine.callFunctionPointer(scope, pageRouteBuilder!,[settings, builder], {});
}

return WidgetsApp(actions:actions, builder:builder == null ? null :builderProxy, checkerboardOffscreenLayers:checkerboardOffscreenLayers ?? false, checkerboardRasterCacheImages:checkerboardRasterCacheImages ?? false, color:color, debugShowCheckedModeBanner:debugShowCheckedModeBanner ?? true, debugShowWidgetInspector:debugShowWidgetInspector ?? false, home:home, initialRoute:initialRoute, inspectorSelectButtonBuilder:inspectorSelectButtonBuilder == null ? null :inspectorSelectButtonBuilderProxy, key:key, locale:locale, localeListResolutionCallback:localeListResolutionCallback == null ? null :localeListResolutionCallbackProxy, localeResolutionCallback:localeResolutionCallback == null ? null :localeResolutionCallbackProxy, localizationsDelegates:localizationsDelegates, navigatorKey:navigatorKey, navigatorObservers:navigatorObservers ?? const <NavigatorObserver>[], onGenerateInitialRoutes:onGenerateInitialRoutes == null ? null :onGenerateInitialRoutesProxy, onGenerateRoute:onGenerateRoute == null ? null :onGenerateRouteProxy, onGenerateTitle:onGenerateTitle == null ? null :onGenerateTitleProxy, onUnknownRoute:onUnknownRoute == null ? null :onUnknownRouteProxy, pageRouteBuilder:pageRouteBuilder == null ? null :pageRouteBuilderProxy, restorationScopeId:restorationScopeId, routes:routes ?? const <String, WidgetBuilder>{}, shortcuts:shortcuts, showPerformanceOverlay:showPerformanceOverlay ?? false, showSemanticsDebugger:showSemanticsDebugger ?? false, supportedLocales:supportedLocales ?? const <Locale>[Locale('en', 'US')], textStyle:textStyle, title:title ?? '', useInheritedMediaQuery:useInheritedMediaQuery ?? false);
},
'package:flutter/src/widgets/app.dart@WidgetsApp@router': (m.Scope scope)=>({ actions,  backButtonDispatcher,  builder,  checkerboardOffscreenLayers,  checkerboardRasterCacheImages,  color,  debugShowCheckedModeBanner,  debugShowWidgetInspector,  inspectorSelectButtonBuilder,  key,  locale,  localeListResolutionCallback,  localeResolutionCallback,  localizationsDelegates,  onGenerateTitle,  restorationScopeId,  routeInformationParser,  routeInformationProvider,  routerConfig,  routerDelegate,  shortcuts,  showPerformanceOverlay,  showSemanticsDebugger,  supportedLocales,  textStyle,  title,  useInheritedMediaQuery}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
}

Widget inspectorSelectButtonBuilderProxy( context,  onPressed) {
return  engine.callFunctionPointer(scope, inspectorSelectButtonBuilder!,[context, onPressed], {});
}

Locale localeListResolutionCallbackProxy( locales,  supportedLocales) {
return  engine.callFunctionPointer(scope, localeListResolutionCallback!,[locales, supportedLocales], {});
}

Locale localeResolutionCallbackProxy( locale,  supportedLocales) {
return  engine.callFunctionPointer(scope, localeResolutionCallback!,[locale, supportedLocales], {});
}

String onGenerateTitleProxy( context) {
return  engine.callFunctionPointer(scope, onGenerateTitle!,[context], {});
}

return WidgetsApp.router(actions:actions, backButtonDispatcher:backButtonDispatcher, builder:builder == null ? null :builderProxy, checkerboardOffscreenLayers:checkerboardOffscreenLayers ?? false, checkerboardRasterCacheImages:checkerboardRasterCacheImages ?? false, color:color, debugShowCheckedModeBanner:debugShowCheckedModeBanner ?? true, debugShowWidgetInspector:debugShowWidgetInspector ?? false, inspectorSelectButtonBuilder:inspectorSelectButtonBuilder == null ? null :inspectorSelectButtonBuilderProxy, key:key, locale:locale, localeListResolutionCallback:localeListResolutionCallback == null ? null :localeListResolutionCallbackProxy, localeResolutionCallback:localeResolutionCallback == null ? null :localeResolutionCallbackProxy, localizationsDelegates:localizationsDelegates, onGenerateTitle:onGenerateTitle == null ? null :onGenerateTitleProxy, restorationScopeId:restorationScopeId, routeInformationParser:routeInformationParser, routeInformationProvider:routeInformationProvider, routerConfig:routerConfig, routerDelegate:routerDelegate, shortcuts:shortcuts, showPerformanceOverlay:showPerformanceOverlay ?? false, showSemanticsDebugger:showSemanticsDebugger ?? false, supportedLocales:supportedLocales ?? const <Locale>[Locale('en', 'US')], textStyle:textStyle, title:title ?? '', useInheritedMediaQuery:useInheritedMediaQuery ?? false);
},
'package:flutter/src/widgets/app.dart@WidgetsApp@createState': (m.Scope scope, WidgetsApp target)=>target.createState,
'package:flutter/src/widgets/app.dart@@basicLocaleListResolution': (m.Scope scope)=>basicLocaleListResolution,

};
}