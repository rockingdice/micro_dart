import 'package:flutter/src/gestures/gesture_settings.dart';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/gesture_settings.dart@DeviceGestureSettings@#as': (m.Scope scope, target)=>()=>target as DeviceGestureSettings,
'package:flutter/src/gestures/gesture_settings.dart@DeviceGestureSettings@#is': (m.Scope scope, target)=>()=>target is DeviceGestureSettings,
'package:flutter/src/gestures/gesture_settings.dart@DeviceGestureSettings@touchSlop': (m.Scope scope, DeviceGestureSettings target)=>target.touchSlop,
'package:flutter/src/gestures/gesture_settings.dart@DeviceGestureSettings@panSlop': (m.Scope scope, DeviceGestureSettings target)=>target.panSlop,
'package:flutter/src/gestures/gesture_settings.dart@DeviceGestureSettings@hashCode': (m.Scope scope, DeviceGestureSettings target)=>target.hashCode,
'package:flutter/src/gestures/gesture_settings.dart@DeviceGestureSettings@': (m.Scope scope)=>({ touchSlop}){
return DeviceGestureSettings(touchSlop:touchSlop);
},
'package:flutter/src/gestures/gesture_settings.dart@DeviceGestureSettings@fromView': (m.Scope scope)=>DeviceGestureSettings.fromView,
'package:flutter/src/gestures/gesture_settings.dart@DeviceGestureSettings@==': (m.Scope scope, DeviceGestureSettings target)=>(other)=> target == other,
'package:flutter/src/gestures/gesture_settings.dart@DeviceGestureSettings@toString': (m.Scope scope, DeviceGestureSettings target)=>target.toString,

};
}