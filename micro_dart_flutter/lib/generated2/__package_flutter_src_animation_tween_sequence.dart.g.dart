import 'package:flutter/src/animation/tween_sequence.dart';
import 'package:flutter/src/animation/tween.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/animation/tween_sequence.dart@TweenSequence@#as': (m.Scope scope, target)=>()=>target as TweenSequence,
'package:flutter/src/animation/tween_sequence.dart@TweenSequence@#is': (m.Scope scope, target)=>()=>target is TweenSequence,
'package:flutter/src/animation/tween_sequence.dart@TweenSequence@': (m.Scope scope)=><T>( items){
return TweenSequence(items);
},
'package:flutter/src/animation/tween_sequence.dart@TweenSequence@transform': (m.Scope scope, TweenSequence target)=>target.transform,
'package:flutter/src/animation/tween_sequence.dart@TweenSequence@toString': (m.Scope scope, TweenSequence target)=>target.toString,
'package:flutter/src/animation/tween_sequence.dart@FlippedTweenSequence@#as': (m.Scope scope, target)=>()=>target as FlippedTweenSequence,
'package:flutter/src/animation/tween_sequence.dart@FlippedTweenSequence@#is': (m.Scope scope, target)=>()=>target is FlippedTweenSequence,
'package:flutter/src/animation/tween_sequence.dart@FlippedTweenSequence@': (m.Scope scope)=>( items){
return FlippedTweenSequence(items);
},
'package:flutter/src/animation/tween_sequence.dart@FlippedTweenSequence@transform': (m.Scope scope, FlippedTweenSequence target)=>target.transform,
'package:flutter/src/animation/tween_sequence.dart@TweenSequenceItem@#as': (m.Scope scope, target)=>()=>target as TweenSequenceItem,
'package:flutter/src/animation/tween_sequence.dart@TweenSequenceItem@#is': (m.Scope scope, target)=>()=>target is TweenSequenceItem,
'package:flutter/src/animation/tween_sequence.dart@TweenSequenceItem@tween': (m.Scope scope, TweenSequenceItem target)=>target.tween,
'package:flutter/src/animation/tween_sequence.dart@TweenSequenceItem@weight': (m.Scope scope, TweenSequenceItem target)=>target.weight,
'package:flutter/src/animation/tween_sequence.dart@TweenSequenceItem@': (m.Scope scope)=><T>({ tween,  weight}){
return TweenSequenceItem(tween:tween, weight:weight);
},

};
}