import 'package:flutter/src/widgets/binding.dart';
import 'dart:async';
import 'dart:developer';
import 'dart:ui' show AccessibilityFeatures,AppExitResponse,AppLifecycleState,FrameTiming,Locale,PlatformDispatcher,TimingsCallback;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/app.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/platform_menu_bar.dart';
import 'package:flutter/src/widgets/router.dart';
import 'package:flutter/src/widgets/service_extensions.dart';
import 'package:flutter/src/widgets/view.dart';
import 'package:flutter/src/widgets/widget_inspector.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@#as': (m.Scope scope, target)=>()=>target as WidgetsBindingObserver,
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@#is': (m.Scope scope, target)=>()=>target is WidgetsBindingObserver,
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@didPopRoute': (m.Scope scope, WidgetsBindingObserver target)=>target.didPopRoute,
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@didPushRoute': (m.Scope scope, WidgetsBindingObserver target)=>target.didPushRoute,
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@didPushRouteInformation': (m.Scope scope, WidgetsBindingObserver target)=>target.didPushRouteInformation,
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@didChangeMetrics': (m.Scope scope, WidgetsBindingObserver target)=>target.didChangeMetrics,
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@didChangeTextScaleFactor': (m.Scope scope, WidgetsBindingObserver target)=>target.didChangeTextScaleFactor,
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@didChangePlatformBrightness': (m.Scope scope, WidgetsBindingObserver target)=>target.didChangePlatformBrightness,
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@didChangeLocales': (m.Scope scope, WidgetsBindingObserver target)=>target.didChangeLocales,
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@didChangeAppLifecycleState': (m.Scope scope, WidgetsBindingObserver target)=>target.didChangeAppLifecycleState,
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@didRequestAppExit': (m.Scope scope, WidgetsBindingObserver target)=>target.didRequestAppExit,
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@didHaveMemoryPressure': (m.Scope scope, WidgetsBindingObserver target)=>target.didHaveMemoryPressure,
'package:flutter/src/widgets/binding.dart@WidgetsBindingObserver@didChangeAccessibilityFeatures': (m.Scope scope, WidgetsBindingObserver target)=>target.didChangeAccessibilityFeatures,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetAdapter@#as': (m.Scope scope, target)=>()=>target as RenderObjectToWidgetAdapter,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetAdapter@#is': (m.Scope scope, target)=>()=>target is RenderObjectToWidgetAdapter,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetAdapter@child': (m.Scope scope, RenderObjectToWidgetAdapter target)=>target.child,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetAdapter@container': (m.Scope scope, RenderObjectToWidgetAdapter target)=>target.container,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetAdapter@debugShortDescription': (m.Scope scope, RenderObjectToWidgetAdapter target)=>target.debugShortDescription,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetAdapter@': (m.Scope scope)=><T>({ child,  container,  debugShortDescription}){
return RenderObjectToWidgetAdapter(child:child, container:container, debugShortDescription:debugShortDescription);
},
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetAdapter@createElement': (m.Scope scope, RenderObjectToWidgetAdapter target)=>target.createElement,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetAdapter@createRenderObject': (m.Scope scope, RenderObjectToWidgetAdapter target)=>target.createRenderObject,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetAdapter@updateRenderObject': (m.Scope scope, RenderObjectToWidgetAdapter target)=>target.updateRenderObject,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetAdapter@attachToRenderTree': (m.Scope scope, RenderObjectToWidgetAdapter target)=>target.attachToRenderTree,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetAdapter@toStringShort': (m.Scope scope, RenderObjectToWidgetAdapter target)=>target.toStringShort,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetElement@#as': (m.Scope scope, target)=>()=>target as RenderObjectToWidgetElement,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetElement@#is': (m.Scope scope, target)=>()=>target is RenderObjectToWidgetElement,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetElement@renderObject': (m.Scope scope, RenderObjectToWidgetElement target)=>target.renderObject,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetElement@': (m.Scope scope)=><T>( widget){
return RenderObjectToWidgetElement(widget);
},
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetElement@visitChildren': (m.Scope scope, RenderObjectToWidgetElement target)=>( visitor){
void visitorProxy( element) {
 engine.callFunctionPointer(scope, visitor!,[element], {});
}

target.visitChildren(visitorProxy);
},
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetElement@forgetChild': (m.Scope scope, RenderObjectToWidgetElement target)=>target.forgetChild,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetElement@mount': (m.Scope scope, RenderObjectToWidgetElement target)=>target.mount,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetElement@update': (m.Scope scope, RenderObjectToWidgetElement target)=>target.update,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetElement@performRebuild': (m.Scope scope, RenderObjectToWidgetElement target)=>target.performRebuild,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetElement@insertRenderObjectChild': (m.Scope scope, RenderObjectToWidgetElement target)=>target.insertRenderObjectChild,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetElement@moveRenderObjectChild': (m.Scope scope, RenderObjectToWidgetElement target)=>target.moveRenderObjectChild,
'package:flutter/src/widgets/binding.dart@RenderObjectToWidgetElement@removeRenderObjectChild': (m.Scope scope, RenderObjectToWidgetElement target)=>target.removeRenderObjectChild,
'package:flutter/src/widgets/binding.dart@WidgetsFlutterBinding@#as': (m.Scope scope, target)=>()=>target as WidgetsFlutterBinding,
'package:flutter/src/widgets/binding.dart@WidgetsFlutterBinding@#is': (m.Scope scope, target)=>()=>target is WidgetsFlutterBinding,
'package:flutter/src/widgets/binding.dart@WidgetsFlutterBinding@': (m.Scope scope)=>(){
return WidgetsFlutterBinding();
},
'package:flutter/src/widgets/binding.dart@WidgetsFlutterBinding@ensureInitialized': (m.Scope scope)=>WidgetsFlutterBinding.ensureInitialized,
'package:flutter/src/widgets/binding.dart@@runApp': (m.Scope scope)=>runApp,
'package:flutter/src/widgets/binding.dart@@debugDumpApp': (m.Scope scope)=>debugDumpApp,

};
}