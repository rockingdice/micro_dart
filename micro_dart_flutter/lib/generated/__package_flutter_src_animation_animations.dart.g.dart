import 'package:flutter/src/animation/animations.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/animation/listener_helpers.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/animation/animations.dart@@kAlwaysCompleteAnimation': (m.Scope scope)=>kAlwaysCompleteAnimation,
'package:flutter/src/animation/animations.dart@@kAlwaysDismissedAnimation': (m.Scope scope)=>kAlwaysDismissedAnimation,
'package:flutter/src/animation/animations.dart@AlwaysStoppedAnimation@#as': (m.Scope scope, target)=>()=>target as AlwaysStoppedAnimation,
'package:flutter/src/animation/animations.dart@AlwaysStoppedAnimation@#is': (m.Scope scope, target)=>()=>target is AlwaysStoppedAnimation,
'package:flutter/src/animation/animations.dart@AlwaysStoppedAnimation@value': (m.Scope scope, AlwaysStoppedAnimation target)=>target.value,
'package:flutter/src/animation/animations.dart@AlwaysStoppedAnimation@status': (m.Scope scope, AlwaysStoppedAnimation target)=>target.status,
'package:flutter/src/animation/animations.dart@AlwaysStoppedAnimation@': (m.Scope scope)=>AlwaysStoppedAnimation,
'package:flutter/src/animation/animations.dart@AlwaysStoppedAnimation@addListener': (m.Scope scope, AlwaysStoppedAnimation target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/animation/animations.dart@AlwaysStoppedAnimation@removeListener': (m.Scope scope, AlwaysStoppedAnimation target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/animation/animations.dart@AlwaysStoppedAnimation@addStatusListener': (m.Scope scope, AlwaysStoppedAnimation target)=>( listener){
void listenerProxy( status) {
 engine.callFunctionPointer(scope, listener!,[status], {});
}

target.addStatusListener(listenerProxy);
},
'package:flutter/src/animation/animations.dart@AlwaysStoppedAnimation@removeStatusListener': (m.Scope scope, AlwaysStoppedAnimation target)=>( listener){
void listenerProxy( status) {
 engine.callFunctionPointer(scope, listener!,[status], {});
}

target.removeStatusListener(listenerProxy);
},
'package:flutter/src/animation/animations.dart@AlwaysStoppedAnimation@toStringDetails': (m.Scope scope, AlwaysStoppedAnimation target)=>target.toStringDetails,
'package:flutter/src/animation/animations.dart@ProxyAnimation@#as': (m.Scope scope, target)=>()=>target as ProxyAnimation,
'package:flutter/src/animation/animations.dart@ProxyAnimation@#is': (m.Scope scope, target)=>()=>target is ProxyAnimation,
'package:flutter/src/animation/animations.dart@ProxyAnimation@parent': (m.Scope scope, ProxyAnimation target)=>target.parent,
'package:flutter/src/animation/animations.dart@ProxyAnimation@parent:set': (m.Scope scope, ProxyAnimation target)=>(other)=>target.parent=other,
'package:flutter/src/animation/animations.dart@ProxyAnimation@status': (m.Scope scope, ProxyAnimation target)=>target.status,
'package:flutter/src/animation/animations.dart@ProxyAnimation@value': (m.Scope scope, ProxyAnimation target)=>target.value,
'package:flutter/src/animation/animations.dart@ProxyAnimation@': (m.Scope scope)=>([Animation<double>? animation]){
if(animation == null){
return ProxyAnimation();
}
return ProxyAnimation(animation!);
},
'package:flutter/src/animation/animations.dart@ProxyAnimation@didStartListening': (m.Scope scope, ProxyAnimation target)=>target.didStartListening,
'package:flutter/src/animation/animations.dart@ProxyAnimation@didStopListening': (m.Scope scope, ProxyAnimation target)=>target.didStopListening,
'package:flutter/src/animation/animations.dart@ProxyAnimation@toString': (m.Scope scope, ProxyAnimation target)=>target.toString,
'package:flutter/src/animation/animations.dart@ReverseAnimation@#as': (m.Scope scope, target)=>()=>target as ReverseAnimation,
'package:flutter/src/animation/animations.dart@ReverseAnimation@#is': (m.Scope scope, target)=>()=>target is ReverseAnimation,
'package:flutter/src/animation/animations.dart@ReverseAnimation@parent': (m.Scope scope, ReverseAnimation target)=>target.parent,
'package:flutter/src/animation/animations.dart@ReverseAnimation@status': (m.Scope scope, ReverseAnimation target)=>target.status,
'package:flutter/src/animation/animations.dart@ReverseAnimation@value': (m.Scope scope, ReverseAnimation target)=>target.value,
'package:flutter/src/animation/animations.dart@ReverseAnimation@': (m.Scope scope)=>ReverseAnimation,
'package:flutter/src/animation/animations.dart@ReverseAnimation@addListener': (m.Scope scope, ReverseAnimation target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/animation/animations.dart@ReverseAnimation@removeListener': (m.Scope scope, ReverseAnimation target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/animation/animations.dart@ReverseAnimation@didStartListening': (m.Scope scope, ReverseAnimation target)=>target.didStartListening,
'package:flutter/src/animation/animations.dart@ReverseAnimation@didStopListening': (m.Scope scope, ReverseAnimation target)=>target.didStopListening,
'package:flutter/src/animation/animations.dart@ReverseAnimation@toString': (m.Scope scope, ReverseAnimation target)=>target.toString,
'package:flutter/src/animation/animations.dart@CurvedAnimation@#as': (m.Scope scope, target)=>()=>target as CurvedAnimation,
'package:flutter/src/animation/animations.dart@CurvedAnimation@#is': (m.Scope scope, target)=>()=>target is CurvedAnimation,
'package:flutter/src/animation/animations.dart@CurvedAnimation@parent': (m.Scope scope, CurvedAnimation target)=>target.parent,
'package:flutter/src/animation/animations.dart@CurvedAnimation@curve': (m.Scope scope, CurvedAnimation target)=>target.curve,
'package:flutter/src/animation/animations.dart@CurvedAnimation@curve:set': (m.Scope scope, CurvedAnimation target)=>(other)=>target.curve=other,
'package:flutter/src/animation/animations.dart@CurvedAnimation@reverseCurve': (m.Scope scope, CurvedAnimation target)=>target.reverseCurve,
'package:flutter/src/animation/animations.dart@CurvedAnimation@reverseCurve:set': (m.Scope scope, CurvedAnimation target)=>(other)=>target.reverseCurve=other,
'package:flutter/src/animation/animations.dart@CurvedAnimation@isDisposed': (m.Scope scope, CurvedAnimation target)=>target.isDisposed,
'package:flutter/src/animation/animations.dart@CurvedAnimation@isDisposed:set': (m.Scope scope, CurvedAnimation target)=>(other)=>target.isDisposed=other,
'package:flutter/src/animation/animations.dart@CurvedAnimation@value': (m.Scope scope, CurvedAnimation target)=>target.value,
'package:flutter/src/animation/animations.dart@CurvedAnimation@': (m.Scope scope)=>CurvedAnimation,
'package:flutter/src/animation/animations.dart@CurvedAnimation@dispose': (m.Scope scope, CurvedAnimation target)=>target.dispose,
'package:flutter/src/animation/animations.dart@CurvedAnimation@toString': (m.Scope scope, CurvedAnimation target)=>target.toString,
'package:flutter/src/animation/animations.dart@TrainHoppingAnimation@#as': (m.Scope scope, target)=>()=>target as TrainHoppingAnimation,
'package:flutter/src/animation/animations.dart@TrainHoppingAnimation@#is': (m.Scope scope, target)=>()=>target is TrainHoppingAnimation,
'package:flutter/src/animation/animations.dart@TrainHoppingAnimation@onSwitchedTrain': (m.Scope scope, TrainHoppingAnimation target)=>target.onSwitchedTrain,
'package:flutter/src/animation/animations.dart@TrainHoppingAnimation@onSwitchedTrain:set': (m.Scope scope, TrainHoppingAnimation target)=>(other)=>target.onSwitchedTrain=other,
'package:flutter/src/animation/animations.dart@TrainHoppingAnimation@currentTrain': (m.Scope scope, TrainHoppingAnimation target)=>target.currentTrain,
'package:flutter/src/animation/animations.dart@TrainHoppingAnimation@status': (m.Scope scope, TrainHoppingAnimation target)=>target.status,
'package:flutter/src/animation/animations.dart@TrainHoppingAnimation@value': (m.Scope scope, TrainHoppingAnimation target)=>target.value,
'package:flutter/src/animation/animations.dart@TrainHoppingAnimation@': (m.Scope scope)=>( _currentTrain,  _nextTrain, { onSwitchedTrain}){
void onSwitchedTrainProxy() {
 engine.callFunctionPointer(scope, onSwitchedTrain!,[], {});
}

return TrainHoppingAnimation(_currentTrain, _nextTrain, onSwitchedTrain:onSwitchedTrain == null ? null :onSwitchedTrainProxy);
},
'package:flutter/src/animation/animations.dart@TrainHoppingAnimation@dispose': (m.Scope scope, TrainHoppingAnimation target)=>target.dispose,
'package:flutter/src/animation/animations.dart@TrainHoppingAnimation@toString': (m.Scope scope, TrainHoppingAnimation target)=>target.toString,
'package:flutter/src/animation/animations.dart@CompoundAnimation@#as': (m.Scope scope, target)=>()=>target as CompoundAnimation,
'package:flutter/src/animation/animations.dart@CompoundAnimation@#is': (m.Scope scope, target)=>()=>target is CompoundAnimation,
'package:flutter/src/animation/animations.dart@CompoundAnimation@first': (m.Scope scope, CompoundAnimation target)=>target.first,
'package:flutter/src/animation/animations.dart@CompoundAnimation@next': (m.Scope scope, CompoundAnimation target)=>target.next,
'package:flutter/src/animation/animations.dart@CompoundAnimation@status': (m.Scope scope, CompoundAnimation target)=>target.status,
'package:flutter/src/animation/animations.dart@CompoundAnimation@didStartListening': (m.Scope scope, CompoundAnimation target)=>target.didStartListening,
'package:flutter/src/animation/animations.dart@CompoundAnimation@didStopListening': (m.Scope scope, CompoundAnimation target)=>target.didStopListening,
'package:flutter/src/animation/animations.dart@CompoundAnimation@toString': (m.Scope scope, CompoundAnimation target)=>target.toString,
'package:flutter/src/animation/animations.dart@AnimationMean@#as': (m.Scope scope, target)=>()=>target as AnimationMean,
'package:flutter/src/animation/animations.dart@AnimationMean@#is': (m.Scope scope, target)=>()=>target is AnimationMean,
'package:flutter/src/animation/animations.dart@AnimationMean@value': (m.Scope scope, AnimationMean target)=>target.value,
'package:flutter/src/animation/animations.dart@AnimationMean@': (m.Scope scope)=>AnimationMean,
'package:flutter/src/animation/animations.dart@AnimationMax@#as': (m.Scope scope, target)=>()=>target as AnimationMax,
'package:flutter/src/animation/animations.dart@AnimationMax@#is': (m.Scope scope, target)=>()=>target is AnimationMax,
'package:flutter/src/animation/animations.dart@AnimationMax@value': (m.Scope scope, AnimationMax target)=>target.value,
'package:flutter/src/animation/animations.dart@AnimationMax@': (m.Scope scope)=>AnimationMax,
'package:flutter/src/animation/animations.dart@AnimationMin@#as': (m.Scope scope, target)=>()=>target as AnimationMin,
'package:flutter/src/animation/animations.dart@AnimationMin@#is': (m.Scope scope, target)=>()=>target is AnimationMin,
'package:flutter/src/animation/animations.dart@AnimationMin@value': (m.Scope scope, AnimationMin target)=>target.value,
'package:flutter/src/animation/animations.dart@AnimationMin@': (m.Scope scope)=>AnimationMin,

};
}