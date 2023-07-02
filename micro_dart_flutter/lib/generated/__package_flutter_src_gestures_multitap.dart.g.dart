import 'package:flutter/src/gestures/multitap.dart';
import 'dart:async';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/binding.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/pointer_router.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:flutter/src/gestures/tap.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as DoubleTapGestureRecognizer,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is DoubleTapGestureRecognizer,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@onDoubleTapDown': (m.Scope scope, DoubleTapGestureRecognizer target)=>target.onDoubleTapDown,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@onDoubleTapDown:set': (m.Scope scope, DoubleTapGestureRecognizer target)=>(other)=>target.onDoubleTapDown=other,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@onDoubleTap': (m.Scope scope, DoubleTapGestureRecognizer target)=>target.onDoubleTap,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@onDoubleTap:set': (m.Scope scope, DoubleTapGestureRecognizer target)=>(other)=>target.onDoubleTap=other,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@onDoubleTapCancel': (m.Scope scope, DoubleTapGestureRecognizer target)=>target.onDoubleTapCancel,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@onDoubleTapCancel:set': (m.Scope scope, DoubleTapGestureRecognizer target)=>(other)=>target.onDoubleTapCancel=other,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@debugDescription': (m.Scope scope, DoubleTapGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return DoubleTapGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@isPointerAllowed': (m.Scope scope, DoubleTapGestureRecognizer target)=>target.isPointerAllowed,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@addAllowedPointer': (m.Scope scope, DoubleTapGestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@acceptGesture': (m.Scope scope, DoubleTapGestureRecognizer target)=>target.acceptGesture,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@rejectGesture': (m.Scope scope, DoubleTapGestureRecognizer target)=>target.rejectGesture,
'package:flutter/src/gestures/multitap.dart@DoubleTapGestureRecognizer@dispose': (m.Scope scope, DoubleTapGestureRecognizer target)=>target.dispose,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as MultiTapGestureRecognizer,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is MultiTapGestureRecognizer,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@onTapDown': (m.Scope scope, MultiTapGestureRecognizer target)=>target.onTapDown,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@onTapDown:set': (m.Scope scope, MultiTapGestureRecognizer target)=>(other)=>target.onTapDown=other,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@onTapUp': (m.Scope scope, MultiTapGestureRecognizer target)=>target.onTapUp,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@onTapUp:set': (m.Scope scope, MultiTapGestureRecognizer target)=>(other)=>target.onTapUp=other,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@onTap': (m.Scope scope, MultiTapGestureRecognizer target)=>target.onTap,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@onTap:set': (m.Scope scope, MultiTapGestureRecognizer target)=>(other)=>target.onTap=other,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@onTapCancel': (m.Scope scope, MultiTapGestureRecognizer target)=>target.onTapCancel,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@onTapCancel:set': (m.Scope scope, MultiTapGestureRecognizer target)=>(other)=>target.onTapCancel=other,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@longTapDelay': (m.Scope scope, MultiTapGestureRecognizer target)=>target.longTapDelay,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@longTapDelay:set': (m.Scope scope, MultiTapGestureRecognizer target)=>(other)=>target.longTapDelay=other,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@onLongTapDown': (m.Scope scope, MultiTapGestureRecognizer target)=>target.onLongTapDown,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@onLongTapDown:set': (m.Scope scope, MultiTapGestureRecognizer target)=>(other)=>target.onLongTapDown=other,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@debugDescription': (m.Scope scope, MultiTapGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  longTapDelay,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return MultiTapGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, longTapDelay:longTapDelay ?? Duration.zero, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@addAllowedPointer': (m.Scope scope, MultiTapGestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@acceptGesture': (m.Scope scope, MultiTapGestureRecognizer target)=>target.acceptGesture,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@rejectGesture': (m.Scope scope, MultiTapGestureRecognizer target)=>target.rejectGesture,
'package:flutter/src/gestures/multitap.dart@MultiTapGestureRecognizer@dispose': (m.Scope scope, MultiTapGestureRecognizer target)=>target.dispose,
'package:flutter/src/gestures/multitap.dart@SerialTapDownDetails@#as': (m.Scope scope, target)=>()=>target as SerialTapDownDetails,
'package:flutter/src/gestures/multitap.dart@SerialTapDownDetails@#is': (m.Scope scope, target)=>()=>target is SerialTapDownDetails,
'package:flutter/src/gestures/multitap.dart@SerialTapDownDetails@globalPosition': (m.Scope scope, SerialTapDownDetails target)=>target.globalPosition,
'package:flutter/src/gestures/multitap.dart@SerialTapDownDetails@localPosition': (m.Scope scope, SerialTapDownDetails target)=>target.localPosition,
'package:flutter/src/gestures/multitap.dart@SerialTapDownDetails@kind': (m.Scope scope, SerialTapDownDetails target)=>target.kind,
'package:flutter/src/gestures/multitap.dart@SerialTapDownDetails@buttons': (m.Scope scope, SerialTapDownDetails target)=>target.buttons,
'package:flutter/src/gestures/multitap.dart@SerialTapDownDetails@count': (m.Scope scope, SerialTapDownDetails target)=>target.count,
'package:flutter/src/gestures/multitap.dart@SerialTapDownDetails@': (m.Scope scope)=>({ buttons,  count,  globalPosition,  kind,  localPosition}){
return SerialTapDownDetails(buttons:buttons ?? 0, count:count ?? 1, globalPosition:globalPosition ?? Offset.zero, kind:kind, localPosition:localPosition);
},
'package:flutter/src/gestures/multitap.dart@SerialTapCancelDetails@#as': (m.Scope scope, target)=>()=>target as SerialTapCancelDetails,
'package:flutter/src/gestures/multitap.dart@SerialTapCancelDetails@#is': (m.Scope scope, target)=>()=>target is SerialTapCancelDetails,
'package:flutter/src/gestures/multitap.dart@SerialTapCancelDetails@count': (m.Scope scope, SerialTapCancelDetails target)=>target.count,
'package:flutter/src/gestures/multitap.dart@SerialTapCancelDetails@': (m.Scope scope)=>({ count}){
return SerialTapCancelDetails(count:count ?? 1);
},
'package:flutter/src/gestures/multitap.dart@SerialTapUpDetails@#as': (m.Scope scope, target)=>()=>target as SerialTapUpDetails,
'package:flutter/src/gestures/multitap.dart@SerialTapUpDetails@#is': (m.Scope scope, target)=>()=>target is SerialTapUpDetails,
'package:flutter/src/gestures/multitap.dart@SerialTapUpDetails@globalPosition': (m.Scope scope, SerialTapUpDetails target)=>target.globalPosition,
'package:flutter/src/gestures/multitap.dart@SerialTapUpDetails@localPosition': (m.Scope scope, SerialTapUpDetails target)=>target.localPosition,
'package:flutter/src/gestures/multitap.dart@SerialTapUpDetails@kind': (m.Scope scope, SerialTapUpDetails target)=>target.kind,
'package:flutter/src/gestures/multitap.dart@SerialTapUpDetails@count': (m.Scope scope, SerialTapUpDetails target)=>target.count,
'package:flutter/src/gestures/multitap.dart@SerialTapUpDetails@': (m.Scope scope)=>({ count,  globalPosition,  kind,  localPosition}){
return SerialTapUpDetails(count:count ?? 1, globalPosition:globalPosition ?? Offset.zero, kind:kind, localPosition:localPosition);
},
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as SerialTapGestureRecognizer,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is SerialTapGestureRecognizer,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@onSerialTapDown': (m.Scope scope, SerialTapGestureRecognizer target)=>target.onSerialTapDown,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@onSerialTapDown:set': (m.Scope scope, SerialTapGestureRecognizer target)=>(other)=>target.onSerialTapDown=other,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@onSerialTapCancel': (m.Scope scope, SerialTapGestureRecognizer target)=>target.onSerialTapCancel,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@onSerialTapCancel:set': (m.Scope scope, SerialTapGestureRecognizer target)=>(other)=>target.onSerialTapCancel=other,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@onSerialTapUp': (m.Scope scope, SerialTapGestureRecognizer target)=>target.onSerialTapUp,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@onSerialTapUp:set': (m.Scope scope, SerialTapGestureRecognizer target)=>(other)=>target.onSerialTapUp=other,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@isTrackingPointer': (m.Scope scope, SerialTapGestureRecognizer target)=>target.isTrackingPointer,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@debugDescription': (m.Scope scope, SerialTapGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return SerialTapGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@isPointerAllowed': (m.Scope scope, SerialTapGestureRecognizer target)=>target.isPointerAllowed,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@addAllowedPointer': (m.Scope scope, SerialTapGestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@acceptGesture': (m.Scope scope, SerialTapGestureRecognizer target)=>target.acceptGesture,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@rejectGesture': (m.Scope scope, SerialTapGestureRecognizer target)=>target.rejectGesture,
'package:flutter/src/gestures/multitap.dart@SerialTapGestureRecognizer@dispose': (m.Scope scope, SerialTapGestureRecognizer target)=>target.dispose,

};
}