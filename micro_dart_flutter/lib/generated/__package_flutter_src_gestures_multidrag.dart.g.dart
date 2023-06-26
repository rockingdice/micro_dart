import 'package:flutter/src/gestures/multidrag.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/binding.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/drag.dart';
import 'package:flutter/src/gestures/drag_details.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/multidrag.dart@MultiDragPointerState@#as': (m.Scope scope, target)=>()=>target as MultiDragPointerState,
'package:flutter/src/gestures/multidrag.dart@MultiDragPointerState@#is': (m.Scope scope, target)=>()=>target is MultiDragPointerState,
'package:flutter/src/gestures/multidrag.dart@MultiDragPointerState@gestureSettings': (m.Scope scope, MultiDragPointerState target)=>target.gestureSettings,
'package:flutter/src/gestures/multidrag.dart@MultiDragPointerState@initialPosition': (m.Scope scope, MultiDragPointerState target)=>target.initialPosition,
'package:flutter/src/gestures/multidrag.dart@MultiDragPointerState@kind': (m.Scope scope, MultiDragPointerState target)=>target.kind,
'package:flutter/src/gestures/multidrag.dart@MultiDragPointerState@pendingDelta': (m.Scope scope, MultiDragPointerState target)=>target.pendingDelta,
'package:flutter/src/gestures/multidrag.dart@MultiDragPointerState@resolve': (m.Scope scope, MultiDragPointerState target)=>target.resolve,
'package:flutter/src/gestures/multidrag.dart@MultiDragPointerState@checkForResolutionAfterMove': (m.Scope scope, MultiDragPointerState target)=>target.checkForResolutionAfterMove,
'package:flutter/src/gestures/multidrag.dart@MultiDragPointerState@accepted': (m.Scope scope, MultiDragPointerState target)=>( starter){
Drag starterProxy( position) {
return  engine.callFunctionPointer(scope, starter!,[position], {});
}

target.accepted(starterProxy);
},
'package:flutter/src/gestures/multidrag.dart@MultiDragPointerState@rejected': (m.Scope scope, MultiDragPointerState target)=>target.rejected,
'package:flutter/src/gestures/multidrag.dart@MultiDragPointerState@dispose': (m.Scope scope, MultiDragPointerState target)=>target.dispose,
'package:flutter/src/gestures/multidrag.dart@MultiDragGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as MultiDragGestureRecognizer,
'package:flutter/src/gestures/multidrag.dart@MultiDragGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is MultiDragGestureRecognizer,
'package:flutter/src/gestures/multidrag.dart@MultiDragGestureRecognizer@onStart': (m.Scope scope, MultiDragGestureRecognizer target)=>target.onStart,
'package:flutter/src/gestures/multidrag.dart@MultiDragGestureRecognizer@onStart:set': (m.Scope scope, MultiDragGestureRecognizer target)=>(other)=>target.onStart=other,
'package:flutter/src/gestures/multidrag.dart@MultiDragGestureRecognizer@addAllowedPointer': (m.Scope scope, MultiDragGestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/gestures/multidrag.dart@MultiDragGestureRecognizer@createNewPointerState': (m.Scope scope, MultiDragGestureRecognizer target)=>target.createNewPointerState,
'package:flutter/src/gestures/multidrag.dart@MultiDragGestureRecognizer@acceptGesture': (m.Scope scope, MultiDragGestureRecognizer target)=>target.acceptGesture,
'package:flutter/src/gestures/multidrag.dart@MultiDragGestureRecognizer@rejectGesture': (m.Scope scope, MultiDragGestureRecognizer target)=>target.rejectGesture,
'package:flutter/src/gestures/multidrag.dart@MultiDragGestureRecognizer@dispose': (m.Scope scope, MultiDragGestureRecognizer target)=>target.dispose,
'package:flutter/src/gestures/multidrag.dart@ImmediateMultiDragGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as ImmediateMultiDragGestureRecognizer,
'package:flutter/src/gestures/multidrag.dart@ImmediateMultiDragGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is ImmediateMultiDragGestureRecognizer,
'package:flutter/src/gestures/multidrag.dart@ImmediateMultiDragGestureRecognizer@debugDescription': (m.Scope scope, ImmediateMultiDragGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/multidrag.dart@ImmediateMultiDragGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return ImmediateMultiDragGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/multidrag.dart@ImmediateMultiDragGestureRecognizer@createNewPointerState': (m.Scope scope, ImmediateMultiDragGestureRecognizer target)=>target.createNewPointerState,
'package:flutter/src/gestures/multidrag.dart@HorizontalMultiDragGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as HorizontalMultiDragGestureRecognizer,
'package:flutter/src/gestures/multidrag.dart@HorizontalMultiDragGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is HorizontalMultiDragGestureRecognizer,
'package:flutter/src/gestures/multidrag.dart@HorizontalMultiDragGestureRecognizer@debugDescription': (m.Scope scope, HorizontalMultiDragGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/multidrag.dart@HorizontalMultiDragGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return HorizontalMultiDragGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/multidrag.dart@HorizontalMultiDragGestureRecognizer@createNewPointerState': (m.Scope scope, HorizontalMultiDragGestureRecognizer target)=>target.createNewPointerState,
'package:flutter/src/gestures/multidrag.dart@VerticalMultiDragGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as VerticalMultiDragGestureRecognizer,
'package:flutter/src/gestures/multidrag.dart@VerticalMultiDragGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is VerticalMultiDragGestureRecognizer,
'package:flutter/src/gestures/multidrag.dart@VerticalMultiDragGestureRecognizer@debugDescription': (m.Scope scope, VerticalMultiDragGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/multidrag.dart@VerticalMultiDragGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return VerticalMultiDragGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/multidrag.dart@VerticalMultiDragGestureRecognizer@createNewPointerState': (m.Scope scope, VerticalMultiDragGestureRecognizer target)=>target.createNewPointerState,
'package:flutter/src/gestures/multidrag.dart@DelayedMultiDragGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as DelayedMultiDragGestureRecognizer,
'package:flutter/src/gestures/multidrag.dart@DelayedMultiDragGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is DelayedMultiDragGestureRecognizer,
'package:flutter/src/gestures/multidrag.dart@DelayedMultiDragGestureRecognizer@delay': (m.Scope scope, DelayedMultiDragGestureRecognizer target)=>target.delay,
'package:flutter/src/gestures/multidrag.dart@DelayedMultiDragGestureRecognizer@debugDescription': (m.Scope scope, DelayedMultiDragGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/multidrag.dart@DelayedMultiDragGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  delay,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return DelayedMultiDragGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, delay:delay ?? kLongPressTimeout, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/multidrag.dart@DelayedMultiDragGestureRecognizer@createNewPointerState': (m.Scope scope, DelayedMultiDragGestureRecognizer target)=>target.createNewPointerState,

};
}