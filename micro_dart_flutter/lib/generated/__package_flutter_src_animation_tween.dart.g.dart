import 'package:flutter/src/animation/tween.dart';
import 'dart:ui' show Color,Rect,Size;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/animation/animations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/animation/tween.dart@Animatable@#as': (m.Scope scope, target)=>()=>target as Animatable,
'package:flutter/src/animation/tween.dart@Animatable@#is': (m.Scope scope, target)=>()=>target is Animatable,
'package:flutter/src/animation/tween.dart@Animatable@fromCallback': (m.Scope scope)=>( callback){
T callbackProxy<T>( $p0) {
return  engine.callFunctionPointer(scope, callback!,[$p0], {});
}

return Animatable.fromCallback(callbackProxy);
},
'package:flutter/src/animation/tween.dart@Animatable@transform': (m.Scope scope, Animatable target)=>target.transform,
'package:flutter/src/animation/tween.dart@Animatable@evaluate': (m.Scope scope, Animatable target)=>target.evaluate,
'package:flutter/src/animation/tween.dart@Animatable@animate': (m.Scope scope, Animatable target)=>target.animate,
'package:flutter/src/animation/tween.dart@Animatable@chain': (m.Scope scope, Animatable target)=>target.chain,
'package:flutter/src/animation/tween.dart@Tween@#as': (m.Scope scope, target)=>()=>target as Tween,
'package:flutter/src/animation/tween.dart@Tween@#is': (m.Scope scope, target)=>()=>target is Tween,
'package:flutter/src/animation/tween.dart@Tween@begin': (m.Scope scope, Tween target)=>target.begin,
'package:flutter/src/animation/tween.dart@Tween@begin:set': (m.Scope scope, Tween target)=>(other)=>target.begin=other,
'package:flutter/src/animation/tween.dart@Tween@end': (m.Scope scope, Tween target)=>target.end,
'package:flutter/src/animation/tween.dart@Tween@end:set': (m.Scope scope, Tween target)=>(other)=>target.end=other,
'package:flutter/src/animation/tween.dart@Tween@': (m.Scope scope)=><T>({ begin,  end}){
return Tween(begin:begin, end:end);
},
'package:flutter/src/animation/tween.dart@Tween@lerp': (m.Scope scope, Tween target)=>target.lerp,
'package:flutter/src/animation/tween.dart@Tween@transform': (m.Scope scope, Tween target)=>target.transform,
'package:flutter/src/animation/tween.dart@Tween@toString': (m.Scope scope, Tween target)=>target.toString,
'package:flutter/src/animation/tween.dart@ReverseTween@#as': (m.Scope scope, target)=>()=>target as ReverseTween,
'package:flutter/src/animation/tween.dart@ReverseTween@#is': (m.Scope scope, target)=>()=>target is ReverseTween,
'package:flutter/src/animation/tween.dart@ReverseTween@parent': (m.Scope scope, ReverseTween target)=>target.parent,
'package:flutter/src/animation/tween.dart@ReverseTween@': (m.Scope scope)=>ReverseTween,
'package:flutter/src/animation/tween.dart@ReverseTween@lerp': (m.Scope scope, ReverseTween target)=>target.lerp,
'package:flutter/src/animation/tween.dart@ColorTween@#as': (m.Scope scope, target)=>()=>target as ColorTween,
'package:flutter/src/animation/tween.dart@ColorTween@#is': (m.Scope scope, target)=>()=>target is ColorTween,
'package:flutter/src/animation/tween.dart@ColorTween@': (m.Scope scope)=>({ begin,  end}){
return ColorTween(begin:begin, end:end);
},
'package:flutter/src/animation/tween.dart@ColorTween@lerp': (m.Scope scope, ColorTween target)=>target.lerp,
'package:flutter/src/animation/tween.dart@SizeTween@#as': (m.Scope scope, target)=>()=>target as SizeTween,
'package:flutter/src/animation/tween.dart@SizeTween@#is': (m.Scope scope, target)=>()=>target is SizeTween,
'package:flutter/src/animation/tween.dart@SizeTween@': (m.Scope scope)=>({ begin,  end}){
return SizeTween(begin:begin, end:end);
},
'package:flutter/src/animation/tween.dart@SizeTween@lerp': (m.Scope scope, SizeTween target)=>target.lerp,
'package:flutter/src/animation/tween.dart@RectTween@#as': (m.Scope scope, target)=>()=>target as RectTween,
'package:flutter/src/animation/tween.dart@RectTween@#is': (m.Scope scope, target)=>()=>target is RectTween,
'package:flutter/src/animation/tween.dart@RectTween@': (m.Scope scope)=>({ begin,  end}){
return RectTween(begin:begin, end:end);
},
'package:flutter/src/animation/tween.dart@RectTween@lerp': (m.Scope scope, RectTween target)=>target.lerp,
'package:flutter/src/animation/tween.dart@IntTween@#as': (m.Scope scope, target)=>()=>target as IntTween,
'package:flutter/src/animation/tween.dart@IntTween@#is': (m.Scope scope, target)=>()=>target is IntTween,
'package:flutter/src/animation/tween.dart@IntTween@': (m.Scope scope)=>({ begin,  end}){
return IntTween(begin:begin, end:end);
},
'package:flutter/src/animation/tween.dart@IntTween@lerp': (m.Scope scope, IntTween target)=>target.lerp,
'package:flutter/src/animation/tween.dart@StepTween@#as': (m.Scope scope, target)=>()=>target as StepTween,
'package:flutter/src/animation/tween.dart@StepTween@#is': (m.Scope scope, target)=>()=>target is StepTween,
'package:flutter/src/animation/tween.dart@StepTween@': (m.Scope scope)=>({ begin,  end}){
return StepTween(begin:begin, end:end);
},
'package:flutter/src/animation/tween.dart@StepTween@lerp': (m.Scope scope, StepTween target)=>target.lerp,
'package:flutter/src/animation/tween.dart@ConstantTween@#as': (m.Scope scope, target)=>()=>target as ConstantTween,
'package:flutter/src/animation/tween.dart@ConstantTween@#is': (m.Scope scope, target)=>()=>target is ConstantTween,
'package:flutter/src/animation/tween.dart@ConstantTween@': (m.Scope scope)=>ConstantTween,
'package:flutter/src/animation/tween.dart@ConstantTween@lerp': (m.Scope scope, ConstantTween target)=>target.lerp,
'package:flutter/src/animation/tween.dart@ConstantTween@toString': (m.Scope scope, ConstantTween target)=>target.toString,
'package:flutter/src/animation/tween.dart@CurveTween@#as': (m.Scope scope, target)=>()=>target as CurveTween,
'package:flutter/src/animation/tween.dart@CurveTween@#is': (m.Scope scope, target)=>()=>target is CurveTween,
'package:flutter/src/animation/tween.dart@CurveTween@curve': (m.Scope scope, CurveTween target)=>target.curve,
'package:flutter/src/animation/tween.dart@CurveTween@curve:set': (m.Scope scope, CurveTween target)=>(other)=>target.curve=other,
'package:flutter/src/animation/tween.dart@CurveTween@': (m.Scope scope)=>CurveTween,
'package:flutter/src/animation/tween.dart@CurveTween@transform': (m.Scope scope, CurveTween target)=>target.transform,
'package:flutter/src/animation/tween.dart@CurveTween@toString': (m.Scope scope, CurveTween target)=>target.toString,

};
}