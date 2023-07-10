import 'package:flutter/src/gestures/events.dart';
import 'dart:ui' show Offset,PointerDeviceKind;
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/gesture_settings.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/events.dart@@kPrimaryButton': (m.Scope scope)=>kPrimaryButton,
'package:flutter/src/gestures/events.dart@@kSecondaryButton': (m.Scope scope)=>kSecondaryButton,
'package:flutter/src/gestures/events.dart@@kPrimaryMouseButton': (m.Scope scope)=>kPrimaryMouseButton,
'package:flutter/src/gestures/events.dart@@kSecondaryMouseButton': (m.Scope scope)=>kSecondaryMouseButton,
'package:flutter/src/gestures/events.dart@@kStylusContact': (m.Scope scope)=>kStylusContact,
'package:flutter/src/gestures/events.dart@@kPrimaryStylusButton': (m.Scope scope)=>kPrimaryStylusButton,
'package:flutter/src/gestures/events.dart@@kTertiaryButton': (m.Scope scope)=>kTertiaryButton,
'package:flutter/src/gestures/events.dart@@kMiddleMouseButton': (m.Scope scope)=>kMiddleMouseButton,
'package:flutter/src/gestures/events.dart@@kSecondaryStylusButton': (m.Scope scope)=>kSecondaryStylusButton,
'package:flutter/src/gestures/events.dart@@kBackMouseButton': (m.Scope scope)=>kBackMouseButton,
'package:flutter/src/gestures/events.dart@@kForwardMouseButton': (m.Scope scope)=>kForwardMouseButton,
'package:flutter/src/gestures/events.dart@@kTouchContact': (m.Scope scope)=>kTouchContact,
'package:flutter/src/gestures/events.dart@PointerEvent@#as': (m.Scope scope, target)=>()=>target as PointerEvent,
'package:flutter/src/gestures/events.dart@PointerEvent@#is': (m.Scope scope, target)=>()=>target is PointerEvent,
'package:flutter/src/gestures/events.dart@PointerEvent@embedderId': (m.Scope scope, PointerEvent target)=>target.embedderId,
'package:flutter/src/gestures/events.dart@PointerEvent@timeStamp': (m.Scope scope, PointerEvent target)=>target.timeStamp,
'package:flutter/src/gestures/events.dart@PointerEvent@pointer': (m.Scope scope, PointerEvent target)=>target.pointer,
'package:flutter/src/gestures/events.dart@PointerEvent@kind': (m.Scope scope, PointerEvent target)=>target.kind,
'package:flutter/src/gestures/events.dart@PointerEvent@device': (m.Scope scope, PointerEvent target)=>target.device,
'package:flutter/src/gestures/events.dart@PointerEvent@position': (m.Scope scope, PointerEvent target)=>target.position,
'package:flutter/src/gestures/events.dart@PointerEvent@delta': (m.Scope scope, PointerEvent target)=>target.delta,
'package:flutter/src/gestures/events.dart@PointerEvent@buttons': (m.Scope scope, PointerEvent target)=>target.buttons,
'package:flutter/src/gestures/events.dart@PointerEvent@down': (m.Scope scope, PointerEvent target)=>target.down,
'package:flutter/src/gestures/events.dart@PointerEvent@obscured': (m.Scope scope, PointerEvent target)=>target.obscured,
'package:flutter/src/gestures/events.dart@PointerEvent@pressure': (m.Scope scope, PointerEvent target)=>target.pressure,
'package:flutter/src/gestures/events.dart@PointerEvent@pressureMin': (m.Scope scope, PointerEvent target)=>target.pressureMin,
'package:flutter/src/gestures/events.dart@PointerEvent@pressureMax': (m.Scope scope, PointerEvent target)=>target.pressureMax,
'package:flutter/src/gestures/events.dart@PointerEvent@distance': (m.Scope scope, PointerEvent target)=>target.distance,
'package:flutter/src/gestures/events.dart@PointerEvent@distanceMax': (m.Scope scope, PointerEvent target)=>target.distanceMax,
'package:flutter/src/gestures/events.dart@PointerEvent@size': (m.Scope scope, PointerEvent target)=>target.size,
'package:flutter/src/gestures/events.dart@PointerEvent@radiusMajor': (m.Scope scope, PointerEvent target)=>target.radiusMajor,
'package:flutter/src/gestures/events.dart@PointerEvent@radiusMinor': (m.Scope scope, PointerEvent target)=>target.radiusMinor,
'package:flutter/src/gestures/events.dart@PointerEvent@radiusMin': (m.Scope scope, PointerEvent target)=>target.radiusMin,
'package:flutter/src/gestures/events.dart@PointerEvent@radiusMax': (m.Scope scope, PointerEvent target)=>target.radiusMax,
'package:flutter/src/gestures/events.dart@PointerEvent@orientation': (m.Scope scope, PointerEvent target)=>target.orientation,
'package:flutter/src/gestures/events.dart@PointerEvent@tilt': (m.Scope scope, PointerEvent target)=>target.tilt,
'package:flutter/src/gestures/events.dart@PointerEvent@platformData': (m.Scope scope, PointerEvent target)=>target.platformData,
'package:flutter/src/gestures/events.dart@PointerEvent@synthesized': (m.Scope scope, PointerEvent target)=>target.synthesized,
'package:flutter/src/gestures/events.dart@PointerEvent@transform': (m.Scope scope, PointerEvent target)=>target.transform,
'package:flutter/src/gestures/events.dart@PointerEvent@original': (m.Scope scope, PointerEvent target)=>target.original,
'package:flutter/src/gestures/events.dart@PointerEvent@localPosition': (m.Scope scope, PointerEvent target)=>target.localPosition,
'package:flutter/src/gestures/events.dart@PointerEvent@localDelta': (m.Scope scope, PointerEvent target)=>target.localDelta,
'package:flutter/src/gestures/events.dart@PointerEvent@distanceMin': (m.Scope scope, PointerEvent target)=>target.distanceMin,
'package:flutter/src/gestures/events.dart@PointerEvent@transformed': (m.Scope scope, PointerEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerEvent@copyWith': (m.Scope scope, PointerEvent target)=>target.copyWith,
'package:flutter/src/gestures/events.dart@PointerEvent@transformPosition': (m.Scope scope)=>PointerEvent.transformPosition,
'package:flutter/src/gestures/events.dart@PointerEvent@transformDeltaViaPositions': (m.Scope scope)=>PointerEvent.transformDeltaViaPositions,
'package:flutter/src/gestures/events.dart@PointerEvent@removePerspectiveTransform': (m.Scope scope)=>PointerEvent.removePerspectiveTransform,
'package:flutter/src/gestures/events.dart@PointerAddedEvent@#as': (m.Scope scope, target)=>()=>target as PointerAddedEvent,
'package:flutter/src/gestures/events.dart@PointerAddedEvent@#is': (m.Scope scope, target)=>()=>target is PointerAddedEvent,
'package:flutter/src/gestures/events.dart@PointerAddedEvent@': (m.Scope scope)=>({ device,  distance,  distanceMax,  embedderId,  kind,  obscured,  orientation,  pointer,  position,  pressureMax,  pressureMin,  radiusMax,  radiusMin,  tilt,  timeStamp}){
return PointerAddedEvent(device:device ?? 0, distance:distance ?? 0.0, distanceMax:distanceMax ?? 0.0, embedderId:embedderId ?? 0, kind:kind ?? PointerDeviceKind.touch, obscured:obscured ?? false, orientation:orientation ?? 0.0, pointer:pointer ?? 0, position:position ?? Offset.zero, pressureMax:pressureMax ?? 1.0, pressureMin:pressureMin ?? 1.0, radiusMax:radiusMax ?? 0.0, radiusMin:radiusMin ?? 0.0, tilt:tilt ?? 0.0, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerAddedEvent@transformed': (m.Scope scope, PointerAddedEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerRemovedEvent@#as': (m.Scope scope, target)=>()=>target as PointerRemovedEvent,
'package:flutter/src/gestures/events.dart@PointerRemovedEvent@#is': (m.Scope scope, target)=>()=>target is PointerRemovedEvent,
'package:flutter/src/gestures/events.dart@PointerRemovedEvent@': (m.Scope scope)=>({ device,  distanceMax,  embedderId,  kind,  obscured,  original,  pointer,  position,  pressureMax,  pressureMin,  radiusMax,  radiusMin,  timeStamp}){
return PointerRemovedEvent(device:device ?? 0, distanceMax:distanceMax ?? 0.0, embedderId:embedderId ?? 0, kind:kind ?? PointerDeviceKind.touch, obscured:obscured ?? false, original:original, pointer:pointer ?? 0, position:position ?? Offset.zero, pressureMax:pressureMax ?? 1.0, pressureMin:pressureMin ?? 1.0, radiusMax:radiusMax ?? 0.0, radiusMin:radiusMin ?? 0.0, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerRemovedEvent@transformed': (m.Scope scope, PointerRemovedEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerHoverEvent@#as': (m.Scope scope, target)=>()=>target as PointerHoverEvent,
'package:flutter/src/gestures/events.dart@PointerHoverEvent@#is': (m.Scope scope, target)=>()=>target is PointerHoverEvent,
'package:flutter/src/gestures/events.dart@PointerHoverEvent@': (m.Scope scope)=>({ buttons,  delta,  device,  distance,  distanceMax,  embedderId,  kind,  obscured,  orientation,  pointer,  position,  pressureMax,  pressureMin,  radiusMajor,  radiusMax,  radiusMin,  radiusMinor,  size,  synthesized,  tilt,  timeStamp}){
return PointerHoverEvent(buttons:buttons ?? 0, delta:delta ?? Offset.zero, device:device ?? 0, distance:distance ?? 0.0, distanceMax:distanceMax ?? 0.0, embedderId:embedderId ?? 0, kind:kind ?? PointerDeviceKind.touch, obscured:obscured ?? false, orientation:orientation ?? 0.0, pointer:pointer ?? 0, position:position ?? Offset.zero, pressureMax:pressureMax ?? 1.0, pressureMin:pressureMin ?? 1.0, radiusMajor:radiusMajor ?? 0.0, radiusMax:radiusMax ?? 0.0, radiusMin:radiusMin ?? 0.0, radiusMinor:radiusMinor ?? 0.0, size:size ?? 0.0, synthesized:synthesized ?? false, tilt:tilt ?? 0.0, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerHoverEvent@transformed': (m.Scope scope, PointerHoverEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerEnterEvent@#as': (m.Scope scope, target)=>()=>target as PointerEnterEvent,
'package:flutter/src/gestures/events.dart@PointerEnterEvent@#is': (m.Scope scope, target)=>()=>target is PointerEnterEvent,
'package:flutter/src/gestures/events.dart@PointerEnterEvent@': (m.Scope scope)=>({ buttons,  delta,  device,  distance,  distanceMax,  down,  embedderId,  kind,  obscured,  orientation,  pointer,  position,  pressureMax,  pressureMin,  radiusMajor,  radiusMax,  radiusMin,  radiusMinor,  size,  synthesized,  tilt,  timeStamp}){
return PointerEnterEvent(buttons:buttons ?? 0, delta:delta ?? Offset.zero, device:device ?? 0, distance:distance ?? 0.0, distanceMax:distanceMax ?? 0.0, down:down ?? false, embedderId:embedderId ?? 0, kind:kind ?? PointerDeviceKind.touch, obscured:obscured ?? false, orientation:orientation ?? 0.0, pointer:pointer ?? 0, position:position ?? Offset.zero, pressureMax:pressureMax ?? 1.0, pressureMin:pressureMin ?? 1.0, radiusMajor:radiusMajor ?? 0.0, radiusMax:radiusMax ?? 0.0, radiusMin:radiusMin ?? 0.0, radiusMinor:radiusMinor ?? 0.0, size:size ?? 0.0, synthesized:synthesized ?? false, tilt:tilt ?? 0.0, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerEnterEvent@fromMouseEvent': (m.Scope scope)=>PointerEnterEvent.fromMouseEvent,
'package:flutter/src/gestures/events.dart@PointerEnterEvent@transformed': (m.Scope scope, PointerEnterEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerExitEvent@#as': (m.Scope scope, target)=>()=>target as PointerExitEvent,
'package:flutter/src/gestures/events.dart@PointerExitEvent@#is': (m.Scope scope, target)=>()=>target is PointerExitEvent,
'package:flutter/src/gestures/events.dart@PointerExitEvent@': (m.Scope scope)=>({ buttons,  delta,  device,  distance,  distanceMax,  down,  embedderId,  kind,  obscured,  orientation,  pointer,  position,  pressureMax,  pressureMin,  radiusMajor,  radiusMax,  radiusMin,  radiusMinor,  size,  synthesized,  tilt,  timeStamp}){
return PointerExitEvent(buttons:buttons ?? 0, delta:delta ?? Offset.zero, device:device ?? 0, distance:distance ?? 0.0, distanceMax:distanceMax ?? 0.0, down:down ?? false, embedderId:embedderId ?? 0, kind:kind ?? PointerDeviceKind.touch, obscured:obscured ?? false, orientation:orientation ?? 0.0, pointer:pointer ?? 0, position:position ?? Offset.zero, pressureMax:pressureMax ?? 1.0, pressureMin:pressureMin ?? 1.0, radiusMajor:radiusMajor ?? 0.0, radiusMax:radiusMax ?? 0.0, radiusMin:radiusMin ?? 0.0, radiusMinor:radiusMinor ?? 0.0, size:size ?? 0.0, synthesized:synthesized ?? false, tilt:tilt ?? 0.0, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerExitEvent@fromMouseEvent': (m.Scope scope)=>PointerExitEvent.fromMouseEvent,
'package:flutter/src/gestures/events.dart@PointerExitEvent@transformed': (m.Scope scope, PointerExitEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerDownEvent@#as': (m.Scope scope, target)=>()=>target as PointerDownEvent,
'package:flutter/src/gestures/events.dart@PointerDownEvent@#is': (m.Scope scope, target)=>()=>target is PointerDownEvent,
'package:flutter/src/gestures/events.dart@PointerDownEvent@': (m.Scope scope)=>({ buttons,  device,  distanceMax,  embedderId,  kind,  obscured,  orientation,  pointer,  position,  pressure,  pressureMax,  pressureMin,  radiusMajor,  radiusMax,  radiusMin,  radiusMinor,  size,  tilt,  timeStamp}){
return PointerDownEvent(buttons:buttons ?? kPrimaryButton, device:device ?? 0, distanceMax:distanceMax ?? 0.0, embedderId:embedderId ?? 0, kind:kind ?? PointerDeviceKind.touch, obscured:obscured ?? false, orientation:orientation ?? 0.0, pointer:pointer ?? 0, position:position ?? Offset.zero, pressure:pressure ?? 1.0, pressureMax:pressureMax ?? 1.0, pressureMin:pressureMin ?? 1.0, radiusMajor:radiusMajor ?? 0.0, radiusMax:radiusMax ?? 0.0, radiusMin:radiusMin ?? 0.0, radiusMinor:radiusMinor ?? 0.0, size:size ?? 0.0, tilt:tilt ?? 0.0, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerDownEvent@transformed': (m.Scope scope, PointerDownEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerMoveEvent@#as': (m.Scope scope, target)=>()=>target as PointerMoveEvent,
'package:flutter/src/gestures/events.dart@PointerMoveEvent@#is': (m.Scope scope, target)=>()=>target is PointerMoveEvent,
'package:flutter/src/gestures/events.dart@PointerMoveEvent@': (m.Scope scope)=>({ buttons,  delta,  device,  distanceMax,  embedderId,  kind,  obscured,  orientation,  platformData,  pointer,  position,  pressure,  pressureMax,  pressureMin,  radiusMajor,  radiusMax,  radiusMin,  radiusMinor,  size,  synthesized,  tilt,  timeStamp}){
return PointerMoveEvent(buttons:buttons ?? kPrimaryButton, delta:delta ?? Offset.zero, device:device ?? 0, distanceMax:distanceMax ?? 0.0, embedderId:embedderId ?? 0, kind:kind ?? PointerDeviceKind.touch, obscured:obscured ?? false, orientation:orientation ?? 0.0, platformData:platformData ?? 0, pointer:pointer ?? 0, position:position ?? Offset.zero, pressure:pressure ?? 1.0, pressureMax:pressureMax ?? 1.0, pressureMin:pressureMin ?? 1.0, radiusMajor:radiusMajor ?? 0.0, radiusMax:radiusMax ?? 0.0, radiusMin:radiusMin ?? 0.0, radiusMinor:radiusMinor ?? 0.0, size:size ?? 0.0, synthesized:synthesized ?? false, tilt:tilt ?? 0.0, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerMoveEvent@transformed': (m.Scope scope, PointerMoveEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerUpEvent@#as': (m.Scope scope, target)=>()=>target as PointerUpEvent,
'package:flutter/src/gestures/events.dart@PointerUpEvent@#is': (m.Scope scope, target)=>()=>target is PointerUpEvent,
'package:flutter/src/gestures/events.dart@PointerUpEvent@': (m.Scope scope)=>({ buttons,  device,  distance,  distanceMax,  embedderId,  kind,  obscured,  orientation,  pointer,  position,  pressure,  pressureMax,  pressureMin,  radiusMajor,  radiusMax,  radiusMin,  radiusMinor,  size,  tilt,  timeStamp}){
return PointerUpEvent(buttons:buttons ?? 0, device:device ?? 0, distance:distance ?? 0.0, distanceMax:distanceMax ?? 0.0, embedderId:embedderId ?? 0, kind:kind ?? PointerDeviceKind.touch, obscured:obscured ?? false, orientation:orientation ?? 0.0, pointer:pointer ?? 0, position:position ?? Offset.zero, pressure:pressure ?? 0.0, pressureMax:pressureMax ?? 1.0, pressureMin:pressureMin ?? 1.0, radiusMajor:radiusMajor ?? 0.0, radiusMax:radiusMax ?? 0.0, radiusMin:radiusMin ?? 0.0, radiusMinor:radiusMinor ?? 0.0, size:size ?? 0.0, tilt:tilt ?? 0.0, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerUpEvent@transformed': (m.Scope scope, PointerUpEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerSignalEvent@#as': (m.Scope scope, target)=>()=>target as PointerSignalEvent,
'package:flutter/src/gestures/events.dart@PointerSignalEvent@#is': (m.Scope scope, target)=>()=>target is PointerSignalEvent,
'package:flutter/src/gestures/events.dart@PointerScrollEvent@#as': (m.Scope scope, target)=>()=>target as PointerScrollEvent,
'package:flutter/src/gestures/events.dart@PointerScrollEvent@#is': (m.Scope scope, target)=>()=>target is PointerScrollEvent,
'package:flutter/src/gestures/events.dart@PointerScrollEvent@scrollDelta': (m.Scope scope, PointerScrollEvent target)=>target.scrollDelta,
'package:flutter/src/gestures/events.dart@PointerScrollEvent@': (m.Scope scope)=>({ device,  embedderId,  kind,  position,  scrollDelta,  timeStamp}){
return PointerScrollEvent(device:device ?? 0, embedderId:embedderId ?? 0, kind:kind ?? PointerDeviceKind.mouse, position:position ?? Offset.zero, scrollDelta:scrollDelta ?? Offset.zero, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerScrollEvent@transformed': (m.Scope scope, PointerScrollEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerScrollEvent@debugFillProperties': (m.Scope scope, PointerScrollEvent target)=>target.debugFillProperties,
'package:flutter/src/gestures/events.dart@PointerScrollInertiaCancelEvent@#as': (m.Scope scope, target)=>()=>target as PointerScrollInertiaCancelEvent,
'package:flutter/src/gestures/events.dart@PointerScrollInertiaCancelEvent@#is': (m.Scope scope, target)=>()=>target is PointerScrollInertiaCancelEvent,
'package:flutter/src/gestures/events.dart@PointerScrollInertiaCancelEvent@': (m.Scope scope)=>({ device,  embedderId,  kind,  position,  timeStamp}){
return PointerScrollInertiaCancelEvent(device:device ?? 0, embedderId:embedderId ?? 0, kind:kind ?? PointerDeviceKind.mouse, position:position ?? Offset.zero, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerScrollInertiaCancelEvent@transformed': (m.Scope scope, PointerScrollInertiaCancelEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerScaleEvent@#as': (m.Scope scope, target)=>()=>target as PointerScaleEvent,
'package:flutter/src/gestures/events.dart@PointerScaleEvent@#is': (m.Scope scope, target)=>()=>target is PointerScaleEvent,
'package:flutter/src/gestures/events.dart@PointerScaleEvent@scale': (m.Scope scope, PointerScaleEvent target)=>target.scale,
'package:flutter/src/gestures/events.dart@PointerScaleEvent@': (m.Scope scope)=>({ device,  embedderId,  kind,  position,  scale,  timeStamp}){
return PointerScaleEvent(device:device ?? 0, embedderId:embedderId ?? 0, kind:kind ?? PointerDeviceKind.mouse, position:position ?? Offset.zero, scale:scale ?? 1.0, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerScaleEvent@transformed': (m.Scope scope, PointerScaleEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerPanZoomStartEvent@#as': (m.Scope scope, target)=>()=>target as PointerPanZoomStartEvent,
'package:flutter/src/gestures/events.dart@PointerPanZoomStartEvent@#is': (m.Scope scope, target)=>()=>target is PointerPanZoomStartEvent,
'package:flutter/src/gestures/events.dart@PointerPanZoomStartEvent@': (m.Scope scope)=>({ device,  embedderId,  pointer,  position,  synthesized,  timeStamp}){
return PointerPanZoomStartEvent(device:device ?? 0, embedderId:embedderId ?? 0, pointer:pointer ?? 0, position:position ?? Offset.zero, synthesized:synthesized ?? false, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerPanZoomStartEvent@transformed': (m.Scope scope, PointerPanZoomStartEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerPanZoomUpdateEvent@#as': (m.Scope scope, target)=>()=>target as PointerPanZoomUpdateEvent,
'package:flutter/src/gestures/events.dart@PointerPanZoomUpdateEvent@#is': (m.Scope scope, target)=>()=>target is PointerPanZoomUpdateEvent,
'package:flutter/src/gestures/events.dart@PointerPanZoomUpdateEvent@pan': (m.Scope scope, PointerPanZoomUpdateEvent target)=>target.pan,
'package:flutter/src/gestures/events.dart@PointerPanZoomUpdateEvent@panDelta': (m.Scope scope, PointerPanZoomUpdateEvent target)=>target.panDelta,
'package:flutter/src/gestures/events.dart@PointerPanZoomUpdateEvent@scale': (m.Scope scope, PointerPanZoomUpdateEvent target)=>target.scale,
'package:flutter/src/gestures/events.dart@PointerPanZoomUpdateEvent@rotation': (m.Scope scope, PointerPanZoomUpdateEvent target)=>target.rotation,
'package:flutter/src/gestures/events.dart@PointerPanZoomUpdateEvent@localPan': (m.Scope scope, PointerPanZoomUpdateEvent target)=>target.localPan,
'package:flutter/src/gestures/events.dart@PointerPanZoomUpdateEvent@localPanDelta': (m.Scope scope, PointerPanZoomUpdateEvent target)=>target.localPanDelta,
'package:flutter/src/gestures/events.dart@PointerPanZoomUpdateEvent@': (m.Scope scope)=>({ device,  embedderId,  pan,  panDelta,  pointer,  position,  rotation,  scale,  synthesized,  timeStamp}){
return PointerPanZoomUpdateEvent(device:device ?? 0, embedderId:embedderId ?? 0, pan:pan ?? Offset.zero, panDelta:panDelta ?? Offset.zero, pointer:pointer ?? 0, position:position ?? Offset.zero, rotation:rotation ?? 0.0, scale:scale ?? 1.0, synthesized:synthesized ?? false, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerPanZoomUpdateEvent@transformed': (m.Scope scope, PointerPanZoomUpdateEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerPanZoomEndEvent@#as': (m.Scope scope, target)=>()=>target as PointerPanZoomEndEvent,
'package:flutter/src/gestures/events.dart@PointerPanZoomEndEvent@#is': (m.Scope scope, target)=>()=>target is PointerPanZoomEndEvent,
'package:flutter/src/gestures/events.dart@PointerPanZoomEndEvent@': (m.Scope scope)=>({ device,  embedderId,  pointer,  position,  synthesized,  timeStamp}){
return PointerPanZoomEndEvent(device:device ?? 0, embedderId:embedderId ?? 0, pointer:pointer ?? 0, position:position ?? Offset.zero, synthesized:synthesized ?? false, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerPanZoomEndEvent@transformed': (m.Scope scope, PointerPanZoomEndEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@PointerCancelEvent@#as': (m.Scope scope, target)=>()=>target as PointerCancelEvent,
'package:flutter/src/gestures/events.dart@PointerCancelEvent@#is': (m.Scope scope, target)=>()=>target is PointerCancelEvent,
'package:flutter/src/gestures/events.dart@PointerCancelEvent@': (m.Scope scope)=>({ buttons,  device,  distance,  distanceMax,  embedderId,  kind,  obscured,  orientation,  pointer,  position,  pressureMax,  pressureMin,  radiusMajor,  radiusMax,  radiusMin,  radiusMinor,  size,  tilt,  timeStamp}){
return PointerCancelEvent(buttons:buttons ?? 0, device:device ?? 0, distance:distance ?? 0.0, distanceMax:distanceMax ?? 0.0, embedderId:embedderId ?? 0, kind:kind ?? PointerDeviceKind.touch, obscured:obscured ?? false, orientation:orientation ?? 0.0, pointer:pointer ?? 0, position:position ?? Offset.zero, pressureMax:pressureMax ?? 1.0, pressureMin:pressureMin ?? 1.0, radiusMajor:radiusMajor ?? 0.0, radiusMax:radiusMax ?? 0.0, radiusMin:radiusMin ?? 0.0, radiusMinor:radiusMinor ?? 0.0, size:size ?? 0.0, tilt:tilt ?? 0.0, timeStamp:timeStamp ?? Duration.zero);
},
'package:flutter/src/gestures/events.dart@PointerCancelEvent@transformed': (m.Scope scope, PointerCancelEvent target)=>target.transformed,
'package:flutter/src/gestures/events.dart@@nthMouseButton': (m.Scope scope)=>nthMouseButton,
'package:flutter/src/gestures/events.dart@@nthStylusButton': (m.Scope scope)=>nthStylusButton,
'package:flutter/src/gestures/events.dart@@smallestButton': (m.Scope scope)=>smallestButton,
'package:flutter/src/gestures/events.dart@@isSingleButton': (m.Scope scope)=>isSingleButton,
'package:flutter/src/gestures/events.dart@@computeHitSlop': (m.Scope scope)=>computeHitSlop,
'package:flutter/src/gestures/events.dart@@computePanSlop': (m.Scope scope)=>computePanSlop,
'package:flutter/src/gestures/events.dart@@computeScaleSlop': (m.Scope scope)=>computeScaleSlop,

};
}