import 'package:flutter/src/widgets/overlay.dart';
import 'dart:collection';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/lookup_boundary.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/overlay.dart@OverlayEntry@#as': (m.Scope scope, target)=>()=>target as OverlayEntry,
'package:flutter/src/widgets/overlay.dart@OverlayEntry@#is': (m.Scope scope, target)=>()=>target is OverlayEntry,
'package:flutter/src/widgets/overlay.dart@OverlayEntry@builder': (m.Scope scope, OverlayEntry target)=>target.builder,
'package:flutter/src/widgets/overlay.dart@OverlayEntry@opaque': (m.Scope scope, OverlayEntry target)=>target.opaque,
'package:flutter/src/widgets/overlay.dart@OverlayEntry@opaque:set': (m.Scope scope, OverlayEntry target)=>(other)=>target.opaque=other,
'package:flutter/src/widgets/overlay.dart@OverlayEntry@maintainState': (m.Scope scope, OverlayEntry target)=>target.maintainState,
'package:flutter/src/widgets/overlay.dart@OverlayEntry@maintainState:set': (m.Scope scope, OverlayEntry target)=>(other)=>target.maintainState=other,
'package:flutter/src/widgets/overlay.dart@OverlayEntry@mounted': (m.Scope scope, OverlayEntry target)=>target.mounted,
'package:flutter/src/widgets/overlay.dart@OverlayEntry@': (m.Scope scope)=>({ builder,  maintainState,  opaque}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

return OverlayEntry(builder:builderProxy, maintainState:maintainState ?? false, opaque:opaque ?? false);
},
'package:flutter/src/widgets/overlay.dart@OverlayEntry@addListener': (m.Scope scope, OverlayEntry target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/widgets/overlay.dart@OverlayEntry@removeListener': (m.Scope scope, OverlayEntry target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/widgets/overlay.dart@OverlayEntry@remove': (m.Scope scope, OverlayEntry target)=>target.remove,
'package:flutter/src/widgets/overlay.dart@OverlayEntry@markNeedsBuild': (m.Scope scope, OverlayEntry target)=>target.markNeedsBuild,
'package:flutter/src/widgets/overlay.dart@OverlayEntry@dispose': (m.Scope scope, OverlayEntry target)=>target.dispose,
'package:flutter/src/widgets/overlay.dart@OverlayEntry@toString': (m.Scope scope, OverlayEntry target)=>target.toString,
'package:flutter/src/widgets/overlay.dart@Overlay@#as': (m.Scope scope, target)=>()=>target as Overlay,
'package:flutter/src/widgets/overlay.dart@Overlay@#is': (m.Scope scope, target)=>()=>target is Overlay,
'package:flutter/src/widgets/overlay.dart@Overlay@initialEntries': (m.Scope scope, Overlay target)=>target.initialEntries,
'package:flutter/src/widgets/overlay.dart@Overlay@clipBehavior': (m.Scope scope, Overlay target)=>target.clipBehavior,
'package:flutter/src/widgets/overlay.dart@Overlay@': (m.Scope scope)=>({ clipBehavior,  initialEntries,  key}){
return Overlay(clipBehavior:clipBehavior ?? Clip.hardEdge, initialEntries:initialEntries ?? const <OverlayEntry>[], key:key);
},
'package:flutter/src/widgets/overlay.dart@Overlay@of': (m.Scope scope)=>Overlay.of,
'package:flutter/src/widgets/overlay.dart@Overlay@maybeOf': (m.Scope scope)=>Overlay.maybeOf,
'package:flutter/src/widgets/overlay.dart@Overlay@createState': (m.Scope scope, Overlay target)=>target.createState,
'package:flutter/src/widgets/overlay.dart@OverlayState@#as': (m.Scope scope, target)=>()=>target as OverlayState,
'package:flutter/src/widgets/overlay.dart@OverlayState@#is': (m.Scope scope, target)=>()=>target is OverlayState,
'package:flutter/src/widgets/overlay.dart@OverlayState@': (m.Scope scope)=>(){
return OverlayState();
},
'package:flutter/src/widgets/overlay.dart@OverlayState@initState': (m.Scope scope, OverlayState target)=>target.initState,
'package:flutter/src/widgets/overlay.dart@OverlayState@insert': (m.Scope scope, OverlayState target)=>target.insert,
'package:flutter/src/widgets/overlay.dart@OverlayState@insertAll': (m.Scope scope, OverlayState target)=>target.insertAll,
'package:flutter/src/widgets/overlay.dart@OverlayState@rearrange': (m.Scope scope, OverlayState target)=>target.rearrange,
'package:flutter/src/widgets/overlay.dart@OverlayState@debugIsVisible': (m.Scope scope, OverlayState target)=>target.debugIsVisible,
'package:flutter/src/widgets/overlay.dart@OverlayState@build': (m.Scope scope, OverlayState target)=>target.build,
'package:flutter/src/widgets/overlay.dart@OverlayState@debugFillProperties': (m.Scope scope, OverlayState target)=>target.debugFillProperties,
'package:flutter/src/widgets/overlay.dart@OverlayPortalController@#as': (m.Scope scope, target)=>()=>target as OverlayPortalController,
'package:flutter/src/widgets/overlay.dart@OverlayPortalController@#is': (m.Scope scope, target)=>()=>target is OverlayPortalController,
'package:flutter/src/widgets/overlay.dart@OverlayPortalController@isShowing': (m.Scope scope, OverlayPortalController target)=>target.isShowing,
'package:flutter/src/widgets/overlay.dart@OverlayPortalController@': (m.Scope scope)=>({ debugLabel}){
return OverlayPortalController(debugLabel:debugLabel);
},
'package:flutter/src/widgets/overlay.dart@OverlayPortalController@show': (m.Scope scope, OverlayPortalController target)=>target.show,
'package:flutter/src/widgets/overlay.dart@OverlayPortalController@hide': (m.Scope scope, OverlayPortalController target)=>target.hide,
'package:flutter/src/widgets/overlay.dart@OverlayPortalController@toggle': (m.Scope scope, OverlayPortalController target)=>target.toggle,
'package:flutter/src/widgets/overlay.dart@OverlayPortalController@toString': (m.Scope scope, OverlayPortalController target)=>target.toString,
'package:flutter/src/widgets/overlay.dart@OverlayPortal@#as': (m.Scope scope, target)=>()=>target as OverlayPortal,
'package:flutter/src/widgets/overlay.dart@OverlayPortal@#is': (m.Scope scope, target)=>()=>target is OverlayPortal,
'package:flutter/src/widgets/overlay.dart@OverlayPortal@controller': (m.Scope scope, OverlayPortal target)=>target.controller,
'package:flutter/src/widgets/overlay.dart@OverlayPortal@overlayChildBuilder': (m.Scope scope, OverlayPortal target)=>target.overlayChildBuilder,
'package:flutter/src/widgets/overlay.dart@OverlayPortal@child': (m.Scope scope, OverlayPortal target)=>target.child,
'package:flutter/src/widgets/overlay.dart@OverlayPortal@': (m.Scope scope)=>({ child,  controller,  key,  overlayChildBuilder}){
Widget overlayChildBuilderProxy( context) {
return  engine.callFunctionPointer(scope, overlayChildBuilder!,[context], {});
}

return OverlayPortal(child:child, controller:controller, key:key, overlayChildBuilder:overlayChildBuilderProxy);
},
'package:flutter/src/widgets/overlay.dart@OverlayPortal@targetsRootOverlay': (m.Scope scope)=>({ child,  controller,  key,  overlayChildBuilder}){
Widget overlayChildBuilderProxy( context) {
return  engine.callFunctionPointer(scope, overlayChildBuilder!,[context], {});
}

return OverlayPortal.targetsRootOverlay(child:child, controller:controller, key:key, overlayChildBuilder:overlayChildBuilderProxy);
},
'package:flutter/src/widgets/overlay.dart@OverlayPortal@createState': (m.Scope scope, OverlayPortal target)=>target.createState,

};
}