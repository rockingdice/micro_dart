import 'package:animations/src/fade_scale_transition.dart';
import 'package:flutter/material.dart';
import 'package:animations/src/modal.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:animations/src/fade_scale_transition.dart@FadeScaleTransitionConfiguration@#as': (m.Scope scope, target)=>()=>target as FadeScaleTransitionConfiguration,
'package:animations/src/fade_scale_transition.dart@FadeScaleTransitionConfiguration@#is': (m.Scope scope, target)=>()=>target is FadeScaleTransitionConfiguration,
'package:animations/src/fade_scale_transition.dart@FadeScaleTransitionConfiguration@': (m.Scope scope)=>({ barrierColor,  barrierDismissible,  barrierLabel,  reverseTransitionDuration,  transitionDuration}){
return FadeScaleTransitionConfiguration(barrierColor:barrierColor ?? Colors.black54, barrierDismissible:barrierDismissible ?? true, barrierLabel:barrierLabel ?? 'Dismiss', reverseTransitionDuration:reverseTransitionDuration ?? const Duration(milliseconds: 75), transitionDuration:transitionDuration ?? const Duration(milliseconds: 150));
},
'package:animations/src/fade_scale_transition.dart@FadeScaleTransitionConfiguration@transitionBuilder': (m.Scope scope, FadeScaleTransitionConfiguration target)=>target.transitionBuilder,
'package:animations/src/fade_scale_transition.dart@FadeScaleTransition@#as': (m.Scope scope, target)=>()=>target as FadeScaleTransition,
'package:animations/src/fade_scale_transition.dart@FadeScaleTransition@#is': (m.Scope scope, target)=>()=>target is FadeScaleTransition,
'package:animations/src/fade_scale_transition.dart@FadeScaleTransition@animation': (m.Scope scope, FadeScaleTransition target)=>target.animation,
'package:animations/src/fade_scale_transition.dart@FadeScaleTransition@child': (m.Scope scope, FadeScaleTransition target)=>target.child,
'package:animations/src/fade_scale_transition.dart@FadeScaleTransition@': (m.Scope scope)=>({ animation,  child,  key}){
return FadeScaleTransition(animation:animation, child:child, key:key);
},
'package:animations/src/fade_scale_transition.dart@FadeScaleTransition@build': (m.Scope scope, FadeScaleTransition target)=>target.build,

};
}