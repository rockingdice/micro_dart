import 'package:flutter/src/cupertino/tab_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/cupertino/app.dart' show CupertinoApp;
import 'package:flutter/src/cupertino/route.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/cupertino/tab_view.dart@CupertinoTabView@#as': (m.Scope scope, target)=>()=>target as CupertinoTabView,
'package:flutter/src/cupertino/tab_view.dart@CupertinoTabView@#is': (m.Scope scope, target)=>()=>target is CupertinoTabView,
'package:flutter/src/cupertino/tab_view.dart@CupertinoTabView@builder': (m.Scope scope, CupertinoTabView target)=>target.builder,
'package:flutter/src/cupertino/tab_view.dart@CupertinoTabView@navigatorKey': (m.Scope scope, CupertinoTabView target)=>target.navigatorKey,
'package:flutter/src/cupertino/tab_view.dart@CupertinoTabView@defaultTitle': (m.Scope scope, CupertinoTabView target)=>target.defaultTitle,
'package:flutter/src/cupertino/tab_view.dart@CupertinoTabView@routes': (m.Scope scope, CupertinoTabView target)=>target.routes,
'package:flutter/src/cupertino/tab_view.dart@CupertinoTabView@onGenerateRoute': (m.Scope scope, CupertinoTabView target)=>target.onGenerateRoute,
'package:flutter/src/cupertino/tab_view.dart@CupertinoTabView@onUnknownRoute': (m.Scope scope, CupertinoTabView target)=>target.onUnknownRoute,
'package:flutter/src/cupertino/tab_view.dart@CupertinoTabView@navigatorObservers': (m.Scope scope, CupertinoTabView target)=>target.navigatorObservers,
'package:flutter/src/cupertino/tab_view.dart@CupertinoTabView@restorationScopeId': (m.Scope scope, CupertinoTabView target)=>target.restorationScopeId,
'package:flutter/src/cupertino/tab_view.dart@CupertinoTabView@': (m.Scope scope)=>({ builder,  defaultTitle,  key,  navigatorKey,  navigatorObservers,  onGenerateRoute,  onUnknownRoute,  restorationScopeId,  routes}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

Route<dynamic> onGenerateRouteProxy( settings) {
return  engine.callFunctionPointer(scope, onGenerateRoute!,[settings], {});
}

Route<dynamic> onUnknownRouteProxy( settings) {
return  engine.callFunctionPointer(scope, onUnknownRoute!,[settings], {});
}

return CupertinoTabView(builder:builder == null ? null :builderProxy, defaultTitle:defaultTitle, key:key, navigatorKey:navigatorKey, navigatorObservers:navigatorObservers ?? const <NavigatorObserver>[], onGenerateRoute:onGenerateRoute == null ? null :onGenerateRouteProxy, onUnknownRoute:onUnknownRoute == null ? null :onUnknownRouteProxy, restorationScopeId:restorationScopeId, routes:routes);
},
'package:flutter/src/cupertino/tab_view.dart@CupertinoTabView@createState': (m.Scope scope, CupertinoTabView target)=>target.createState,

};
}