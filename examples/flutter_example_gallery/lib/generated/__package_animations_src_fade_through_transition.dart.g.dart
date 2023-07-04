import 'package:animations/src/fade_through_transition.dart';
import 'package:flutter/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:animations/src/fade_through_transition.dart@FadeThroughPageTransitionsBuilder@#as': (m.Scope scope, target)=>()=>target as FadeThroughPageTransitionsBuilder,
'package:animations/src/fade_through_transition.dart@FadeThroughPageTransitionsBuilder@#is': (m.Scope scope, target)=>()=>target is FadeThroughPageTransitionsBuilder,
'package:animations/src/fade_through_transition.dart@FadeThroughPageTransitionsBuilder@fillColor': (m.Scope scope, FadeThroughPageTransitionsBuilder target)=>target.fillColor,
'package:animations/src/fade_through_transition.dart@FadeThroughPageTransitionsBuilder@': (m.Scope scope)=>({ fillColor}){
return FadeThroughPageTransitionsBuilder(fillColor:fillColor);
},
'package:animations/src/fade_through_transition.dart@FadeThroughPageTransitionsBuilder@buildTransitions': (m.Scope scope, FadeThroughPageTransitionsBuilder target)=>target.buildTransitions,
'package:animations/src/fade_through_transition.dart@FadeThroughTransition@#as': (m.Scope scope, target)=>()=>target as FadeThroughTransition,
'package:animations/src/fade_through_transition.dart@FadeThroughTransition@#is': (m.Scope scope, target)=>()=>target is FadeThroughTransition,
'package:animations/src/fade_through_transition.dart@FadeThroughTransition@animation': (m.Scope scope, FadeThroughTransition target)=>target.animation,
'package:animations/src/fade_through_transition.dart@FadeThroughTransition@secondaryAnimation': (m.Scope scope, FadeThroughTransition target)=>target.secondaryAnimation,
'package:animations/src/fade_through_transition.dart@FadeThroughTransition@fillColor': (m.Scope scope, FadeThroughTransition target)=>target.fillColor,
'package:animations/src/fade_through_transition.dart@FadeThroughTransition@child': (m.Scope scope, FadeThroughTransition target)=>target.child,
'package:animations/src/fade_through_transition.dart@FadeThroughTransition@': (m.Scope scope)=>({ animation,  child,  fillColor,  key,  secondaryAnimation}){
return FadeThroughTransition(animation:animation, child:child, fillColor:fillColor, key:key, secondaryAnimation:secondaryAnimation);
},
'package:animations/src/fade_through_transition.dart@FadeThroughTransition@build': (m.Scope scope, FadeThroughTransition target)=>target.build,

};
}