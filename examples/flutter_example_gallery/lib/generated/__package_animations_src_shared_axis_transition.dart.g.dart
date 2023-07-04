import 'package:animations/src/shared_axis_transition.dart';
import 'package:flutter/material.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:animations/src/shared_axis_transition.dart@SharedAxisPageTransitionsBuilder@#as': (m.Scope scope, target)=>()=>target as SharedAxisPageTransitionsBuilder,
'package:animations/src/shared_axis_transition.dart@SharedAxisPageTransitionsBuilder@#is': (m.Scope scope, target)=>()=>target is SharedAxisPageTransitionsBuilder,
'package:animations/src/shared_axis_transition.dart@SharedAxisPageTransitionsBuilder@transitionType': (m.Scope scope, SharedAxisPageTransitionsBuilder target)=>target.transitionType,
'package:animations/src/shared_axis_transition.dart@SharedAxisPageTransitionsBuilder@fillColor': (m.Scope scope, SharedAxisPageTransitionsBuilder target)=>target.fillColor,
'package:animations/src/shared_axis_transition.dart@SharedAxisPageTransitionsBuilder@': (m.Scope scope)=>({ fillColor,  transitionType}){
return SharedAxisPageTransitionsBuilder(fillColor:fillColor, transitionType:transitionType);
},
'package:animations/src/shared_axis_transition.dart@SharedAxisPageTransitionsBuilder@buildTransitions': (m.Scope scope, SharedAxisPageTransitionsBuilder target)=>target.buildTransitions,
'package:animations/src/shared_axis_transition.dart@SharedAxisTransition@#as': (m.Scope scope, target)=>()=>target as SharedAxisTransition,
'package:animations/src/shared_axis_transition.dart@SharedAxisTransition@#is': (m.Scope scope, target)=>()=>target is SharedAxisTransition,
'package:animations/src/shared_axis_transition.dart@SharedAxisTransition@animation': (m.Scope scope, SharedAxisTransition target)=>target.animation,
'package:animations/src/shared_axis_transition.dart@SharedAxisTransition@secondaryAnimation': (m.Scope scope, SharedAxisTransition target)=>target.secondaryAnimation,
'package:animations/src/shared_axis_transition.dart@SharedAxisTransition@transitionType': (m.Scope scope, SharedAxisTransition target)=>target.transitionType,
'package:animations/src/shared_axis_transition.dart@SharedAxisTransition@fillColor': (m.Scope scope, SharedAxisTransition target)=>target.fillColor,
'package:animations/src/shared_axis_transition.dart@SharedAxisTransition@child': (m.Scope scope, SharedAxisTransition target)=>target.child,
'package:animations/src/shared_axis_transition.dart@SharedAxisTransition@': (m.Scope scope)=>({ animation,  child,  fillColor,  key,  secondaryAnimation,  transitionType}){
return SharedAxisTransition(animation:animation, child:child, fillColor:fillColor, key:key, secondaryAnimation:secondaryAnimation, transitionType:transitionType);
},
'package:animations/src/shared_axis_transition.dart@SharedAxisTransition@build': (m.Scope scope, SharedAxisTransition target)=>target.build,

};
}