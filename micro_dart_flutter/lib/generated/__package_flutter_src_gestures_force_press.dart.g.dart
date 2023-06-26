import 'package:flutter/src/gestures/force_press.dart';
import 'package:flutter/foundation.dart' show clampDouble;
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/force_press.dart@ForcePressDetails@#as': (m.Scope scope, target)=>()=>target as ForcePressDetails,
'package:flutter/src/gestures/force_press.dart@ForcePressDetails@#is': (m.Scope scope, target)=>()=>target is ForcePressDetails,
'package:flutter/src/gestures/force_press.dart@ForcePressDetails@globalPosition': (m.Scope scope, ForcePressDetails target)=>target.globalPosition,
'package:flutter/src/gestures/force_press.dart@ForcePressDetails@localPosition': (m.Scope scope, ForcePressDetails target)=>target.localPosition,
'package:flutter/src/gestures/force_press.dart@ForcePressDetails@pressure': (m.Scope scope, ForcePressDetails target)=>target.pressure,
'package:flutter/src/gestures/force_press.dart@ForcePressDetails@': (m.Scope scope)=>ForcePressDetails,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as ForcePressGestureRecognizer,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is ForcePressGestureRecognizer,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@onStart': (m.Scope scope, ForcePressGestureRecognizer target)=>target.onStart,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@onStart:set': (m.Scope scope, ForcePressGestureRecognizer target)=>(other)=>target.onStart=other,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@onUpdate': (m.Scope scope, ForcePressGestureRecognizer target)=>target.onUpdate,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@onUpdate:set': (m.Scope scope, ForcePressGestureRecognizer target)=>(other)=>target.onUpdate=other,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@onPeak': (m.Scope scope, ForcePressGestureRecognizer target)=>target.onPeak,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@onPeak:set': (m.Scope scope, ForcePressGestureRecognizer target)=>(other)=>target.onPeak=other,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@onEnd': (m.Scope scope, ForcePressGestureRecognizer target)=>target.onEnd,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@onEnd:set': (m.Scope scope, ForcePressGestureRecognizer target)=>(other)=>target.onEnd=other,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@startPressure': (m.Scope scope, ForcePressGestureRecognizer target)=>target.startPressure,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@peakPressure': (m.Scope scope, ForcePressGestureRecognizer target)=>target.peakPressure,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@interpolation': (m.Scope scope, ForcePressGestureRecognizer target)=>target.interpolation,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@debugDescription': (m.Scope scope, ForcePressGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  interpolation,  peakPressure,  startPressure,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

double interpolationProxy( pressureMin,  pressureMax,  pressure) {
return  engine.callFunctionPointer(scope, interpolation!,[pressureMin, pressureMax, pressure], {});
}

return ForcePressGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, interpolation:interpolation == null ? (double min, double max, double t) {assert(min <= max);double value = (t - min) / (max - min);if (!value.isNaN) {value = clampDouble(value, 0.0, 1.0);}return value;} :interpolationProxy, peakPressure:peakPressure ?? 0.85, startPressure:startPressure ?? 0.4, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@addAllowedPointer': (m.Scope scope, ForcePressGestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@handleEvent': (m.Scope scope, ForcePressGestureRecognizer target)=>target.handleEvent,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@acceptGesture': (m.Scope scope, ForcePressGestureRecognizer target)=>target.acceptGesture,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@didStopTrackingLastPointer': (m.Scope scope, ForcePressGestureRecognizer target)=>target.didStopTrackingLastPointer,
'package:flutter/src/gestures/force_press.dart@ForcePressGestureRecognizer@rejectGesture': (m.Scope scope, ForcePressGestureRecognizer target)=>target.rejectGesture,

};
}