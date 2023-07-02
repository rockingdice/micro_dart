import 'package:flutter/src/widgets/tween_animation_builder.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/implicit_animations.dart';
import 'package:flutter/src/widgets/value_listenable_builder.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/tween_animation_builder.dart@TweenAnimationBuilder@#as': (m.Scope scope, target)=>()=>target as TweenAnimationBuilder,
'package:flutter/src/widgets/tween_animation_builder.dart@TweenAnimationBuilder@#is': (m.Scope scope, target)=>()=>target is TweenAnimationBuilder,
'package:flutter/src/widgets/tween_animation_builder.dart@TweenAnimationBuilder@tween': (m.Scope scope, TweenAnimationBuilder target)=>target.tween,
'package:flutter/src/widgets/tween_animation_builder.dart@TweenAnimationBuilder@builder': (m.Scope scope, TweenAnimationBuilder target)=>target.builder,
'package:flutter/src/widgets/tween_animation_builder.dart@TweenAnimationBuilder@child': (m.Scope scope, TweenAnimationBuilder target)=>target.child,
'package:flutter/src/widgets/tween_animation_builder.dart@TweenAnimationBuilder@': (m.Scope scope)=>({ builder,  child,  curve,  duration,  key,  onEnd,  tween}){
Widget builderProxy<T>( context,  value,  child) {
return  engine.callFunctionPointer(scope, builder!,[context, value, child], {});
}

void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return TweenAnimationBuilder(builder:builderProxy, child:child, curve:curve ?? Curves.linear, duration:duration, key:key, onEnd:onEnd == null ? null :onEndProxy, tween:tween);
},
'package:flutter/src/widgets/tween_animation_builder.dart@TweenAnimationBuilder@createState': (m.Scope scope, TweenAnimationBuilder target)=>target.createState,

};
}