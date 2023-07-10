import 'package:flutter/src/gestures/pointer_router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/pointer_router.dart@PointerRouter@#as': (m.Scope scope, target)=>()=>target as PointerRouter,
'package:flutter/src/gestures/pointer_router.dart@PointerRouter@#is': (m.Scope scope, target)=>()=>target is PointerRouter,
'package:flutter/src/gestures/pointer_router.dart@PointerRouter@debugGlobalRouteCount': (m.Scope scope, PointerRouter target)=>target.debugGlobalRouteCount,
'package:flutter/src/gestures/pointer_router.dart@PointerRouter@': (m.Scope scope)=>(){
return PointerRouter();
},
'package:flutter/src/gestures/pointer_router.dart@PointerRouter@addRoute': (m.Scope scope, PointerRouter target)=>( pointer,  route, [Matrix4? transform]){
void routeProxy( event) {
 engine.callFunctionPointer(scope, route!,[event], {});
}

if(transform == null){
target.addRoute(pointer, routeProxy);
return;
}
target.addRoute(pointer, routeProxy, transform!);
return;
},
'package:flutter/src/gestures/pointer_router.dart@PointerRouter@removeRoute': (m.Scope scope, PointerRouter target)=>( pointer,  route){
void routeProxy( event) {
 engine.callFunctionPointer(scope, route!,[event], {});
}

target.removeRoute(pointer, routeProxy);
},
'package:flutter/src/gestures/pointer_router.dart@PointerRouter@addGlobalRoute': (m.Scope scope, PointerRouter target)=>( route, [Matrix4? transform]){
void routeProxy( event) {
 engine.callFunctionPointer(scope, route!,[event], {});
}

if(transform == null){
target.addGlobalRoute(routeProxy);
return;
}
target.addGlobalRoute(routeProxy, transform!);
return;
},
'package:flutter/src/gestures/pointer_router.dart@PointerRouter@removeGlobalRoute': (m.Scope scope, PointerRouter target)=>( route){
void routeProxy( event) {
 engine.callFunctionPointer(scope, route!,[event], {});
}

target.removeGlobalRoute(routeProxy);
},
'package:flutter/src/gestures/pointer_router.dart@PointerRouter@route': (m.Scope scope, PointerRouter target)=>target.route,

};
}