import 'package:flutter/src/services/platform_views.dart';
import 'dart:async';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/services/message_codec.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/platform_views.dart@@platformViewsRegistry': (m.Scope scope)=>platformViewsRegistry,
'package:flutter/src/services/platform_views.dart@PlatformViewsRegistry@#as': (m.Scope scope, target)=>()=>target as PlatformViewsRegistry,
'package:flutter/src/services/platform_views.dart@PlatformViewsRegistry@#is': (m.Scope scope, target)=>()=>target is PlatformViewsRegistry,
'package:flutter/src/services/platform_views.dart@PlatformViewsRegistry@getNextPlatformViewId': (m.Scope scope, PlatformViewsRegistry target)=>target.getNextPlatformViewId,
'package:flutter/src/services/platform_views.dart@PlatformViewsService@#as': (m.Scope scope, target)=>()=>target as PlatformViewsService,
'package:flutter/src/services/platform_views.dart@PlatformViewsService@#is': (m.Scope scope, target)=>()=>target is PlatformViewsService,
'package:flutter/src/services/platform_views.dart@PlatformViewsService@initAndroidView': (m.Scope scope)=>({ creationParams,  creationParamsCodec,  id,  layoutDirection,  onFocus,  viewType}){
void onFocusProxy() {
 engine.callFunctionPointer(scope, onFocus!,[], {});
}

return PlatformViewsService.initAndroidView(creationParams:creationParams, creationParamsCodec:creationParamsCodec, id:id, layoutDirection:layoutDirection, onFocus:onFocus == null ? null :onFocusProxy, viewType:viewType);
},
'package:flutter/src/services/platform_views.dart@PlatformViewsService@initSurfaceAndroidView': (m.Scope scope)=>({ creationParams,  creationParamsCodec,  id,  layoutDirection,  onFocus,  viewType}){
void onFocusProxy() {
 engine.callFunctionPointer(scope, onFocus!,[], {});
}

return PlatformViewsService.initSurfaceAndroidView(creationParams:creationParams, creationParamsCodec:creationParamsCodec, id:id, layoutDirection:layoutDirection, onFocus:onFocus == null ? null :onFocusProxy, viewType:viewType);
},
'package:flutter/src/services/platform_views.dart@PlatformViewsService@initExpensiveAndroidView': (m.Scope scope)=>({ creationParams,  creationParamsCodec,  id,  layoutDirection,  onFocus,  viewType}){
void onFocusProxy() {
 engine.callFunctionPointer(scope, onFocus!,[], {});
}

return PlatformViewsService.initExpensiveAndroidView(creationParams:creationParams, creationParamsCodec:creationParamsCodec, id:id, layoutDirection:layoutDirection, onFocus:onFocus == null ? null :onFocusProxy, viewType:viewType);
},
'package:flutter/src/services/platform_views.dart@PlatformViewsService@initUiKitView': (m.Scope scope)=>({ creationParams,  creationParamsCodec,  id,  layoutDirection,  onFocus,  viewType}){
void onFocusProxy() {
 engine.callFunctionPointer(scope, onFocus!,[], {});
}

return PlatformViewsService.initUiKitView(creationParams:creationParams, creationParamsCodec:creationParamsCodec, id:id, layoutDirection:layoutDirection, onFocus:onFocus == null ? null :onFocusProxy, viewType:viewType);
},
'package:flutter/src/services/platform_views.dart@AndroidPointerProperties@#as': (m.Scope scope, target)=>()=>target as AndroidPointerProperties,
'package:flutter/src/services/platform_views.dart@AndroidPointerProperties@#is': (m.Scope scope, target)=>()=>target is AndroidPointerProperties,
'package:flutter/src/services/platform_views.dart@AndroidPointerProperties@id': (m.Scope scope, AndroidPointerProperties target)=>target.id,
'package:flutter/src/services/platform_views.dart@AndroidPointerProperties@toolType': (m.Scope scope, AndroidPointerProperties target)=>target.toolType,
'package:flutter/src/services/platform_views.dart@AndroidPointerProperties@kToolTypeUnknown': (m.Scope scope)=>AndroidPointerProperties.kToolTypeUnknown,
'package:flutter/src/services/platform_views.dart@AndroidPointerProperties@kToolTypeFinger': (m.Scope scope)=>AndroidPointerProperties.kToolTypeFinger,
'package:flutter/src/services/platform_views.dart@AndroidPointerProperties@kToolTypeStylus': (m.Scope scope)=>AndroidPointerProperties.kToolTypeStylus,
'package:flutter/src/services/platform_views.dart@AndroidPointerProperties@kToolTypeMouse': (m.Scope scope)=>AndroidPointerProperties.kToolTypeMouse,
'package:flutter/src/services/platform_views.dart@AndroidPointerProperties@kToolTypeEraser': (m.Scope scope)=>AndroidPointerProperties.kToolTypeEraser,
'package:flutter/src/services/platform_views.dart@AndroidPointerProperties@': (m.Scope scope)=>({ id,  toolType}){
return AndroidPointerProperties(id:id, toolType:toolType);
},
'package:flutter/src/services/platform_views.dart@AndroidPointerProperties@toString': (m.Scope scope, AndroidPointerProperties target)=>target.toString,
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@#as': (m.Scope scope, target)=>()=>target as AndroidPointerCoords,
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@#is': (m.Scope scope, target)=>()=>target is AndroidPointerCoords,
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@orientation': (m.Scope scope, AndroidPointerCoords target)=>target.orientation,
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@pressure': (m.Scope scope, AndroidPointerCoords target)=>target.pressure,
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@size': (m.Scope scope, AndroidPointerCoords target)=>target.size,
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@toolMajor': (m.Scope scope, AndroidPointerCoords target)=>target.toolMajor,
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@toolMinor': (m.Scope scope, AndroidPointerCoords target)=>target.toolMinor,
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@touchMajor': (m.Scope scope, AndroidPointerCoords target)=>target.touchMajor,
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@touchMinor': (m.Scope scope, AndroidPointerCoords target)=>target.touchMinor,
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@x': (m.Scope scope, AndroidPointerCoords target)=>target.x,
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@y': (m.Scope scope, AndroidPointerCoords target)=>target.y,
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@': (m.Scope scope)=>({ orientation,  pressure,  size,  toolMajor,  toolMinor,  touchMajor,  touchMinor,  x,  y}){
return AndroidPointerCoords(orientation:orientation, pressure:pressure, size:size, toolMajor:toolMajor, toolMinor:toolMinor, touchMajor:touchMajor, touchMinor:touchMinor, x:x, y:y);
},
'package:flutter/src/services/platform_views.dart@AndroidPointerCoords@toString': (m.Scope scope, AndroidPointerCoords target)=>target.toString,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@#as': (m.Scope scope, target)=>()=>target as AndroidMotionEvent,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@#is': (m.Scope scope, target)=>()=>target is AndroidMotionEvent,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@downTime': (m.Scope scope, AndroidMotionEvent target)=>target.downTime,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@eventTime': (m.Scope scope, AndroidMotionEvent target)=>target.eventTime,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@action': (m.Scope scope, AndroidMotionEvent target)=>target.action,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@pointerCount': (m.Scope scope, AndroidMotionEvent target)=>target.pointerCount,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@pointerProperties': (m.Scope scope, AndroidMotionEvent target)=>target.pointerProperties,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@pointerCoords': (m.Scope scope, AndroidMotionEvent target)=>target.pointerCoords,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@metaState': (m.Scope scope, AndroidMotionEvent target)=>target.metaState,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@buttonState': (m.Scope scope, AndroidMotionEvent target)=>target.buttonState,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@xPrecision': (m.Scope scope, AndroidMotionEvent target)=>target.xPrecision,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@yPrecision': (m.Scope scope, AndroidMotionEvent target)=>target.yPrecision,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@deviceId': (m.Scope scope, AndroidMotionEvent target)=>target.deviceId,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@edgeFlags': (m.Scope scope, AndroidMotionEvent target)=>target.edgeFlags,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@source': (m.Scope scope, AndroidMotionEvent target)=>target.source,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@flags': (m.Scope scope, AndroidMotionEvent target)=>target.flags,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@motionEventId': (m.Scope scope, AndroidMotionEvent target)=>target.motionEventId,
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@': (m.Scope scope)=>({ action,  buttonState,  deviceId,  downTime,  edgeFlags,  eventTime,  flags,  metaState,  motionEventId,  pointerCoords,  pointerCount,  pointerProperties,  source,  xPrecision,  yPrecision}){
return AndroidMotionEvent(action:action, buttonState:buttonState, deviceId:deviceId, downTime:downTime, edgeFlags:edgeFlags, eventTime:eventTime, flags:flags, metaState:metaState, motionEventId:motionEventId, pointerCoords:pointerCoords, pointerCount:pointerCount, pointerProperties:pointerProperties, source:source, xPrecision:xPrecision, yPrecision:yPrecision);
},
'package:flutter/src/services/platform_views.dart@AndroidMotionEvent@toString': (m.Scope scope, AndroidMotionEvent target)=>target.toString,
'package:flutter/src/services/platform_views.dart@AndroidViewController@#as': (m.Scope scope, target)=>()=>target as AndroidViewController,
'package:flutter/src/services/platform_views.dart@AndroidViewController@#is': (m.Scope scope, target)=>()=>target is AndroidViewController,
'package:flutter/src/services/platform_views.dart@AndroidViewController@kActionDown': (m.Scope scope)=>AndroidViewController.kActionDown,
'package:flutter/src/services/platform_views.dart@AndroidViewController@kActionUp': (m.Scope scope)=>AndroidViewController.kActionUp,
'package:flutter/src/services/platform_views.dart@AndroidViewController@kActionMove': (m.Scope scope)=>AndroidViewController.kActionMove,
'package:flutter/src/services/platform_views.dart@AndroidViewController@kActionCancel': (m.Scope scope)=>AndroidViewController.kActionCancel,
'package:flutter/src/services/platform_views.dart@AndroidViewController@kActionPointerDown': (m.Scope scope)=>AndroidViewController.kActionPointerDown,
'package:flutter/src/services/platform_views.dart@AndroidViewController@kActionPointerUp': (m.Scope scope)=>AndroidViewController.kActionPointerUp,
'package:flutter/src/services/platform_views.dart@AndroidViewController@kAndroidLayoutDirectionLtr': (m.Scope scope)=>AndroidViewController.kAndroidLayoutDirectionLtr,
'package:flutter/src/services/platform_views.dart@AndroidViewController@kAndroidLayoutDirectionRtl': (m.Scope scope)=>AndroidViewController.kAndroidLayoutDirectionRtl,
'package:flutter/src/services/platform_views.dart@AndroidViewController@viewId': (m.Scope scope, AndroidViewController target)=>target.viewId,
'package:flutter/src/services/platform_views.dart@AndroidViewController@awaitingCreation': (m.Scope scope, AndroidViewController target)=>target.awaitingCreation,
'package:flutter/src/services/platform_views.dart@AndroidViewController@textureId': (m.Scope scope, AndroidViewController target)=>target.textureId,
'package:flutter/src/services/platform_views.dart@AndroidViewController@requiresViewComposition': (m.Scope scope, AndroidViewController target)=>target.requiresViewComposition,
'package:flutter/src/services/platform_views.dart@AndroidViewController@pointTransformer': (m.Scope scope, AndroidViewController target)=>target.pointTransformer,
'package:flutter/src/services/platform_views.dart@AndroidViewController@pointTransformer:set': (m.Scope scope, AndroidViewController target)=>(other)=>target.pointTransformer=other,
'package:flutter/src/services/platform_views.dart@AndroidViewController@isCreated': (m.Scope scope, AndroidViewController target)=>target.isCreated,
'package:flutter/src/services/platform_views.dart@AndroidViewController@createdCallbacks': (m.Scope scope, AndroidViewController target)=>target.createdCallbacks,
'package:flutter/src/services/platform_views.dart@AndroidViewController@pointerAction': (m.Scope scope)=>AndroidViewController.pointerAction,
'package:flutter/src/services/platform_views.dart@AndroidViewController@create': (m.Scope scope, AndroidViewController target)=>target.create,
'package:flutter/src/services/platform_views.dart@AndroidViewController@setSize': (m.Scope scope, AndroidViewController target)=>target.setSize,
'package:flutter/src/services/platform_views.dart@AndroidViewController@setOffset': (m.Scope scope, AndroidViewController target)=>target.setOffset,
'package:flutter/src/services/platform_views.dart@AndroidViewController@sendMotionEvent': (m.Scope scope, AndroidViewController target)=>target.sendMotionEvent,
'package:flutter/src/services/platform_views.dart@AndroidViewController@addOnPlatformViewCreatedListener': (m.Scope scope, AndroidViewController target)=>( listener){
void listenerProxy( id) {
 engine.callFunctionPointer(scope, listener!,[id], {});
}

target.addOnPlatformViewCreatedListener(listenerProxy);
},
'package:flutter/src/services/platform_views.dart@AndroidViewController@removeOnPlatformViewCreatedListener': (m.Scope scope, AndroidViewController target)=>( listener){
void listenerProxy( id) {
 engine.callFunctionPointer(scope, listener!,[id], {});
}

target.removeOnPlatformViewCreatedListener(listenerProxy);
},
'package:flutter/src/services/platform_views.dart@AndroidViewController@setLayoutDirection': (m.Scope scope, AndroidViewController target)=>target.setLayoutDirection,
'package:flutter/src/services/platform_views.dart@AndroidViewController@dispatchPointerEvent': (m.Scope scope, AndroidViewController target)=>target.dispatchPointerEvent,
'package:flutter/src/services/platform_views.dart@AndroidViewController@clearFocus': (m.Scope scope, AndroidViewController target)=>target.clearFocus,
'package:flutter/src/services/platform_views.dart@AndroidViewController@dispose': (m.Scope scope, AndroidViewController target)=>target.dispose,
'package:flutter/src/services/platform_views.dart@SurfaceAndroidViewController@#as': (m.Scope scope, target)=>()=>target as SurfaceAndroidViewController,
'package:flutter/src/services/platform_views.dart@SurfaceAndroidViewController@#is': (m.Scope scope, target)=>()=>target is SurfaceAndroidViewController,
'package:flutter/src/services/platform_views.dart@SurfaceAndroidViewController@textureId': (m.Scope scope, SurfaceAndroidViewController target)=>target.textureId,
'package:flutter/src/services/platform_views.dart@SurfaceAndroidViewController@requiresViewComposition': (m.Scope scope, SurfaceAndroidViewController target)=>target.requiresViewComposition,
'package:flutter/src/services/platform_views.dart@SurfaceAndroidViewController@setOffset': (m.Scope scope, SurfaceAndroidViewController target)=>target.setOffset,
'package:flutter/src/services/platform_views.dart@ExpensiveAndroidViewController@#as': (m.Scope scope, target)=>()=>target as ExpensiveAndroidViewController,
'package:flutter/src/services/platform_views.dart@ExpensiveAndroidViewController@#is': (m.Scope scope, target)=>()=>target is ExpensiveAndroidViewController,
'package:flutter/src/services/platform_views.dart@ExpensiveAndroidViewController@textureId': (m.Scope scope, ExpensiveAndroidViewController target)=>target.textureId,
'package:flutter/src/services/platform_views.dart@ExpensiveAndroidViewController@requiresViewComposition': (m.Scope scope, ExpensiveAndroidViewController target)=>target.requiresViewComposition,
'package:flutter/src/services/platform_views.dart@ExpensiveAndroidViewController@setOffset': (m.Scope scope, ExpensiveAndroidViewController target)=>target.setOffset,
'package:flutter/src/services/platform_views.dart@TextureAndroidViewController@#as': (m.Scope scope, target)=>()=>target as TextureAndroidViewController,
'package:flutter/src/services/platform_views.dart@TextureAndroidViewController@#is': (m.Scope scope, target)=>()=>target is TextureAndroidViewController,
'package:flutter/src/services/platform_views.dart@TextureAndroidViewController@textureId': (m.Scope scope, TextureAndroidViewController target)=>target.textureId,
'package:flutter/src/services/platform_views.dart@TextureAndroidViewController@requiresViewComposition': (m.Scope scope, TextureAndroidViewController target)=>target.requiresViewComposition,
'package:flutter/src/services/platform_views.dart@TextureAndroidViewController@setOffset': (m.Scope scope, TextureAndroidViewController target)=>target.setOffset,
'package:flutter/src/services/platform_views.dart@UiKitViewController@#as': (m.Scope scope, target)=>()=>target as UiKitViewController,
'package:flutter/src/services/platform_views.dart@UiKitViewController@#is': (m.Scope scope, target)=>()=>target is UiKitViewController,
'package:flutter/src/services/platform_views.dart@UiKitViewController@id': (m.Scope scope, UiKitViewController target)=>target.id,
'package:flutter/src/services/platform_views.dart@UiKitViewController@setLayoutDirection': (m.Scope scope, UiKitViewController target)=>target.setLayoutDirection,
'package:flutter/src/services/platform_views.dart@UiKitViewController@acceptGesture': (m.Scope scope, UiKitViewController target)=>target.acceptGesture,
'package:flutter/src/services/platform_views.dart@UiKitViewController@rejectGesture': (m.Scope scope, UiKitViewController target)=>target.rejectGesture,
'package:flutter/src/services/platform_views.dart@UiKitViewController@dispose': (m.Scope scope, UiKitViewController target)=>target.dispose,
'package:flutter/src/services/platform_views.dart@PlatformViewController@#as': (m.Scope scope, target)=>()=>target as PlatformViewController,
'package:flutter/src/services/platform_views.dart@PlatformViewController@#is': (m.Scope scope, target)=>()=>target is PlatformViewController,
'package:flutter/src/services/platform_views.dart@PlatformViewController@viewId': (m.Scope scope, PlatformViewController target)=>target.viewId,
'package:flutter/src/services/platform_views.dart@PlatformViewController@awaitingCreation': (m.Scope scope, PlatformViewController target)=>target.awaitingCreation,
'package:flutter/src/services/platform_views.dart@PlatformViewController@dispatchPointerEvent': (m.Scope scope, PlatformViewController target)=>target.dispatchPointerEvent,
'package:flutter/src/services/platform_views.dart@PlatformViewController@create': (m.Scope scope, PlatformViewController target)=>target.create,
'package:flutter/src/services/platform_views.dart@PlatformViewController@dispose': (m.Scope scope, PlatformViewController target)=>target.dispose,
'package:flutter/src/services/platform_views.dart@PlatformViewController@clearFocus': (m.Scope scope, PlatformViewController target)=>target.clearFocus,

};
}