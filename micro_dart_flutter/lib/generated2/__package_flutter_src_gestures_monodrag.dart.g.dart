import 'package:flutter/src/gestures/monodrag.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/drag_details.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as DragGestureRecognizer,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is DragGestureRecognizer,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@dragStartBehavior': (m.Scope scope, DragGestureRecognizer target)=>target.dragStartBehavior,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@dragStartBehavior:set': (m.Scope scope, DragGestureRecognizer target)=>(other)=>target.dragStartBehavior=other,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@onDown': (m.Scope scope, DragGestureRecognizer target)=>target.onDown,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@onDown:set': (m.Scope scope, DragGestureRecognizer target)=>(other)=>target.onDown=other,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@onStart': (m.Scope scope, DragGestureRecognizer target)=>target.onStart,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@onStart:set': (m.Scope scope, DragGestureRecognizer target)=>(other)=>target.onStart=other,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@onUpdate': (m.Scope scope, DragGestureRecognizer target)=>target.onUpdate,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@onUpdate:set': (m.Scope scope, DragGestureRecognizer target)=>(other)=>target.onUpdate=other,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@onEnd': (m.Scope scope, DragGestureRecognizer target)=>target.onEnd,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@onEnd:set': (m.Scope scope, DragGestureRecognizer target)=>(other)=>target.onEnd=other,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@onCancel': (m.Scope scope, DragGestureRecognizer target)=>target.onCancel,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@onCancel:set': (m.Scope scope, DragGestureRecognizer target)=>(other)=>target.onCancel=other,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@minFlingDistance': (m.Scope scope, DragGestureRecognizer target)=>target.minFlingDistance,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@minFlingDistance:set': (m.Scope scope, DragGestureRecognizer target)=>(other)=>target.minFlingDistance=other,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@minFlingVelocity': (m.Scope scope, DragGestureRecognizer target)=>target.minFlingVelocity,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@minFlingVelocity:set': (m.Scope scope, DragGestureRecognizer target)=>(other)=>target.minFlingVelocity=other,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@maxFlingVelocity': (m.Scope scope, DragGestureRecognizer target)=>target.maxFlingVelocity,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@maxFlingVelocity:set': (m.Scope scope, DragGestureRecognizer target)=>(other)=>target.maxFlingVelocity=other,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@velocityTrackerBuilder': (m.Scope scope, DragGestureRecognizer target)=>target.velocityTrackerBuilder,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@velocityTrackerBuilder:set': (m.Scope scope, DragGestureRecognizer target)=>(other)=>target.velocityTrackerBuilder=other,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@debugLastPendingEventTimestamp': (m.Scope scope, DragGestureRecognizer target)=>target.debugLastPendingEventTimestamp,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@isFlingGesture': (m.Scope scope, DragGestureRecognizer target)=>target.isFlingGesture,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@isPointerAllowed': (m.Scope scope, DragGestureRecognizer target)=>target.isPointerAllowed,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@addAllowedPointer': (m.Scope scope, DragGestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@addAllowedPointerPanZoom': (m.Scope scope, DragGestureRecognizer target)=>target.addAllowedPointerPanZoom,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@handleEvent': (m.Scope scope, DragGestureRecognizer target)=>target.handleEvent,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@acceptGesture': (m.Scope scope, DragGestureRecognizer target)=>target.acceptGesture,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@rejectGesture': (m.Scope scope, DragGestureRecognizer target)=>target.rejectGesture,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@didStopTrackingLastPointer': (m.Scope scope, DragGestureRecognizer target)=>target.didStopTrackingLastPointer,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@dispose': (m.Scope scope, DragGestureRecognizer target)=>target.dispose,
'package:flutter/src/gestures/monodrag.dart@DragGestureRecognizer@debugFillProperties': (m.Scope scope, DragGestureRecognizer target)=>target.debugFillProperties,
'package:flutter/src/gestures/monodrag.dart@VerticalDragGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as VerticalDragGestureRecognizer,
'package:flutter/src/gestures/monodrag.dart@VerticalDragGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is VerticalDragGestureRecognizer,
'package:flutter/src/gestures/monodrag.dart@VerticalDragGestureRecognizer@debugDescription': (m.Scope scope, VerticalDragGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/monodrag.dart@VerticalDragGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return VerticalDragGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/monodrag.dart@VerticalDragGestureRecognizer@isFlingGesture': (m.Scope scope, VerticalDragGestureRecognizer target)=>target.isFlingGesture,
'package:flutter/src/gestures/monodrag.dart@HorizontalDragGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as HorizontalDragGestureRecognizer,
'package:flutter/src/gestures/monodrag.dart@HorizontalDragGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is HorizontalDragGestureRecognizer,
'package:flutter/src/gestures/monodrag.dart@HorizontalDragGestureRecognizer@debugDescription': (m.Scope scope, HorizontalDragGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/monodrag.dart@HorizontalDragGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return HorizontalDragGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/monodrag.dart@HorizontalDragGestureRecognizer@isFlingGesture': (m.Scope scope, HorizontalDragGestureRecognizer target)=>target.isFlingGesture,
'package:flutter/src/gestures/monodrag.dart@PanGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as PanGestureRecognizer,
'package:flutter/src/gestures/monodrag.dart@PanGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is PanGestureRecognizer,
'package:flutter/src/gestures/monodrag.dart@PanGestureRecognizer@debugDescription': (m.Scope scope, PanGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/monodrag.dart@PanGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return PanGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/monodrag.dart@PanGestureRecognizer@isFlingGesture': (m.Scope scope, PanGestureRecognizer target)=>target.isFlingGesture,

};
}