import 'package:flutter/src/widgets/router.dart';
import 'dart:async';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:flutter/src/widgets/restoration.dart';
import 'package:flutter/src/widgets/restoration_properties.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/router.dart@RouteInformation@#as': (m.Scope scope, target)=>()=>target as RouteInformation,
'package:flutter/src/widgets/router.dart@RouteInformation@#is': (m.Scope scope, target)=>()=>target is RouteInformation,
'package:flutter/src/widgets/router.dart@RouteInformation@location': (m.Scope scope, RouteInformation target)=>target.location,
'package:flutter/src/widgets/router.dart@RouteInformation@state': (m.Scope scope, RouteInformation target)=>target.state,
'package:flutter/src/widgets/router.dart@RouteInformation@': (m.Scope scope)=>({ location,  state}){
return RouteInformation(location:location, state:state);
},
'package:flutter/src/widgets/router.dart@RouterConfig@#as': (m.Scope scope, target)=>()=>target as RouterConfig,
'package:flutter/src/widgets/router.dart@RouterConfig@#is': (m.Scope scope, target)=>()=>target is RouterConfig,
'package:flutter/src/widgets/router.dart@RouterConfig@routeInformationProvider': (m.Scope scope, RouterConfig target)=>target.routeInformationProvider,
'package:flutter/src/widgets/router.dart@RouterConfig@routeInformationParser': (m.Scope scope, RouterConfig target)=>target.routeInformationParser,
'package:flutter/src/widgets/router.dart@RouterConfig@routerDelegate': (m.Scope scope, RouterConfig target)=>target.routerDelegate,
'package:flutter/src/widgets/router.dart@RouterConfig@backButtonDispatcher': (m.Scope scope, RouterConfig target)=>target.backButtonDispatcher,
'package:flutter/src/widgets/router.dart@RouterConfig@': (m.Scope scope)=>RouterConfig,
'package:flutter/src/widgets/router.dart@Router@#as': (m.Scope scope, target)=>()=>target as Router,
'package:flutter/src/widgets/router.dart@Router@#is': (m.Scope scope, target)=>()=>target is Router,
'package:flutter/src/widgets/router.dart@Router@routeInformationProvider': (m.Scope scope, Router target)=>target.routeInformationProvider,
'package:flutter/src/widgets/router.dart@Router@routeInformationParser': (m.Scope scope, Router target)=>target.routeInformationParser,
'package:flutter/src/widgets/router.dart@Router@routerDelegate': (m.Scope scope, Router target)=>target.routerDelegate,
'package:flutter/src/widgets/router.dart@Router@backButtonDispatcher': (m.Scope scope, Router target)=>target.backButtonDispatcher,
'package:flutter/src/widgets/router.dart@Router@restorationScopeId': (m.Scope scope, Router target)=>target.restorationScopeId,
'package:flutter/src/widgets/router.dart@Router@': (m.Scope scope)=>Router,
'package:flutter/src/widgets/router.dart@Router@withConfig': (m.Scope scope)=>Router.withConfig,
'package:flutter/src/widgets/router.dart@Router@of': (m.Scope scope)=>Router.of,
'package:flutter/src/widgets/router.dart@Router@maybeOf': (m.Scope scope)=>Router.maybeOf,
'package:flutter/src/widgets/router.dart@Router@navigate': (m.Scope scope)=>( context,  callback){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

Router.navigate(context, callbackProxy);
},
'package:flutter/src/widgets/router.dart@Router@neglect': (m.Scope scope)=>( context,  callback){
void callbackProxy() {
 engine.callFunctionPointer(scope, callback!,[], {});
}

Router.neglect(context, callbackProxy);
},
'package:flutter/src/widgets/router.dart@Router@createState': (m.Scope scope, Router target)=>target.createState,
'package:flutter/src/widgets/router.dart@BackButtonDispatcher@#as': (m.Scope scope, target)=>()=>target as BackButtonDispatcher,
'package:flutter/src/widgets/router.dart@BackButtonDispatcher@#is': (m.Scope scope, target)=>()=>target is BackButtonDispatcher,
'package:flutter/src/widgets/router.dart@BackButtonDispatcher@hasCallbacks': (m.Scope scope, BackButtonDispatcher target)=>target.hasCallbacks,
'package:flutter/src/widgets/router.dart@BackButtonDispatcher@invokeCallback': (m.Scope scope, BackButtonDispatcher target)=>target.invokeCallback,
'package:flutter/src/widgets/router.dart@BackButtonDispatcher@createChildBackButtonDispatcher': (m.Scope scope, BackButtonDispatcher target)=>target.createChildBackButtonDispatcher,
'package:flutter/src/widgets/router.dart@BackButtonDispatcher@takePriority': (m.Scope scope, BackButtonDispatcher target)=>target.takePriority,
'package:flutter/src/widgets/router.dart@BackButtonDispatcher@deferTo': (m.Scope scope, BackButtonDispatcher target)=>target.deferTo,
'package:flutter/src/widgets/router.dart@BackButtonDispatcher@forget': (m.Scope scope, BackButtonDispatcher target)=>target.forget,
'package:flutter/src/widgets/router.dart@RootBackButtonDispatcher@#as': (m.Scope scope, target)=>()=>target as RootBackButtonDispatcher,
'package:flutter/src/widgets/router.dart@RootBackButtonDispatcher@#is': (m.Scope scope, target)=>()=>target is RootBackButtonDispatcher,
'package:flutter/src/widgets/router.dart@RootBackButtonDispatcher@': (m.Scope scope)=>(){
return RootBackButtonDispatcher();
},
'package:flutter/src/widgets/router.dart@RootBackButtonDispatcher@addCallback': (m.Scope scope, RootBackButtonDispatcher target)=>( callback){
Future<bool> callbackProxy() async{
return await engine.callFunctionPointerAsync(scope, callback!,[], {});
}

target.addCallback(callbackProxy);
},
'package:flutter/src/widgets/router.dart@RootBackButtonDispatcher@removeCallback': (m.Scope scope, RootBackButtonDispatcher target)=>( callback){
Future<bool> callbackProxy() async{
return await engine.callFunctionPointerAsync(scope, callback!,[], {});
}

target.removeCallback(callbackProxy);
},
'package:flutter/src/widgets/router.dart@RootBackButtonDispatcher@didPopRoute': (m.Scope scope, RootBackButtonDispatcher target)=>target.didPopRoute,
'package:flutter/src/widgets/router.dart@ChildBackButtonDispatcher@#as': (m.Scope scope, target)=>()=>target as ChildBackButtonDispatcher,
'package:flutter/src/widgets/router.dart@ChildBackButtonDispatcher@#is': (m.Scope scope, target)=>()=>target is ChildBackButtonDispatcher,
'package:flutter/src/widgets/router.dart@ChildBackButtonDispatcher@parent': (m.Scope scope, ChildBackButtonDispatcher target)=>target.parent,
'package:flutter/src/widgets/router.dart@ChildBackButtonDispatcher@': (m.Scope scope)=>ChildBackButtonDispatcher,
'package:flutter/src/widgets/router.dart@ChildBackButtonDispatcher@notifiedByParent': (m.Scope scope, ChildBackButtonDispatcher target)=>target.notifiedByParent,
'package:flutter/src/widgets/router.dart@ChildBackButtonDispatcher@takePriority': (m.Scope scope, ChildBackButtonDispatcher target)=>target.takePriority,
'package:flutter/src/widgets/router.dart@ChildBackButtonDispatcher@deferTo': (m.Scope scope, ChildBackButtonDispatcher target)=>target.deferTo,
'package:flutter/src/widgets/router.dart@ChildBackButtonDispatcher@removeCallback': (m.Scope scope, ChildBackButtonDispatcher target)=>( callback){
Future<bool> callbackProxy() async{
return await engine.callFunctionPointerAsync(scope, callback!,[], {});
}

target.removeCallback(callbackProxy);
},
'package:flutter/src/widgets/router.dart@BackButtonListener@#as': (m.Scope scope, target)=>()=>target as BackButtonListener,
'package:flutter/src/widgets/router.dart@BackButtonListener@#is': (m.Scope scope, target)=>()=>target is BackButtonListener,
'package:flutter/src/widgets/router.dart@BackButtonListener@child': (m.Scope scope, BackButtonListener target)=>target.child,
'package:flutter/src/widgets/router.dart@BackButtonListener@onBackButtonPressed': (m.Scope scope, BackButtonListener target)=>target.onBackButtonPressed,
'package:flutter/src/widgets/router.dart@BackButtonListener@': (m.Scope scope)=>({ child,  key,  onBackButtonPressed}){
Future<bool> onBackButtonPressedProxy() async{
return await engine.callFunctionPointerAsync(scope, onBackButtonPressed!,[], {});
}

return BackButtonListener(child:child, key:key, onBackButtonPressed:onBackButtonPressedProxy);
},
'package:flutter/src/widgets/router.dart@BackButtonListener@createState': (m.Scope scope, BackButtonListener target)=>target.createState,
'package:flutter/src/widgets/router.dart@RouteInformationParser@#as': (m.Scope scope, target)=>()=>target as RouteInformationParser,
'package:flutter/src/widgets/router.dart@RouteInformationParser@#is': (m.Scope scope, target)=>()=>target is RouteInformationParser,
'package:flutter/src/widgets/router.dart@RouteInformationParser@parseRouteInformation': (m.Scope scope, RouteInformationParser target)=>target.parseRouteInformation,
'package:flutter/src/widgets/router.dart@RouteInformationParser@parseRouteInformationWithDependencies': (m.Scope scope, RouteInformationParser target)=>target.parseRouteInformationWithDependencies,
'package:flutter/src/widgets/router.dart@RouteInformationParser@restoreRouteInformation': (m.Scope scope, RouteInformationParser target)=>target.restoreRouteInformation,
'package:flutter/src/widgets/router.dart@RouterDelegate@#as': (m.Scope scope, target)=>()=>target as RouterDelegate,
'package:flutter/src/widgets/router.dart@RouterDelegate@#is': (m.Scope scope, target)=>()=>target is RouterDelegate,
'package:flutter/src/widgets/router.dart@RouterDelegate@currentConfiguration': (m.Scope scope, RouterDelegate target)=>target.currentConfiguration,
'package:flutter/src/widgets/router.dart@RouterDelegate@setInitialRoutePath': (m.Scope scope, RouterDelegate target)=>target.setInitialRoutePath,
'package:flutter/src/widgets/router.dart@RouterDelegate@setRestoredRoutePath': (m.Scope scope, RouterDelegate target)=>target.setRestoredRoutePath,
'package:flutter/src/widgets/router.dart@RouterDelegate@setNewRoutePath': (m.Scope scope, RouterDelegate target)=>target.setNewRoutePath,
'package:flutter/src/widgets/router.dart@RouterDelegate@popRoute': (m.Scope scope, RouterDelegate target)=>target.popRoute,
'package:flutter/src/widgets/router.dart@RouterDelegate@build': (m.Scope scope, RouterDelegate target)=>target.build,
'package:flutter/src/widgets/router.dart@RouteInformationProvider@#as': (m.Scope scope, target)=>()=>target as RouteInformationProvider,
'package:flutter/src/widgets/router.dart@RouteInformationProvider@#is': (m.Scope scope, target)=>()=>target is RouteInformationProvider,
'package:flutter/src/widgets/router.dart@RouteInformationProvider@routerReportsNewRouteInformation': (m.Scope scope, RouteInformationProvider target)=>target.routerReportsNewRouteInformation,
'package:flutter/src/widgets/router.dart@PlatformRouteInformationProvider@#as': (m.Scope scope, target)=>()=>target as PlatformRouteInformationProvider,
'package:flutter/src/widgets/router.dart@PlatformRouteInformationProvider@#is': (m.Scope scope, target)=>()=>target is PlatformRouteInformationProvider,
'package:flutter/src/widgets/router.dart@PlatformRouteInformationProvider@value': (m.Scope scope, PlatformRouteInformationProvider target)=>target.value,
'package:flutter/src/widgets/router.dart@PlatformRouteInformationProvider@': (m.Scope scope)=>PlatformRouteInformationProvider,
'package:flutter/src/widgets/router.dart@PlatformRouteInformationProvider@routerReportsNewRouteInformation': (m.Scope scope, PlatformRouteInformationProvider target)=>target.routerReportsNewRouteInformation,
'package:flutter/src/widgets/router.dart@PlatformRouteInformationProvider@addListener': (m.Scope scope, PlatformRouteInformationProvider target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/widgets/router.dart@PlatformRouteInformationProvider@removeListener': (m.Scope scope, PlatformRouteInformationProvider target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/widgets/router.dart@PlatformRouteInformationProvider@dispose': (m.Scope scope, PlatformRouteInformationProvider target)=>target.dispose,
'package:flutter/src/widgets/router.dart@PlatformRouteInformationProvider@didPushRouteInformation': (m.Scope scope, PlatformRouteInformationProvider target)=>target.didPushRouteInformation,
'package:flutter/src/widgets/router.dart@PlatformRouteInformationProvider@didPushRoute': (m.Scope scope, PlatformRouteInformationProvider target)=>target.didPushRoute,

};
}