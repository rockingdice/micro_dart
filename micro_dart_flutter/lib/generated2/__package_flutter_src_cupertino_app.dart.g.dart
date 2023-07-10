import 'package:flutter/src/cupertino/app.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/button.dart';
import 'package:flutter/src/cupertino/colors.dart';
import 'package:flutter/src/cupertino/icons.dart';
import 'package:flutter/src/cupertino/interface_level.dart';
import 'package:flutter/src/cupertino/localizations.dart';
import 'package:flutter/src/cupertino/route.dart';
import 'package:flutter/src/cupertino/scrollbar.dart';
import 'package:flutter/src/cupertino/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/app.dart@CupertinoApp@#as': (m.Scope scope, target)=>()=>target as CupertinoApp,
'package:flutter/src/cupertino/app.dart@CupertinoApp@#is': (m.Scope scope, target)=>()=>target is CupertinoApp,
'package:flutter/src/cupertino/app.dart@CupertinoApp@navigatorKey': (m.Scope scope, CupertinoApp target)=>target.navigatorKey,
'package:flutter/src/cupertino/app.dart@CupertinoApp@home': (m.Scope scope, CupertinoApp target)=>target.home,
'package:flutter/src/cupertino/app.dart@CupertinoApp@theme': (m.Scope scope, CupertinoApp target)=>target.theme,
'package:flutter/src/cupertino/app.dart@CupertinoApp@routes': (m.Scope scope, CupertinoApp target)=>target.routes,
'package:flutter/src/cupertino/app.dart@CupertinoApp@initialRoute': (m.Scope scope, CupertinoApp target)=>target.initialRoute,
'package:flutter/src/cupertino/app.dart@CupertinoApp@onGenerateRoute': (m.Scope scope, CupertinoApp target)=>target.onGenerateRoute,
'package:flutter/src/cupertino/app.dart@CupertinoApp@onGenerateInitialRoutes': (m.Scope scope, CupertinoApp target)=>target.onGenerateInitialRoutes,
'package:flutter/src/cupertino/app.dart@CupertinoApp@onUnknownRoute': (m.Scope scope, CupertinoApp target)=>target.onUnknownRoute,
'package:flutter/src/cupertino/app.dart@CupertinoApp@navigatorObservers': (m.Scope scope, CupertinoApp target)=>target.navigatorObservers,
'package:flutter/src/cupertino/app.dart@CupertinoApp@routeInformationProvider': (m.Scope scope, CupertinoApp target)=>target.routeInformationProvider,
'package:flutter/src/cupertino/app.dart@CupertinoApp@routeInformationParser': (m.Scope scope, CupertinoApp target)=>target.routeInformationParser,
'package:flutter/src/cupertino/app.dart@CupertinoApp@routerDelegate': (m.Scope scope, CupertinoApp target)=>target.routerDelegate,
'package:flutter/src/cupertino/app.dart@CupertinoApp@backButtonDispatcher': (m.Scope scope, CupertinoApp target)=>target.backButtonDispatcher,
'package:flutter/src/cupertino/app.dart@CupertinoApp@routerConfig': (m.Scope scope, CupertinoApp target)=>target.routerConfig,
'package:flutter/src/cupertino/app.dart@CupertinoApp@builder': (m.Scope scope, CupertinoApp target)=>target.builder,
'package:flutter/src/cupertino/app.dart@CupertinoApp@title': (m.Scope scope, CupertinoApp target)=>target.title,
'package:flutter/src/cupertino/app.dart@CupertinoApp@onGenerateTitle': (m.Scope scope, CupertinoApp target)=>target.onGenerateTitle,
'package:flutter/src/cupertino/app.dart@CupertinoApp@color': (m.Scope scope, CupertinoApp target)=>target.color,
'package:flutter/src/cupertino/app.dart@CupertinoApp@locale': (m.Scope scope, CupertinoApp target)=>target.locale,
'package:flutter/src/cupertino/app.dart@CupertinoApp@localizationsDelegates': (m.Scope scope, CupertinoApp target)=>target.localizationsDelegates,
'package:flutter/src/cupertino/app.dart@CupertinoApp@localeListResolutionCallback': (m.Scope scope, CupertinoApp target)=>target.localeListResolutionCallback,
'package:flutter/src/cupertino/app.dart@CupertinoApp@localeResolutionCallback': (m.Scope scope, CupertinoApp target)=>target.localeResolutionCallback,
'package:flutter/src/cupertino/app.dart@CupertinoApp@supportedLocales': (m.Scope scope, CupertinoApp target)=>target.supportedLocales,
'package:flutter/src/cupertino/app.dart@CupertinoApp@showPerformanceOverlay': (m.Scope scope, CupertinoApp target)=>target.showPerformanceOverlay,
'package:flutter/src/cupertino/app.dart@CupertinoApp@checkerboardRasterCacheImages': (m.Scope scope, CupertinoApp target)=>target.checkerboardRasterCacheImages,
'package:flutter/src/cupertino/app.dart@CupertinoApp@checkerboardOffscreenLayers': (m.Scope scope, CupertinoApp target)=>target.checkerboardOffscreenLayers,
'package:flutter/src/cupertino/app.dart@CupertinoApp@showSemanticsDebugger': (m.Scope scope, CupertinoApp target)=>target.showSemanticsDebugger,
'package:flutter/src/cupertino/app.dart@CupertinoApp@debugShowCheckedModeBanner': (m.Scope scope, CupertinoApp target)=>target.debugShowCheckedModeBanner,
'package:flutter/src/cupertino/app.dart@CupertinoApp@shortcuts': (m.Scope scope, CupertinoApp target)=>target.shortcuts,
'package:flutter/src/cupertino/app.dart@CupertinoApp@actions': (m.Scope scope, CupertinoApp target)=>target.actions,
'package:flutter/src/cupertino/app.dart@CupertinoApp@restorationScopeId': (m.Scope scope, CupertinoApp target)=>target.restorationScopeId,
'package:flutter/src/cupertino/app.dart@CupertinoApp@scrollBehavior': (m.Scope scope, CupertinoApp target)=>target.scrollBehavior,
'package:flutter/src/cupertino/app.dart@CupertinoApp@useInheritedMediaQuery': (m.Scope scope, CupertinoApp target)=>target.useInheritedMediaQuery,
'package:flutter/src/cupertino/app.dart@CupertinoApp@': (m.Scope scope)=>({ actions,  builder,  checkerboardOffscreenLayers,  checkerboardRasterCacheImages,  color,  debugShowCheckedModeBanner,  home,  initialRoute,  key,  locale,  localeListResolutionCallback,  localeResolutionCallback,  localizationsDelegates,  navigatorKey,  navigatorObservers,  onGenerateInitialRoutes,  onGenerateRoute,  onGenerateTitle,  onUnknownRoute,  restorationScopeId,  routes,  scrollBehavior,  shortcuts,  showPerformanceOverlay,  showSemanticsDebugger,  supportedLocales,  theme,  title,  useInheritedMediaQuery}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
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

return CupertinoApp(actions:actions, builder:builder == null ? null :builderProxy, checkerboardOffscreenLayers:checkerboardOffscreenLayers ?? false, checkerboardRasterCacheImages:checkerboardRasterCacheImages ?? false, color:color, debugShowCheckedModeBanner:debugShowCheckedModeBanner ?? true, home:home, initialRoute:initialRoute, key:key, locale:locale, localeListResolutionCallback:localeListResolutionCallback == null ? null :localeListResolutionCallbackProxy, localeResolutionCallback:localeResolutionCallback == null ? null :localeResolutionCallbackProxy, localizationsDelegates:localizationsDelegates, navigatorKey:navigatorKey, navigatorObservers:navigatorObservers ?? const <NavigatorObserver>[], onGenerateInitialRoutes:onGenerateInitialRoutes == null ? null :onGenerateInitialRoutesProxy, onGenerateRoute:onGenerateRoute == null ? null :onGenerateRouteProxy, onGenerateTitle:onGenerateTitle == null ? null :onGenerateTitleProxy, onUnknownRoute:onUnknownRoute == null ? null :onUnknownRouteProxy, restorationScopeId:restorationScopeId, routes:routes ?? const <String, WidgetBuilder>{}, scrollBehavior:scrollBehavior, shortcuts:shortcuts, showPerformanceOverlay:showPerformanceOverlay ?? false, showSemanticsDebugger:showSemanticsDebugger ?? false, supportedLocales:supportedLocales ?? const <Locale>[Locale('en', 'US')], theme:theme, title:title ?? '', useInheritedMediaQuery:useInheritedMediaQuery ?? false);
},
'package:flutter/src/cupertino/app.dart@CupertinoApp@router': (m.Scope scope)=>({ actions,  backButtonDispatcher,  builder,  checkerboardOffscreenLayers,  checkerboardRasterCacheImages,  color,  debugShowCheckedModeBanner,  key,  locale,  localeListResolutionCallback,  localeResolutionCallback,  localizationsDelegates,  onGenerateTitle,  restorationScopeId,  routeInformationParser,  routeInformationProvider,  routerConfig,  routerDelegate,  scrollBehavior,  shortcuts,  showPerformanceOverlay,  showSemanticsDebugger,  supportedLocales,  theme,  title,  useInheritedMediaQuery}){
Widget builderProxy( context,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, child], {});
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

return CupertinoApp.router(actions:actions, backButtonDispatcher:backButtonDispatcher, builder:builder == null ? null :builderProxy, checkerboardOffscreenLayers:checkerboardOffscreenLayers ?? false, checkerboardRasterCacheImages:checkerboardRasterCacheImages ?? false, color:color, debugShowCheckedModeBanner:debugShowCheckedModeBanner ?? true, key:key, locale:locale, localeListResolutionCallback:localeListResolutionCallback == null ? null :localeListResolutionCallbackProxy, localeResolutionCallback:localeResolutionCallback == null ? null :localeResolutionCallbackProxy, localizationsDelegates:localizationsDelegates, onGenerateTitle:onGenerateTitle == null ? null :onGenerateTitleProxy, restorationScopeId:restorationScopeId, routeInformationParser:routeInformationParser, routeInformationProvider:routeInformationProvider, routerConfig:routerConfig, routerDelegate:routerDelegate, scrollBehavior:scrollBehavior, shortcuts:shortcuts, showPerformanceOverlay:showPerformanceOverlay ?? false, showSemanticsDebugger:showSemanticsDebugger ?? false, supportedLocales:supportedLocales ?? const <Locale>[Locale('en', 'US')], theme:theme, title:title ?? '', useInheritedMediaQuery:useInheritedMediaQuery ?? false);
},
'package:flutter/src/cupertino/app.dart@CupertinoApp@createState': (m.Scope scope, CupertinoApp target)=>target.createState,
'package:flutter/src/cupertino/app.dart@CupertinoApp@createCupertinoHeroController': (m.Scope scope)=>CupertinoApp.createCupertinoHeroController,
'package:flutter/src/cupertino/app.dart@CupertinoScrollBehavior@#as': (m.Scope scope, target)=>()=>target as CupertinoScrollBehavior,
'package:flutter/src/cupertino/app.dart@CupertinoScrollBehavior@#is': (m.Scope scope, target)=>()=>target is CupertinoScrollBehavior,
'package:flutter/src/cupertino/app.dart@CupertinoScrollBehavior@': (m.Scope scope)=>(){
return CupertinoScrollBehavior();
},
'package:flutter/src/cupertino/app.dart@CupertinoScrollBehavior@buildScrollbar': (m.Scope scope, CupertinoScrollBehavior target)=>target.buildScrollbar,
'package:flutter/src/cupertino/app.dart@CupertinoScrollBehavior@buildOverscrollIndicator': (m.Scope scope, CupertinoScrollBehavior target)=>target.buildOverscrollIndicator,
'package:flutter/src/cupertino/app.dart@CupertinoScrollBehavior@getScrollPhysics': (m.Scope scope, CupertinoScrollBehavior target)=>target.getScrollPhysics,

};
}