import 'package:flutter/src/gestures/scale.dart';
import 'dart:math';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/scale.dart@@kDefaultMouseScrollToScaleFactor': (m.Scope scope)=>kDefaultMouseScrollToScaleFactor,
'package:flutter/src/gestures/scale.dart@@kDefaultTrackpadScrollToScaleFactor': (m.Scope scope)=>kDefaultTrackpadScrollToScaleFactor,
'package:flutter/src/gestures/scale.dart@ScaleStartDetails@#as': (m.Scope scope, target)=>()=>target as ScaleStartDetails,
'package:flutter/src/gestures/scale.dart@ScaleStartDetails@#is': (m.Scope scope, target)=>()=>target is ScaleStartDetails,
'package:flutter/src/gestures/scale.dart@ScaleStartDetails@focalPoint': (m.Scope scope, ScaleStartDetails target)=>target.focalPoint,
'package:flutter/src/gestures/scale.dart@ScaleStartDetails@localFocalPoint': (m.Scope scope, ScaleStartDetails target)=>target.localFocalPoint,
'package:flutter/src/gestures/scale.dart@ScaleStartDetails@pointerCount': (m.Scope scope, ScaleStartDetails target)=>target.pointerCount,
'package:flutter/src/gestures/scale.dart@ScaleStartDetails@': (m.Scope scope)=>({ focalPoint,  localFocalPoint,  pointerCount}){
return ScaleStartDetails(focalPoint:focalPoint ?? Offset.zero, localFocalPoint:localFocalPoint, pointerCount:pointerCount ?? 0);
},
'package:flutter/src/gestures/scale.dart@ScaleStartDetails@toString': (m.Scope scope, ScaleStartDetails target)=>target.toString,
'package:flutter/src/gestures/scale.dart@ScaleUpdateDetails@#as': (m.Scope scope, target)=>()=>target as ScaleUpdateDetails,
'package:flutter/src/gestures/scale.dart@ScaleUpdateDetails@#is': (m.Scope scope, target)=>()=>target is ScaleUpdateDetails,
'package:flutter/src/gestures/scale.dart@ScaleUpdateDetails@focalPointDelta': (m.Scope scope, ScaleUpdateDetails target)=>target.focalPointDelta,
'package:flutter/src/gestures/scale.dart@ScaleUpdateDetails@focalPoint': (m.Scope scope, ScaleUpdateDetails target)=>target.focalPoint,
'package:flutter/src/gestures/scale.dart@ScaleUpdateDetails@localFocalPoint': (m.Scope scope, ScaleUpdateDetails target)=>target.localFocalPoint,
'package:flutter/src/gestures/scale.dart@ScaleUpdateDetails@scale': (m.Scope scope, ScaleUpdateDetails target)=>target.scale,
'package:flutter/src/gestures/scale.dart@ScaleUpdateDetails@horizontalScale': (m.Scope scope, ScaleUpdateDetails target)=>target.horizontalScale,
'package:flutter/src/gestures/scale.dart@ScaleUpdateDetails@verticalScale': (m.Scope scope, ScaleUpdateDetails target)=>target.verticalScale,
'package:flutter/src/gestures/scale.dart@ScaleUpdateDetails@rotation': (m.Scope scope, ScaleUpdateDetails target)=>target.rotation,
'package:flutter/src/gestures/scale.dart@ScaleUpdateDetails@pointerCount': (m.Scope scope, ScaleUpdateDetails target)=>target.pointerCount,
'package:flutter/src/gestures/scale.dart@ScaleUpdateDetails@': (m.Scope scope)=>({ focalPoint,  focalPointDelta,  horizontalScale,  localFocalPoint,  pointerCount,  rotation,  scale,  verticalScale}){
return ScaleUpdateDetails(focalPoint:focalPoint ?? Offset.zero, focalPointDelta:focalPointDelta ?? Offset.zero, horizontalScale:horizontalScale ?? 1.0, localFocalPoint:localFocalPoint, pointerCount:pointerCount ?? 0, rotation:rotation ?? 0.0, scale:scale ?? 1.0, verticalScale:verticalScale ?? 1.0);
},
'package:flutter/src/gestures/scale.dart@ScaleUpdateDetails@toString': (m.Scope scope, ScaleUpdateDetails target)=>target.toString,
'package:flutter/src/gestures/scale.dart@ScaleEndDetails@#as': (m.Scope scope, target)=>()=>target as ScaleEndDetails,
'package:flutter/src/gestures/scale.dart@ScaleEndDetails@#is': (m.Scope scope, target)=>()=>target is ScaleEndDetails,
'package:flutter/src/gestures/scale.dart@ScaleEndDetails@velocity': (m.Scope scope, ScaleEndDetails target)=>target.velocity,
'package:flutter/src/gestures/scale.dart@ScaleEndDetails@scaleVelocity': (m.Scope scope, ScaleEndDetails target)=>target.scaleVelocity,
'package:flutter/src/gestures/scale.dart@ScaleEndDetails@pointerCount': (m.Scope scope, ScaleEndDetails target)=>target.pointerCount,
'package:flutter/src/gestures/scale.dart@ScaleEndDetails@': (m.Scope scope)=>({ pointerCount,  scaleVelocity,  velocity}){
return ScaleEndDetails(pointerCount:pointerCount ?? 0, scaleVelocity:scaleVelocity ?? 0, velocity:velocity ?? Velocity.zero);
},
'package:flutter/src/gestures/scale.dart@ScaleEndDetails@toString': (m.Scope scope, ScaleEndDetails target)=>target.toString,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as ScaleGestureRecognizer,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is ScaleGestureRecognizer,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@dragStartBehavior': (m.Scope scope, ScaleGestureRecognizer target)=>target.dragStartBehavior,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@dragStartBehavior:set': (m.Scope scope, ScaleGestureRecognizer target)=>(other)=>target.dragStartBehavior=other,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@onStart': (m.Scope scope, ScaleGestureRecognizer target)=>target.onStart,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@onStart:set': (m.Scope scope, ScaleGestureRecognizer target)=>(other)=>target.onStart=other,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@onUpdate': (m.Scope scope, ScaleGestureRecognizer target)=>target.onUpdate,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@onUpdate:set': (m.Scope scope, ScaleGestureRecognizer target)=>(other)=>target.onUpdate=other,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@onEnd': (m.Scope scope, ScaleGestureRecognizer target)=>target.onEnd,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@onEnd:set': (m.Scope scope, ScaleGestureRecognizer target)=>(other)=>target.onEnd=other,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@trackpadScrollCausesScale': (m.Scope scope, ScaleGestureRecognizer target)=>target.trackpadScrollCausesScale,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@trackpadScrollCausesScale:set': (m.Scope scope, ScaleGestureRecognizer target)=>(other)=>target.trackpadScrollCausesScale=other,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@trackpadScrollToScaleFactor': (m.Scope scope, ScaleGestureRecognizer target)=>target.trackpadScrollToScaleFactor,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@trackpadScrollToScaleFactor:set': (m.Scope scope, ScaleGestureRecognizer target)=>(other)=>target.trackpadScrollToScaleFactor=other,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@debugDescription': (m.Scope scope, ScaleGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  dragStartBehavior,  supportedDevices,  trackpadScrollCausesScale,  trackpadScrollToScaleFactor}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return ScaleGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.down, supportedDevices:supportedDevices, trackpadScrollCausesScale:trackpadScrollCausesScale ?? false, trackpadScrollToScaleFactor:trackpadScrollToScaleFactor ?? kDefaultTrackpadScrollToScaleFactor);
},
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@addAllowedPointer': (m.Scope scope, ScaleGestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@isPointerPanZoomAllowed': (m.Scope scope, ScaleGestureRecognizer target)=>target.isPointerPanZoomAllowed,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@addAllowedPointerPanZoom': (m.Scope scope, ScaleGestureRecognizer target)=>target.addAllowedPointerPanZoom,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@handleEvent': (m.Scope scope, ScaleGestureRecognizer target)=>target.handleEvent,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@acceptGesture': (m.Scope scope, ScaleGestureRecognizer target)=>target.acceptGesture,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@rejectGesture': (m.Scope scope, ScaleGestureRecognizer target)=>target.rejectGesture,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@didStopTrackingLastPointer': (m.Scope scope, ScaleGestureRecognizer target)=>target.didStopTrackingLastPointer,
'package:flutter/src/gestures/scale.dart@ScaleGestureRecognizer@dispose': (m.Scope scope, ScaleGestureRecognizer target)=>target.dispose,

};
}