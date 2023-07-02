import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/tween.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/animation/animation.dart@Animation@#as': (m.Scope scope, target)=>()=>target as Animation,
'package:flutter/src/animation/animation.dart@Animation@#is': (m.Scope scope, target)=>()=>target is Animation,
'package:flutter/src/animation/animation.dart@Animation@status': (m.Scope scope, Animation target)=>target.status,
'package:flutter/src/animation/animation.dart@Animation@value': (m.Scope scope, Animation target)=>target.value,
'package:flutter/src/animation/animation.dart@Animation@isDismissed': (m.Scope scope, Animation target)=>target.isDismissed,
'package:flutter/src/animation/animation.dart@Animation@isCompleted': (m.Scope scope, Animation target)=>target.isCompleted,
'package:flutter/src/animation/animation.dart@Animation@fromValueListenable': (m.Scope scope)=>( listenable, { transformer}){
T transformerProxy<T>( $p0) {
return  engine.callFunctionPointer(scope, transformer!,[$p0], {});
}

return Animation.fromValueListenable(listenable, transformer:transformer == null ? null :transformerProxy);
},
'package:flutter/src/animation/animation.dart@Animation@addListener': (m.Scope scope, Animation target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/animation/animation.dart@Animation@removeListener': (m.Scope scope, Animation target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/animation/animation.dart@Animation@addStatusListener': (m.Scope scope, Animation target)=>( listener){
void listenerProxy( status) {
 engine.callFunctionPointer(scope, listener!,[status], {});
}

target.addStatusListener(listenerProxy);
},
'package:flutter/src/animation/animation.dart@Animation@removeStatusListener': (m.Scope scope, Animation target)=>( listener){
void listenerProxy( status) {
 engine.callFunctionPointer(scope, listener!,[status], {});
}

target.removeStatusListener(listenerProxy);
},
'package:flutter/src/animation/animation.dart@Animation@drive': (m.Scope scope, Animation target)=>target.drive,
'package:flutter/src/animation/animation.dart@Animation@toString': (m.Scope scope, Animation target)=>target.toString,
'package:flutter/src/animation/animation.dart@Animation@toStringDetails': (m.Scope scope, Animation target)=>target.toStringDetails,

};
}