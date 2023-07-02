import 'package:flutter/src/gestures/recognizer.dart';
import 'dart:async';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/binding.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/debug.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/pointer_router.dart';
import 'package:flutter/src/gestures/team.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@#as': (m.Scope scope, target)=>()=>target as GestureRecognizer,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@#is': (m.Scope scope, target)=>()=>target is GestureRecognizer,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@debugOwner': (m.Scope scope, GestureRecognizer target)=>target.debugOwner,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@gestureSettings': (m.Scope scope, GestureRecognizer target)=>target.gestureSettings,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@gestureSettings:set': (m.Scope scope, GestureRecognizer target)=>(other)=>target.gestureSettings=other,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@supportedDevices': (m.Scope scope, GestureRecognizer target)=>target.supportedDevices,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@supportedDevices:set': (m.Scope scope, GestureRecognizer target)=>(other)=>target.supportedDevices=other,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@debugDescription': (m.Scope scope, GestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@addPointerPanZoom': (m.Scope scope, GestureRecognizer target)=>target.addPointerPanZoom,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@addAllowedPointerPanZoom': (m.Scope scope, GestureRecognizer target)=>target.addAllowedPointerPanZoom,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@addPointer': (m.Scope scope, GestureRecognizer target)=>target.addPointer,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@addAllowedPointer': (m.Scope scope, GestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@handleNonAllowedPointer': (m.Scope scope, GestureRecognizer target)=>target.handleNonAllowedPointer,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@isPointerAllowed': (m.Scope scope, GestureRecognizer target)=>target.isPointerAllowed,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@handleNonAllowedPointerPanZoom': (m.Scope scope, GestureRecognizer target)=>target.handleNonAllowedPointerPanZoom,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@isPointerPanZoomAllowed': (m.Scope scope, GestureRecognizer target)=>target.isPointerPanZoomAllowed,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@getKindForPointer': (m.Scope scope, GestureRecognizer target)=>target.getKindForPointer,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@dispose': (m.Scope scope, GestureRecognizer target)=>target.dispose,
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@invokeCallback': (m.Scope scope, GestureRecognizer target)=>( name,  callback, { debugReport}){
T callbackProxy<T>() {
return  engine.callFunctionPointer(scope, callback!,[], {});
}

String debugReportProxy() {
return  engine.callFunctionPointer(scope, debugReport!,[], {});
}

return target.invokeCallback(name, callbackProxy, debugReport:debugReport == null ? null :debugReportProxy);
},
'package:flutter/src/gestures/recognizer.dart@GestureRecognizer@debugFillProperties': (m.Scope scope, GestureRecognizer target)=>target.debugFillProperties,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as OneSequenceGestureRecognizer,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is OneSequenceGestureRecognizer,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@team': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.team,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@team:set': (m.Scope scope, OneSequenceGestureRecognizer target)=>(other)=>target.team=other,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@addAllowedPointer': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@handleNonAllowedPointer': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.handleNonAllowedPointer,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@handleEvent': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.handleEvent,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@acceptGesture': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.acceptGesture,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@rejectGesture': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.rejectGesture,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@didStopTrackingLastPointer': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.didStopTrackingLastPointer,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@resolve': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.resolve,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@resolvePointer': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.resolvePointer,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@dispose': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.dispose,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@startTrackingPointer': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.startTrackingPointer,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@stopTrackingPointer': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.stopTrackingPointer,
'package:flutter/src/gestures/recognizer.dart@OneSequenceGestureRecognizer@stopTrackingIfPointerNoLongerDown': (m.Scope scope, OneSequenceGestureRecognizer target)=>target.stopTrackingIfPointerNoLongerDown,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as PrimaryPointerGestureRecognizer,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is PrimaryPointerGestureRecognizer,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@deadline': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.deadline,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@preAcceptSlopTolerance': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.preAcceptSlopTolerance,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@postAcceptSlopTolerance': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.postAcceptSlopTolerance,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@state': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.state,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@primaryPointer': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.primaryPointer,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@initialPosition': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.initialPosition,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@addAllowedPointer': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@handleNonAllowedPointer': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.handleNonAllowedPointer,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@handleEvent': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.handleEvent,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@handlePrimaryPointer': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.handlePrimaryPointer,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@didExceedDeadline': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.didExceedDeadline,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@didExceedDeadlineWithEvent': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.didExceedDeadlineWithEvent,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@acceptGesture': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.acceptGesture,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@rejectGesture': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.rejectGesture,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@didStopTrackingLastPointer': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.didStopTrackingLastPointer,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@dispose': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.dispose,
'package:flutter/src/gestures/recognizer.dart@PrimaryPointerGestureRecognizer@debugFillProperties': (m.Scope scope, PrimaryPointerGestureRecognizer target)=>target.debugFillProperties,
'package:flutter/src/gestures/recognizer.dart@OffsetPair@#as': (m.Scope scope, target)=>()=>target as OffsetPair,
'package:flutter/src/gestures/recognizer.dart@OffsetPair@#is': (m.Scope scope, target)=>()=>target is OffsetPair,
'package:flutter/src/gestures/recognizer.dart@OffsetPair@zero': (m.Scope scope)=>OffsetPair.zero,
'package:flutter/src/gestures/recognizer.dart@OffsetPair@local': (m.Scope scope, OffsetPair target)=>target.local,
'package:flutter/src/gestures/recognizer.dart@OffsetPair@global': (m.Scope scope, OffsetPair target)=>target.global,
'package:flutter/src/gestures/recognizer.dart@OffsetPair@': (m.Scope scope)=>({ global,  local}){
return OffsetPair(global:global, local:local);
},
'package:flutter/src/gestures/recognizer.dart@OffsetPair@fromEventPosition': (m.Scope scope)=>OffsetPair.fromEventPosition,
'package:flutter/src/gestures/recognizer.dart@OffsetPair@fromEventDelta': (m.Scope scope)=>OffsetPair.fromEventDelta,
'package:flutter/src/gestures/recognizer.dart@OffsetPair@+': (m.Scope scope, OffsetPair target)=>(other)=> target + other,
'package:flutter/src/gestures/recognizer.dart@OffsetPair@-': (m.Scope scope, OffsetPair target)=>(other)=> target - other,
'package:flutter/src/gestures/recognizer.dart@OffsetPair@toString': (m.Scope scope, OffsetPair target)=>target.toString,

};
}