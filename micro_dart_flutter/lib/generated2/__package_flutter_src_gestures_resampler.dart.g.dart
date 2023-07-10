import 'package:flutter/src/gestures/resampler.dart';
import 'dart:collection';
import 'package:flutter/src/gestures/events.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/resampler.dart@PointerEventResampler@#as': (m.Scope scope, target)=>()=>target as PointerEventResampler,
'package:flutter/src/gestures/resampler.dart@PointerEventResampler@#is': (m.Scope scope, target)=>()=>target is PointerEventResampler,
'package:flutter/src/gestures/resampler.dart@PointerEventResampler@hasPendingEvents': (m.Scope scope, PointerEventResampler target)=>target.hasPendingEvents,
'package:flutter/src/gestures/resampler.dart@PointerEventResampler@isTracked': (m.Scope scope, PointerEventResampler target)=>target.isTracked,
'package:flutter/src/gestures/resampler.dart@PointerEventResampler@isDown': (m.Scope scope, PointerEventResampler target)=>target.isDown,
'package:flutter/src/gestures/resampler.dart@PointerEventResampler@': (m.Scope scope)=>(){
return PointerEventResampler();
},
'package:flutter/src/gestures/resampler.dart@PointerEventResampler@addEvent': (m.Scope scope, PointerEventResampler target)=>target.addEvent,
'package:flutter/src/gestures/resampler.dart@PointerEventResampler@sample': (m.Scope scope, PointerEventResampler target)=>( sampleTime,  nextSampleTime,  callback){
void callbackProxy( event) {
 engine.callFunctionPointer(scope, callback!,[event], {});
}

target.sample(sampleTime, nextSampleTime, callbackProxy);
},
'package:flutter/src/gestures/resampler.dart@PointerEventResampler@stop': (m.Scope scope, PointerEventResampler target)=>( callback){
void callbackProxy( event) {
 engine.callFunctionPointer(scope, callback!,[event], {});
}

target.stop(callbackProxy);
},

};
}