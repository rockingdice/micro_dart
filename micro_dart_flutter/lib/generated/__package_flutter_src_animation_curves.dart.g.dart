import 'package:flutter/src/animation/curves.dart';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/animation/curves.dart@ParametricCurve@#as': (m.Scope scope, target)=>()=>target as ParametricCurve,
'package:flutter/src/animation/curves.dart@ParametricCurve@#is': (m.Scope scope, target)=>()=>target is ParametricCurve,
'package:flutter/src/animation/curves.dart@ParametricCurve@transform': (m.Scope scope, ParametricCurve target)=>target.transform,
'package:flutter/src/animation/curves.dart@ParametricCurve@transformInternal': (m.Scope scope, ParametricCurve target)=>target.transformInternal,
'package:flutter/src/animation/curves.dart@ParametricCurve@toString': (m.Scope scope, ParametricCurve target)=>target.toString,
'package:flutter/src/animation/curves.dart@Curve@#as': (m.Scope scope, target)=>()=>target as Curve,
'package:flutter/src/animation/curves.dart@Curve@#is': (m.Scope scope, target)=>()=>target is Curve,
'package:flutter/src/animation/curves.dart@Curve@flipped': (m.Scope scope, Curve target)=>target.flipped,
'package:flutter/src/animation/curves.dart@Curve@transform': (m.Scope scope, Curve target)=>target.transform,
'package:flutter/src/animation/curves.dart@SawTooth@#as': (m.Scope scope, target)=>()=>target as SawTooth,
'package:flutter/src/animation/curves.dart@SawTooth@#is': (m.Scope scope, target)=>()=>target is SawTooth,
'package:flutter/src/animation/curves.dart@SawTooth@count': (m.Scope scope, SawTooth target)=>target.count,
'package:flutter/src/animation/curves.dart@SawTooth@': (m.Scope scope)=>( count){
return SawTooth(count);
},
'package:flutter/src/animation/curves.dart@SawTooth@transformInternal': (m.Scope scope, SawTooth target)=>target.transformInternal,
'package:flutter/src/animation/curves.dart@SawTooth@toString': (m.Scope scope, SawTooth target)=>target.toString,
'package:flutter/src/animation/curves.dart@Interval@#as': (m.Scope scope, target)=>()=>target as Interval,
'package:flutter/src/animation/curves.dart@Interval@#is': (m.Scope scope, target)=>()=>target is Interval,
'package:flutter/src/animation/curves.dart@Interval@begin': (m.Scope scope, Interval target)=>target.begin,
'package:flutter/src/animation/curves.dart@Interval@end': (m.Scope scope, Interval target)=>target.end,
'package:flutter/src/animation/curves.dart@Interval@curve': (m.Scope scope, Interval target)=>target.curve,
'package:flutter/src/animation/curves.dart@Interval@': (m.Scope scope)=>( begin,  end, { curve}){
return Interval(begin, end, curve:curve ?? Curves.linear);
},
'package:flutter/src/animation/curves.dart@Interval@transformInternal': (m.Scope scope, Interval target)=>target.transformInternal,
'package:flutter/src/animation/curves.dart@Interval@toString': (m.Scope scope, Interval target)=>target.toString,
'package:flutter/src/animation/curves.dart@Threshold@#as': (m.Scope scope, target)=>()=>target as Threshold,
'package:flutter/src/animation/curves.dart@Threshold@#is': (m.Scope scope, target)=>()=>target is Threshold,
'package:flutter/src/animation/curves.dart@Threshold@threshold': (m.Scope scope, Threshold target)=>target.threshold,
'package:flutter/src/animation/curves.dart@Threshold@': (m.Scope scope)=>( threshold){
return Threshold(threshold);
},
'package:flutter/src/animation/curves.dart@Threshold@transformInternal': (m.Scope scope, Threshold target)=>target.transformInternal,
'package:flutter/src/animation/curves.dart@Cubic@#as': (m.Scope scope, target)=>()=>target as Cubic,
'package:flutter/src/animation/curves.dart@Cubic@#is': (m.Scope scope, target)=>()=>target is Cubic,
'package:flutter/src/animation/curves.dart@Cubic@a': (m.Scope scope, Cubic target)=>target.a,
'package:flutter/src/animation/curves.dart@Cubic@b': (m.Scope scope, Cubic target)=>target.b,
'package:flutter/src/animation/curves.dart@Cubic@c': (m.Scope scope, Cubic target)=>target.c,
'package:flutter/src/animation/curves.dart@Cubic@d': (m.Scope scope, Cubic target)=>target.d,
'package:flutter/src/animation/curves.dart@Cubic@': (m.Scope scope)=>( a,  b,  c,  d){
return Cubic(a, b, c, d);
},
'package:flutter/src/animation/curves.dart@Cubic@transformInternal': (m.Scope scope, Cubic target)=>target.transformInternal,
'package:flutter/src/animation/curves.dart@Cubic@toString': (m.Scope scope, Cubic target)=>target.toString,
'package:flutter/src/animation/curves.dart@ThreePointCubic@#as': (m.Scope scope, target)=>()=>target as ThreePointCubic,
'package:flutter/src/animation/curves.dart@ThreePointCubic@#is': (m.Scope scope, target)=>()=>target is ThreePointCubic,
'package:flutter/src/animation/curves.dart@ThreePointCubic@a1': (m.Scope scope, ThreePointCubic target)=>target.a1,
'package:flutter/src/animation/curves.dart@ThreePointCubic@b1': (m.Scope scope, ThreePointCubic target)=>target.b1,
'package:flutter/src/animation/curves.dart@ThreePointCubic@midpoint': (m.Scope scope, ThreePointCubic target)=>target.midpoint,
'package:flutter/src/animation/curves.dart@ThreePointCubic@a2': (m.Scope scope, ThreePointCubic target)=>target.a2,
'package:flutter/src/animation/curves.dart@ThreePointCubic@b2': (m.Scope scope, ThreePointCubic target)=>target.b2,
'package:flutter/src/animation/curves.dart@ThreePointCubic@': (m.Scope scope)=>( a1,  b1,  midpoint,  a2,  b2){
return ThreePointCubic(a1, b1, midpoint, a2, b2);
},
'package:flutter/src/animation/curves.dart@ThreePointCubic@transformInternal': (m.Scope scope, ThreePointCubic target)=>target.transformInternal,
'package:flutter/src/animation/curves.dart@ThreePointCubic@toString': (m.Scope scope, ThreePointCubic target)=>target.toString,
'package:flutter/src/animation/curves.dart@Curve2D@#as': (m.Scope scope, target)=>()=>target as Curve2D,
'package:flutter/src/animation/curves.dart@Curve2D@#is': (m.Scope scope, target)=>()=>target is Curve2D,
'package:flutter/src/animation/curves.dart@Curve2D@samplingSeed': (m.Scope scope, Curve2D target)=>target.samplingSeed,
'package:flutter/src/animation/curves.dart@Curve2D@generateSamples': (m.Scope scope, Curve2D target)=>target.generateSamples,
'package:flutter/src/animation/curves.dart@Curve2D@findInverse': (m.Scope scope, Curve2D target)=>target.findInverse,
'package:flutter/src/animation/curves.dart@Curve2DSample@#as': (m.Scope scope, target)=>()=>target as Curve2DSample,
'package:flutter/src/animation/curves.dart@Curve2DSample@#is': (m.Scope scope, target)=>()=>target is Curve2DSample,
'package:flutter/src/animation/curves.dart@Curve2DSample@t': (m.Scope scope, Curve2DSample target)=>target.t,
'package:flutter/src/animation/curves.dart@Curve2DSample@value': (m.Scope scope, Curve2DSample target)=>target.value,
'package:flutter/src/animation/curves.dart@Curve2DSample@': (m.Scope scope)=>( t,  value){
return Curve2DSample(t, value);
},
'package:flutter/src/animation/curves.dart@Curve2DSample@toString': (m.Scope scope, Curve2DSample target)=>target.toString,
'package:flutter/src/animation/curves.dart@CatmullRomSpline@#as': (m.Scope scope, target)=>()=>target as CatmullRomSpline,
'package:flutter/src/animation/curves.dart@CatmullRomSpline@#is': (m.Scope scope, target)=>()=>target is CatmullRomSpline,
'package:flutter/src/animation/curves.dart@CatmullRomSpline@samplingSeed': (m.Scope scope, CatmullRomSpline target)=>target.samplingSeed,
'package:flutter/src/animation/curves.dart@CatmullRomSpline@': (m.Scope scope)=>( controlPoints, { endHandle,  startHandle,  tension}){
return CatmullRomSpline(controlPoints, endHandle:endHandle, startHandle:startHandle, tension:tension ?? 0.0);
},
'package:flutter/src/animation/curves.dart@CatmullRomSpline@precompute': (m.Scope scope)=>CatmullRomSpline.precompute,
'package:flutter/src/animation/curves.dart@CatmullRomSpline@transformInternal': (m.Scope scope, CatmullRomSpline target)=>target.transformInternal,
'package:flutter/src/animation/curves.dart@CatmullRomCurve@#as': (m.Scope scope, target)=>()=>target as CatmullRomCurve,
'package:flutter/src/animation/curves.dart@CatmullRomCurve@#is': (m.Scope scope, target)=>()=>target is CatmullRomCurve,
'package:flutter/src/animation/curves.dart@CatmullRomCurve@controlPoints': (m.Scope scope, CatmullRomCurve target)=>target.controlPoints,
'package:flutter/src/animation/curves.dart@CatmullRomCurve@tension': (m.Scope scope, CatmullRomCurve target)=>target.tension,
'package:flutter/src/animation/curves.dart@CatmullRomCurve@': (m.Scope scope)=>( controlPoints, { tension}){
return CatmullRomCurve(controlPoints, tension:tension ?? 0.0);
},
'package:flutter/src/animation/curves.dart@CatmullRomCurve@precompute': (m.Scope scope)=>CatmullRomCurve.precompute,
'package:flutter/src/animation/curves.dart@CatmullRomCurve@validateControlPoints': (m.Scope scope)=>CatmullRomCurve.validateControlPoints,
'package:flutter/src/animation/curves.dart@CatmullRomCurve@transformInternal': (m.Scope scope, CatmullRomCurve target)=>target.transformInternal,
'package:flutter/src/animation/curves.dart@FlippedCurve@#as': (m.Scope scope, target)=>()=>target as FlippedCurve,
'package:flutter/src/animation/curves.dart@FlippedCurve@#is': (m.Scope scope, target)=>()=>target is FlippedCurve,
'package:flutter/src/animation/curves.dart@FlippedCurve@curve': (m.Scope scope, FlippedCurve target)=>target.curve,
'package:flutter/src/animation/curves.dart@FlippedCurve@': (m.Scope scope)=>( curve){
return FlippedCurve(curve);
},
'package:flutter/src/animation/curves.dart@FlippedCurve@transformInternal': (m.Scope scope, FlippedCurve target)=>target.transformInternal,
'package:flutter/src/animation/curves.dart@FlippedCurve@toString': (m.Scope scope, FlippedCurve target)=>target.toString,
'package:flutter/src/animation/curves.dart@ElasticInCurve@#as': (m.Scope scope, target)=>()=>target as ElasticInCurve,
'package:flutter/src/animation/curves.dart@ElasticInCurve@#is': (m.Scope scope, target)=>()=>target is ElasticInCurve,
'package:flutter/src/animation/curves.dart@ElasticInCurve@period': (m.Scope scope, ElasticInCurve target)=>target.period,
'package:flutter/src/animation/curves.dart@ElasticInCurve@': (m.Scope scope)=>([double? period]){
if(period == null){
return ElasticInCurve();
}
return ElasticInCurve(period!);
},
'package:flutter/src/animation/curves.dart@ElasticInCurve@transformInternal': (m.Scope scope, ElasticInCurve target)=>target.transformInternal,
'package:flutter/src/animation/curves.dart@ElasticInCurve@toString': (m.Scope scope, ElasticInCurve target)=>target.toString,
'package:flutter/src/animation/curves.dart@ElasticOutCurve@#as': (m.Scope scope, target)=>()=>target as ElasticOutCurve,
'package:flutter/src/animation/curves.dart@ElasticOutCurve@#is': (m.Scope scope, target)=>()=>target is ElasticOutCurve,
'package:flutter/src/animation/curves.dart@ElasticOutCurve@period': (m.Scope scope, ElasticOutCurve target)=>target.period,
'package:flutter/src/animation/curves.dart@ElasticOutCurve@': (m.Scope scope)=>([double? period]){
if(period == null){
return ElasticOutCurve();
}
return ElasticOutCurve(period!);
},
'package:flutter/src/animation/curves.dart@ElasticOutCurve@transformInternal': (m.Scope scope, ElasticOutCurve target)=>target.transformInternal,
'package:flutter/src/animation/curves.dart@ElasticOutCurve@toString': (m.Scope scope, ElasticOutCurve target)=>target.toString,
'package:flutter/src/animation/curves.dart@ElasticInOutCurve@#as': (m.Scope scope, target)=>()=>target as ElasticInOutCurve,
'package:flutter/src/animation/curves.dart@ElasticInOutCurve@#is': (m.Scope scope, target)=>()=>target is ElasticInOutCurve,
'package:flutter/src/animation/curves.dart@ElasticInOutCurve@period': (m.Scope scope, ElasticInOutCurve target)=>target.period,
'package:flutter/src/animation/curves.dart@ElasticInOutCurve@': (m.Scope scope)=>([double? period]){
if(period == null){
return ElasticInOutCurve();
}
return ElasticInOutCurve(period!);
},
'package:flutter/src/animation/curves.dart@ElasticInOutCurve@transformInternal': (m.Scope scope, ElasticInOutCurve target)=>target.transformInternal,
'package:flutter/src/animation/curves.dart@ElasticInOutCurve@toString': (m.Scope scope, ElasticInOutCurve target)=>target.toString,
'package:flutter/src/animation/curves.dart@Curves@#as': (m.Scope scope, target)=>()=>target as Curves,
'package:flutter/src/animation/curves.dart@Curves@#is': (m.Scope scope, target)=>()=>target is Curves,
'package:flutter/src/animation/curves.dart@Curves@linear': (m.Scope scope)=>Curves.linear,
'package:flutter/src/animation/curves.dart@Curves@decelerate': (m.Scope scope)=>Curves.decelerate,
'package:flutter/src/animation/curves.dart@Curves@fastLinearToSlowEaseIn': (m.Scope scope)=>Curves.fastLinearToSlowEaseIn,
'package:flutter/src/animation/curves.dart@Curves@fastEaseInToSlowEaseOut': (m.Scope scope)=>Curves.fastEaseInToSlowEaseOut,
'package:flutter/src/animation/curves.dart@Curves@ease': (m.Scope scope)=>Curves.ease,
'package:flutter/src/animation/curves.dart@Curves@easeIn': (m.Scope scope)=>Curves.easeIn,
'package:flutter/src/animation/curves.dart@Curves@easeInToLinear': (m.Scope scope)=>Curves.easeInToLinear,
'package:flutter/src/animation/curves.dart@Curves@easeInSine': (m.Scope scope)=>Curves.easeInSine,
'package:flutter/src/animation/curves.dart@Curves@easeInQuad': (m.Scope scope)=>Curves.easeInQuad,
'package:flutter/src/animation/curves.dart@Curves@easeInCubic': (m.Scope scope)=>Curves.easeInCubic,
'package:flutter/src/animation/curves.dart@Curves@easeInQuart': (m.Scope scope)=>Curves.easeInQuart,
'package:flutter/src/animation/curves.dart@Curves@easeInQuint': (m.Scope scope)=>Curves.easeInQuint,
'package:flutter/src/animation/curves.dart@Curves@easeInExpo': (m.Scope scope)=>Curves.easeInExpo,
'package:flutter/src/animation/curves.dart@Curves@easeInCirc': (m.Scope scope)=>Curves.easeInCirc,
'package:flutter/src/animation/curves.dart@Curves@easeInBack': (m.Scope scope)=>Curves.easeInBack,
'package:flutter/src/animation/curves.dart@Curves@easeOut': (m.Scope scope)=>Curves.easeOut,
'package:flutter/src/animation/curves.dart@Curves@linearToEaseOut': (m.Scope scope)=>Curves.linearToEaseOut,
'package:flutter/src/animation/curves.dart@Curves@easeOutSine': (m.Scope scope)=>Curves.easeOutSine,
'package:flutter/src/animation/curves.dart@Curves@easeOutQuad': (m.Scope scope)=>Curves.easeOutQuad,
'package:flutter/src/animation/curves.dart@Curves@easeOutCubic': (m.Scope scope)=>Curves.easeOutCubic,
'package:flutter/src/animation/curves.dart@Curves@easeOutQuart': (m.Scope scope)=>Curves.easeOutQuart,
'package:flutter/src/animation/curves.dart@Curves@easeOutQuint': (m.Scope scope)=>Curves.easeOutQuint,
'package:flutter/src/animation/curves.dart@Curves@easeOutExpo': (m.Scope scope)=>Curves.easeOutExpo,
'package:flutter/src/animation/curves.dart@Curves@easeOutCirc': (m.Scope scope)=>Curves.easeOutCirc,
'package:flutter/src/animation/curves.dart@Curves@easeOutBack': (m.Scope scope)=>Curves.easeOutBack,
'package:flutter/src/animation/curves.dart@Curves@easeInOut': (m.Scope scope)=>Curves.easeInOut,
'package:flutter/src/animation/curves.dart@Curves@easeInOutSine': (m.Scope scope)=>Curves.easeInOutSine,
'package:flutter/src/animation/curves.dart@Curves@easeInOutQuad': (m.Scope scope)=>Curves.easeInOutQuad,
'package:flutter/src/animation/curves.dart@Curves@easeInOutCubic': (m.Scope scope)=>Curves.easeInOutCubic,
'package:flutter/src/animation/curves.dart@Curves@easeInOutCubicEmphasized': (m.Scope scope)=>Curves.easeInOutCubicEmphasized,
'package:flutter/src/animation/curves.dart@Curves@easeInOutQuart': (m.Scope scope)=>Curves.easeInOutQuart,
'package:flutter/src/animation/curves.dart@Curves@easeInOutQuint': (m.Scope scope)=>Curves.easeInOutQuint,
'package:flutter/src/animation/curves.dart@Curves@easeInOutExpo': (m.Scope scope)=>Curves.easeInOutExpo,
'package:flutter/src/animation/curves.dart@Curves@easeInOutCirc': (m.Scope scope)=>Curves.easeInOutCirc,
'package:flutter/src/animation/curves.dart@Curves@easeInOutBack': (m.Scope scope)=>Curves.easeInOutBack,
'package:flutter/src/animation/curves.dart@Curves@fastOutSlowIn': (m.Scope scope)=>Curves.fastOutSlowIn,
'package:flutter/src/animation/curves.dart@Curves@slowMiddle': (m.Scope scope)=>Curves.slowMiddle,
'package:flutter/src/animation/curves.dart@Curves@bounceIn': (m.Scope scope)=>Curves.bounceIn,
'package:flutter/src/animation/curves.dart@Curves@bounceOut': (m.Scope scope)=>Curves.bounceOut,
'package:flutter/src/animation/curves.dart@Curves@bounceInOut': (m.Scope scope)=>Curves.bounceInOut,
'package:flutter/src/animation/curves.dart@Curves@elasticIn': (m.Scope scope)=>Curves.elasticIn,
'package:flutter/src/animation/curves.dart@Curves@elasticOut': (m.Scope scope)=>Curves.elasticOut,
'package:flutter/src/animation/curves.dart@Curves@elasticInOut': (m.Scope scope)=>Curves.elasticInOut,

};
}