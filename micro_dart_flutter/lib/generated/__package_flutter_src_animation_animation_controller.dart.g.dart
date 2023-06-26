import 'package:flutter/src/animation/animation_controller.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:flutter/src/animation/curves.dart';
import 'package:flutter/src/animation/listener_helpers.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/animation/animation_controller.dart@AnimationController@#as': (m.Scope scope, target)=>()=>target as AnimationController,
'package:flutter/src/animation/animation_controller.dart@AnimationController@#is': (m.Scope scope, target)=>()=>target is AnimationController,
'package:flutter/src/animation/animation_controller.dart@AnimationController@lowerBound': (m.Scope scope, AnimationController target)=>target.lowerBound,
'package:flutter/src/animation/animation_controller.dart@AnimationController@upperBound': (m.Scope scope, AnimationController target)=>target.upperBound,
'package:flutter/src/animation/animation_controller.dart@AnimationController@debugLabel': (m.Scope scope, AnimationController target)=>target.debugLabel,
'package:flutter/src/animation/animation_controller.dart@AnimationController@animationBehavior': (m.Scope scope, AnimationController target)=>target.animationBehavior,
'package:flutter/src/animation/animation_controller.dart@AnimationController@duration': (m.Scope scope, AnimationController target)=>target.duration,
'package:flutter/src/animation/animation_controller.dart@AnimationController@duration:set': (m.Scope scope, AnimationController target)=>(other)=>target.duration=other,
'package:flutter/src/animation/animation_controller.dart@AnimationController@reverseDuration': (m.Scope scope, AnimationController target)=>target.reverseDuration,
'package:flutter/src/animation/animation_controller.dart@AnimationController@reverseDuration:set': (m.Scope scope, AnimationController target)=>(other)=>target.reverseDuration=other,
'package:flutter/src/animation/animation_controller.dart@AnimationController@view': (m.Scope scope, AnimationController target)=>target.view,
'package:flutter/src/animation/animation_controller.dart@AnimationController@value': (m.Scope scope, AnimationController target)=>target.value,
'package:flutter/src/animation/animation_controller.dart@AnimationController@value:set': (m.Scope scope, AnimationController target)=>(other)=>target.value=other,
'package:flutter/src/animation/animation_controller.dart@AnimationController@velocity': (m.Scope scope, AnimationController target)=>target.velocity,
'package:flutter/src/animation/animation_controller.dart@AnimationController@lastElapsedDuration': (m.Scope scope, AnimationController target)=>target.lastElapsedDuration,
'package:flutter/src/animation/animation_controller.dart@AnimationController@isAnimating': (m.Scope scope, AnimationController target)=>target.isAnimating,
'package:flutter/src/animation/animation_controller.dart@AnimationController@status': (m.Scope scope, AnimationController target)=>target.status,
'package:flutter/src/animation/animation_controller.dart@AnimationController@': (m.Scope scope)=>AnimationController,
'package:flutter/src/animation/animation_controller.dart@AnimationController@unbounded': (m.Scope scope)=>AnimationController.unbounded,
'package:flutter/src/animation/animation_controller.dart@AnimationController@resync': (m.Scope scope, AnimationController target)=>target.resync,
'package:flutter/src/animation/animation_controller.dart@AnimationController@reset': (m.Scope scope, AnimationController target)=>target.reset,
'package:flutter/src/animation/animation_controller.dart@AnimationController@forward': (m.Scope scope, AnimationController target)=>target.forward,
'package:flutter/src/animation/animation_controller.dart@AnimationController@reverse': (m.Scope scope, AnimationController target)=>target.reverse,
'package:flutter/src/animation/animation_controller.dart@AnimationController@animateTo': (m.Scope scope, AnimationController target)=>target.animateTo,
'package:flutter/src/animation/animation_controller.dart@AnimationController@animateBack': (m.Scope scope, AnimationController target)=>target.animateBack,
'package:flutter/src/animation/animation_controller.dart@AnimationController@repeat': (m.Scope scope, AnimationController target)=>target.repeat,
'package:flutter/src/animation/animation_controller.dart@AnimationController@fling': (m.Scope scope, AnimationController target)=>target.fling,
'package:flutter/src/animation/animation_controller.dart@AnimationController@animateWith': (m.Scope scope, AnimationController target)=>target.animateWith,
'package:flutter/src/animation/animation_controller.dart@AnimationController@stop': (m.Scope scope, AnimationController target)=>target.stop,
'package:flutter/src/animation/animation_controller.dart@AnimationController@dispose': (m.Scope scope, AnimationController target)=>target.dispose,
'package:flutter/src/animation/animation_controller.dart@AnimationController@toStringDetails': (m.Scope scope, AnimationController target)=>target.toStringDetails,

};
}