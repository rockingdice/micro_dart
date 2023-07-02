import 'package:flutter/src/widgets/platform_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/platform_view.dart@AndroidView@#as': (m.Scope scope, target)=>()=>target as AndroidView,
'package:flutter/src/widgets/platform_view.dart@AndroidView@#is': (m.Scope scope, target)=>()=>target is AndroidView,
'package:flutter/src/widgets/platform_view.dart@AndroidView@viewType': (m.Scope scope, AndroidView target)=>target.viewType,
'package:flutter/src/widgets/platform_view.dart@AndroidView@onPlatformViewCreated': (m.Scope scope, AndroidView target)=>target.onPlatformViewCreated,
'package:flutter/src/widgets/platform_view.dart@AndroidView@hitTestBehavior': (m.Scope scope, AndroidView target)=>target.hitTestBehavior,
'package:flutter/src/widgets/platform_view.dart@AndroidView@layoutDirection': (m.Scope scope, AndroidView target)=>target.layoutDirection,
'package:flutter/src/widgets/platform_view.dart@AndroidView@gestureRecognizers': (m.Scope scope, AndroidView target)=>target.gestureRecognizers,
'package:flutter/src/widgets/platform_view.dart@AndroidView@creationParams': (m.Scope scope, AndroidView target)=>target.creationParams,
'package:flutter/src/widgets/platform_view.dart@AndroidView@creationParamsCodec': (m.Scope scope, AndroidView target)=>target.creationParamsCodec,
'package:flutter/src/widgets/platform_view.dart@AndroidView@clipBehavior': (m.Scope scope, AndroidView target)=>target.clipBehavior,
'package:flutter/src/widgets/platform_view.dart@AndroidView@': (m.Scope scope)=>({ clipBehavior,  creationParams,  creationParamsCodec,  gestureRecognizers,  hitTestBehavior,  key,  layoutDirection,  onPlatformViewCreated,  viewType}){
void onPlatformViewCreatedProxy( id) {
 engine.callFunctionPointer(scope, onPlatformViewCreated!,[id], {});
}

return AndroidView(clipBehavior:clipBehavior ?? Clip.hardEdge, creationParams:creationParams, creationParamsCodec:creationParamsCodec, gestureRecognizers:gestureRecognizers, hitTestBehavior:hitTestBehavior ?? PlatformViewHitTestBehavior.opaque, key:key, layoutDirection:layoutDirection, onPlatformViewCreated:onPlatformViewCreated == null ? null :onPlatformViewCreatedProxy, viewType:viewType);
},
'package:flutter/src/widgets/platform_view.dart@AndroidView@createState': (m.Scope scope, AndroidView target)=>target.createState,
'package:flutter/src/widgets/platform_view.dart@UiKitView@#as': (m.Scope scope, target)=>()=>target as UiKitView,
'package:flutter/src/widgets/platform_view.dart@UiKitView@#is': (m.Scope scope, target)=>()=>target is UiKitView,
'package:flutter/src/widgets/platform_view.dart@UiKitView@viewType': (m.Scope scope, UiKitView target)=>target.viewType,
'package:flutter/src/widgets/platform_view.dart@UiKitView@onPlatformViewCreated': (m.Scope scope, UiKitView target)=>target.onPlatformViewCreated,
'package:flutter/src/widgets/platform_view.dart@UiKitView@hitTestBehavior': (m.Scope scope, UiKitView target)=>target.hitTestBehavior,
'package:flutter/src/widgets/platform_view.dart@UiKitView@layoutDirection': (m.Scope scope, UiKitView target)=>target.layoutDirection,
'package:flutter/src/widgets/platform_view.dart@UiKitView@creationParams': (m.Scope scope, UiKitView target)=>target.creationParams,
'package:flutter/src/widgets/platform_view.dart@UiKitView@creationParamsCodec': (m.Scope scope, UiKitView target)=>target.creationParamsCodec,
'package:flutter/src/widgets/platform_view.dart@UiKitView@gestureRecognizers': (m.Scope scope, UiKitView target)=>target.gestureRecognizers,
'package:flutter/src/widgets/platform_view.dart@UiKitView@': (m.Scope scope)=>({ creationParams,  creationParamsCodec,  gestureRecognizers,  hitTestBehavior,  key,  layoutDirection,  onPlatformViewCreated,  viewType}){
void onPlatformViewCreatedProxy( id) {
 engine.callFunctionPointer(scope, onPlatformViewCreated!,[id], {});
}

return UiKitView(creationParams:creationParams, creationParamsCodec:creationParamsCodec, gestureRecognizers:gestureRecognizers, hitTestBehavior:hitTestBehavior ?? PlatformViewHitTestBehavior.opaque, key:key, layoutDirection:layoutDirection, onPlatformViewCreated:onPlatformViewCreated == null ? null :onPlatformViewCreatedProxy, viewType:viewType);
},
'package:flutter/src/widgets/platform_view.dart@UiKitView@createState': (m.Scope scope, UiKitView target)=>target.createState,
'package:flutter/src/widgets/platform_view.dart@HtmlElementView@#as': (m.Scope scope, target)=>()=>target as HtmlElementView,
'package:flutter/src/widgets/platform_view.dart@HtmlElementView@#is': (m.Scope scope, target)=>()=>target is HtmlElementView,
'package:flutter/src/widgets/platform_view.dart@HtmlElementView@viewType': (m.Scope scope, HtmlElementView target)=>target.viewType,
'package:flutter/src/widgets/platform_view.dart@HtmlElementView@onPlatformViewCreated': (m.Scope scope, HtmlElementView target)=>target.onPlatformViewCreated,
'package:flutter/src/widgets/platform_view.dart@HtmlElementView@': (m.Scope scope)=>({ key,  onPlatformViewCreated,  viewType}){
void onPlatformViewCreatedProxy( id) {
 engine.callFunctionPointer(scope, onPlatformViewCreated!,[id], {});
}

return HtmlElementView(key:key, onPlatformViewCreated:onPlatformViewCreated == null ? null :onPlatformViewCreatedProxy, viewType:viewType);
},
'package:flutter/src/widgets/platform_view.dart@HtmlElementView@build': (m.Scope scope, HtmlElementView target)=>target.build,
'package:flutter/src/widgets/platform_view.dart@PlatformViewCreationParams@#as': (m.Scope scope, target)=>()=>target as PlatformViewCreationParams,
'package:flutter/src/widgets/platform_view.dart@PlatformViewCreationParams@#is': (m.Scope scope, target)=>()=>target is PlatformViewCreationParams,
'package:flutter/src/widgets/platform_view.dart@PlatformViewCreationParams@id': (m.Scope scope, PlatformViewCreationParams target)=>target.id,
'package:flutter/src/widgets/platform_view.dart@PlatformViewCreationParams@viewType': (m.Scope scope, PlatformViewCreationParams target)=>target.viewType,
'package:flutter/src/widgets/platform_view.dart@PlatformViewCreationParams@onPlatformViewCreated': (m.Scope scope, PlatformViewCreationParams target)=>target.onPlatformViewCreated,
'package:flutter/src/widgets/platform_view.dart@PlatformViewCreationParams@onFocusChanged': (m.Scope scope, PlatformViewCreationParams target)=>target.onFocusChanged,
'package:flutter/src/widgets/platform_view.dart@PlatformViewLink@#as': (m.Scope scope, target)=>()=>target as PlatformViewLink,
'package:flutter/src/widgets/platform_view.dart@PlatformViewLink@#is': (m.Scope scope, target)=>()=>target is PlatformViewLink,
'package:flutter/src/widgets/platform_view.dart@PlatformViewLink@viewType': (m.Scope scope, PlatformViewLink target)=>target.viewType,
'package:flutter/src/widgets/platform_view.dart@PlatformViewLink@': (m.Scope scope)=>({ key,  onCreatePlatformView,  surfaceFactory,  viewType}){
PlatformViewController onCreatePlatformViewProxy( params) {
return  engine.callFunctionPointer(scope, onCreatePlatformView!,[params], {});
}

Widget surfaceFactoryProxy( context,  controller) {
return  engine.callFunctionPointer(scope, surfaceFactory!,[context, controller], {});
}

return PlatformViewLink(key:key, onCreatePlatformView:onCreatePlatformViewProxy, surfaceFactory:surfaceFactoryProxy, viewType:viewType);
},
'package:flutter/src/widgets/platform_view.dart@PlatformViewLink@createState': (m.Scope scope, PlatformViewLink target)=>target.createState,
'package:flutter/src/widgets/platform_view.dart@PlatformViewSurface@#as': (m.Scope scope, target)=>()=>target as PlatformViewSurface,
'package:flutter/src/widgets/platform_view.dart@PlatformViewSurface@#is': (m.Scope scope, target)=>()=>target is PlatformViewSurface,
'package:flutter/src/widgets/platform_view.dart@PlatformViewSurface@controller': (m.Scope scope, PlatformViewSurface target)=>target.controller,
'package:flutter/src/widgets/platform_view.dart@PlatformViewSurface@gestureRecognizers': (m.Scope scope, PlatformViewSurface target)=>target.gestureRecognizers,
'package:flutter/src/widgets/platform_view.dart@PlatformViewSurface@hitTestBehavior': (m.Scope scope, PlatformViewSurface target)=>target.hitTestBehavior,
'package:flutter/src/widgets/platform_view.dart@PlatformViewSurface@': (m.Scope scope)=>({ controller,  gestureRecognizers,  hitTestBehavior,  key}){
return PlatformViewSurface(controller:controller, gestureRecognizers:gestureRecognizers, hitTestBehavior:hitTestBehavior, key:key);
},
'package:flutter/src/widgets/platform_view.dart@PlatformViewSurface@createRenderObject': (m.Scope scope, PlatformViewSurface target)=>target.createRenderObject,
'package:flutter/src/widgets/platform_view.dart@PlatformViewSurface@updateRenderObject': (m.Scope scope, PlatformViewSurface target)=>target.updateRenderObject,
'package:flutter/src/widgets/platform_view.dart@AndroidViewSurface@#as': (m.Scope scope, target)=>()=>target as AndroidViewSurface,
'package:flutter/src/widgets/platform_view.dart@AndroidViewSurface@#is': (m.Scope scope, target)=>()=>target is AndroidViewSurface,
'package:flutter/src/widgets/platform_view.dart@AndroidViewSurface@controller': (m.Scope scope, AndroidViewSurface target)=>target.controller,
'package:flutter/src/widgets/platform_view.dart@AndroidViewSurface@gestureRecognizers': (m.Scope scope, AndroidViewSurface target)=>target.gestureRecognizers,
'package:flutter/src/widgets/platform_view.dart@AndroidViewSurface@hitTestBehavior': (m.Scope scope, AndroidViewSurface target)=>target.hitTestBehavior,
'package:flutter/src/widgets/platform_view.dart@AndroidViewSurface@': (m.Scope scope)=>({ controller,  gestureRecognizers,  hitTestBehavior,  key}){
return AndroidViewSurface(controller:controller, gestureRecognizers:gestureRecognizers, hitTestBehavior:hitTestBehavior, key:key);
},
'package:flutter/src/widgets/platform_view.dart@AndroidViewSurface@createState': (m.Scope scope, AndroidViewSurface target)=>target.createState,

};
}