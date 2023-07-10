import 'package:flutter/src/widgets/implicit_animations.dart';
import 'dart:ui' show TextHeightBehavior;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/implicit_animations.dart@BoxConstraintsTween@#as': (m.Scope scope, target)=>()=>target as BoxConstraintsTween,
'package:flutter/src/widgets/implicit_animations.dart@BoxConstraintsTween@#is': (m.Scope scope, target)=>()=>target is BoxConstraintsTween,
'package:flutter/src/widgets/implicit_animations.dart@BoxConstraintsTween@': (m.Scope scope)=>({ begin,  end}){
return BoxConstraintsTween(begin:begin, end:end);
},
'package:flutter/src/widgets/implicit_animations.dart@BoxConstraintsTween@lerp': (m.Scope scope, BoxConstraintsTween target)=>target.lerp,
'package:flutter/src/widgets/implicit_animations.dart@DecorationTween@#as': (m.Scope scope, target)=>()=>target as DecorationTween,
'package:flutter/src/widgets/implicit_animations.dart@DecorationTween@#is': (m.Scope scope, target)=>()=>target is DecorationTween,
'package:flutter/src/widgets/implicit_animations.dart@DecorationTween@': (m.Scope scope)=>({ begin,  end}){
return DecorationTween(begin:begin, end:end);
},
'package:flutter/src/widgets/implicit_animations.dart@DecorationTween@lerp': (m.Scope scope, DecorationTween target)=>target.lerp,
'package:flutter/src/widgets/implicit_animations.dart@EdgeInsetsTween@#as': (m.Scope scope, target)=>()=>target as EdgeInsetsTween,
'package:flutter/src/widgets/implicit_animations.dart@EdgeInsetsTween@#is': (m.Scope scope, target)=>()=>target is EdgeInsetsTween,
'package:flutter/src/widgets/implicit_animations.dart@EdgeInsetsTween@': (m.Scope scope)=>({ begin,  end}){
return EdgeInsetsTween(begin:begin, end:end);
},
'package:flutter/src/widgets/implicit_animations.dart@EdgeInsetsTween@lerp': (m.Scope scope, EdgeInsetsTween target)=>target.lerp,
'package:flutter/src/widgets/implicit_animations.dart@EdgeInsetsGeometryTween@#as': (m.Scope scope, target)=>()=>target as EdgeInsetsGeometryTween,
'package:flutter/src/widgets/implicit_animations.dart@EdgeInsetsGeometryTween@#is': (m.Scope scope, target)=>()=>target is EdgeInsetsGeometryTween,
'package:flutter/src/widgets/implicit_animations.dart@EdgeInsetsGeometryTween@': (m.Scope scope)=>({ begin,  end}){
return EdgeInsetsGeometryTween(begin:begin, end:end);
},
'package:flutter/src/widgets/implicit_animations.dart@EdgeInsetsGeometryTween@lerp': (m.Scope scope, EdgeInsetsGeometryTween target)=>target.lerp,
'package:flutter/src/widgets/implicit_animations.dart@BorderRadiusTween@#as': (m.Scope scope, target)=>()=>target as BorderRadiusTween,
'package:flutter/src/widgets/implicit_animations.dart@BorderRadiusTween@#is': (m.Scope scope, target)=>()=>target is BorderRadiusTween,
'package:flutter/src/widgets/implicit_animations.dart@BorderRadiusTween@': (m.Scope scope)=>({ begin,  end}){
return BorderRadiusTween(begin:begin, end:end);
},
'package:flutter/src/widgets/implicit_animations.dart@BorderRadiusTween@lerp': (m.Scope scope, BorderRadiusTween target)=>target.lerp,
'package:flutter/src/widgets/implicit_animations.dart@BorderTween@#as': (m.Scope scope, target)=>()=>target as BorderTween,
'package:flutter/src/widgets/implicit_animations.dart@BorderTween@#is': (m.Scope scope, target)=>()=>target is BorderTween,
'package:flutter/src/widgets/implicit_animations.dart@BorderTween@': (m.Scope scope)=>({ begin,  end}){
return BorderTween(begin:begin, end:end);
},
'package:flutter/src/widgets/implicit_animations.dart@BorderTween@lerp': (m.Scope scope, BorderTween target)=>target.lerp,
'package:flutter/src/widgets/implicit_animations.dart@Matrix4Tween@#as': (m.Scope scope, target)=>()=>target as Matrix4Tween,
'package:flutter/src/widgets/implicit_animations.dart@Matrix4Tween@#is': (m.Scope scope, target)=>()=>target is Matrix4Tween,
'package:flutter/src/widgets/implicit_animations.dart@Matrix4Tween@': (m.Scope scope)=>({ begin,  end}){
return Matrix4Tween(begin:begin, end:end);
},
'package:flutter/src/widgets/implicit_animations.dart@Matrix4Tween@lerp': (m.Scope scope, Matrix4Tween target)=>target.lerp,
'package:flutter/src/widgets/implicit_animations.dart@TextStyleTween@#as': (m.Scope scope, target)=>()=>target as TextStyleTween,
'package:flutter/src/widgets/implicit_animations.dart@TextStyleTween@#is': (m.Scope scope, target)=>()=>target is TextStyleTween,
'package:flutter/src/widgets/implicit_animations.dart@TextStyleTween@': (m.Scope scope)=>({ begin,  end}){
return TextStyleTween(begin:begin, end:end);
},
'package:flutter/src/widgets/implicit_animations.dart@TextStyleTween@lerp': (m.Scope scope, TextStyleTween target)=>target.lerp,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidget@#as': (m.Scope scope, target)=>()=>target as ImplicitlyAnimatedWidget,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidget@#is': (m.Scope scope, target)=>()=>target is ImplicitlyAnimatedWidget,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidget@curve': (m.Scope scope, ImplicitlyAnimatedWidget target)=>target.curve,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidget@duration': (m.Scope scope, ImplicitlyAnimatedWidget target)=>target.duration,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidget@onEnd': (m.Scope scope, ImplicitlyAnimatedWidget target)=>target.onEnd,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidget@createState': (m.Scope scope, ImplicitlyAnimatedWidget target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidget@debugFillProperties': (m.Scope scope, ImplicitlyAnimatedWidget target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidgetState@#as': (m.Scope scope, target)=>()=>target as ImplicitlyAnimatedWidgetState,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidgetState@#is': (m.Scope scope, target)=>()=>target is ImplicitlyAnimatedWidgetState,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidgetState@controller': (m.Scope scope, ImplicitlyAnimatedWidgetState target)=>target.controller,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidgetState@animation': (m.Scope scope, ImplicitlyAnimatedWidgetState target)=>target.animation,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidgetState@initState': (m.Scope scope, ImplicitlyAnimatedWidgetState target)=>target.initState,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidgetState@didUpdateWidget': (m.Scope scope, ImplicitlyAnimatedWidgetState target)=>target.didUpdateWidget,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidgetState@dispose': (m.Scope scope, ImplicitlyAnimatedWidgetState target)=>target.dispose,
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidgetState@forEachTween': (m.Scope scope, ImplicitlyAnimatedWidgetState target)=>( visitor){
Tween<dynamic> visitorProxy( tween,  targetValue,  constructor) {
return  engine.callFunctionPointer(scope, visitor!,[tween, targetValue, constructor], {});
}

target.forEachTween(visitorProxy);
},
'package:flutter/src/widgets/implicit_animations.dart@ImplicitlyAnimatedWidgetState@didUpdateTweens': (m.Scope scope, ImplicitlyAnimatedWidgetState target)=>target.didUpdateTweens,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedWidgetBaseState@#as': (m.Scope scope, target)=>()=>target as AnimatedWidgetBaseState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedWidgetBaseState@#is': (m.Scope scope, target)=>()=>target is AnimatedWidgetBaseState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedWidgetBaseState@initState': (m.Scope scope, AnimatedWidgetBaseState target)=>target.initState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@#as': (m.Scope scope, target)=>()=>target as AnimatedContainer,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@#is': (m.Scope scope, target)=>()=>target is AnimatedContainer,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@child': (m.Scope scope, AnimatedContainer target)=>target.child,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@alignment': (m.Scope scope, AnimatedContainer target)=>target.alignment,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@padding': (m.Scope scope, AnimatedContainer target)=>target.padding,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@decoration': (m.Scope scope, AnimatedContainer target)=>target.decoration,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@foregroundDecoration': (m.Scope scope, AnimatedContainer target)=>target.foregroundDecoration,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@constraints': (m.Scope scope, AnimatedContainer target)=>target.constraints,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@margin': (m.Scope scope, AnimatedContainer target)=>target.margin,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@transform': (m.Scope scope, AnimatedContainer target)=>target.transform,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@transformAlignment': (m.Scope scope, AnimatedContainer target)=>target.transformAlignment,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@clipBehavior': (m.Scope scope, AnimatedContainer target)=>target.clipBehavior,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@': (m.Scope scope)=>({ alignment,  child,  clipBehavior,  color,  constraints,  curve,  decoration,  duration,  foregroundDecoration,  height,  key,  margin,  onEnd,  padding,  transform,  transformAlignment,  width}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedContainer(alignment:alignment, child:child, clipBehavior:clipBehavior ?? Clip.none, color:color, constraints:constraints, curve:curve ?? Curves.linear, decoration:decoration, duration:duration, foregroundDecoration:foregroundDecoration, height:height, key:key, margin:margin, onEnd:onEnd == null ? null :onEndProxy, padding:padding, transform:transform, transformAlignment:transformAlignment, width:width);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@createState': (m.Scope scope, AnimatedContainer target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedContainer@debugFillProperties': (m.Scope scope, AnimatedContainer target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPadding@#as': (m.Scope scope, target)=>()=>target as AnimatedPadding,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPadding@#is': (m.Scope scope, target)=>()=>target is AnimatedPadding,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPadding@padding': (m.Scope scope, AnimatedPadding target)=>target.padding,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPadding@child': (m.Scope scope, AnimatedPadding target)=>target.child,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPadding@': (m.Scope scope)=>({ child,  curve,  duration,  key,  onEnd,  padding}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedPadding(child:child, curve:curve ?? Curves.linear, duration:duration, key:key, onEnd:onEnd == null ? null :onEndProxy, padding:padding);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPadding@createState': (m.Scope scope, AnimatedPadding target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPadding@debugFillProperties': (m.Scope scope, AnimatedPadding target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedAlign@#as': (m.Scope scope, target)=>()=>target as AnimatedAlign,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedAlign@#is': (m.Scope scope, target)=>()=>target is AnimatedAlign,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedAlign@alignment': (m.Scope scope, AnimatedAlign target)=>target.alignment,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedAlign@child': (m.Scope scope, AnimatedAlign target)=>target.child,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedAlign@heightFactor': (m.Scope scope, AnimatedAlign target)=>target.heightFactor,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedAlign@widthFactor': (m.Scope scope, AnimatedAlign target)=>target.widthFactor,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedAlign@': (m.Scope scope)=>({ alignment,  child,  curve,  duration,  heightFactor,  key,  onEnd,  widthFactor}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedAlign(alignment:alignment, child:child, curve:curve ?? Curves.linear, duration:duration, heightFactor:heightFactor, key:key, onEnd:onEnd == null ? null :onEndProxy, widthFactor:widthFactor);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedAlign@createState': (m.Scope scope, AnimatedAlign target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedAlign@debugFillProperties': (m.Scope scope, AnimatedAlign target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@#as': (m.Scope scope, target)=>()=>target as AnimatedPositioned,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@#is': (m.Scope scope, target)=>()=>target is AnimatedPositioned,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@child': (m.Scope scope, AnimatedPositioned target)=>target.child,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@left': (m.Scope scope, AnimatedPositioned target)=>target.left,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@top': (m.Scope scope, AnimatedPositioned target)=>target.top,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@right': (m.Scope scope, AnimatedPositioned target)=>target.right,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@bottom': (m.Scope scope, AnimatedPositioned target)=>target.bottom,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@width': (m.Scope scope, AnimatedPositioned target)=>target.width,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@height': (m.Scope scope, AnimatedPositioned target)=>target.height,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@': (m.Scope scope)=>({ bottom,  child,  curve,  duration,  height,  key,  left,  onEnd,  right,  top,  width}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedPositioned(bottom:bottom, child:child, curve:curve ?? Curves.linear, duration:duration, height:height, key:key, left:left, onEnd:onEnd == null ? null :onEndProxy, right:right, top:top, width:width);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@fromRect': (m.Scope scope)=>({ child,  curve,  duration,  key,  onEnd,  rect}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedPositioned.fromRect(child:child, curve:curve ?? Curves.linear, duration:duration, key:key, onEnd:onEnd == null ? null :onEndProxy, rect:rect);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@createState': (m.Scope scope, AnimatedPositioned target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositioned@debugFillProperties': (m.Scope scope, AnimatedPositioned target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositionedDirectional@#as': (m.Scope scope, target)=>()=>target as AnimatedPositionedDirectional,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositionedDirectional@#is': (m.Scope scope, target)=>()=>target is AnimatedPositionedDirectional,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositionedDirectional@child': (m.Scope scope, AnimatedPositionedDirectional target)=>target.child,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositionedDirectional@start': (m.Scope scope, AnimatedPositionedDirectional target)=>target.start,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositionedDirectional@top': (m.Scope scope, AnimatedPositionedDirectional target)=>target.top,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositionedDirectional@end': (m.Scope scope, AnimatedPositionedDirectional target)=>target.end,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositionedDirectional@bottom': (m.Scope scope, AnimatedPositionedDirectional target)=>target.bottom,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositionedDirectional@width': (m.Scope scope, AnimatedPositionedDirectional target)=>target.width,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositionedDirectional@height': (m.Scope scope, AnimatedPositionedDirectional target)=>target.height,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositionedDirectional@': (m.Scope scope)=>({ bottom,  child,  curve,  duration,  end,  height,  key,  onEnd,  start,  top,  width}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedPositionedDirectional(bottom:bottom, child:child, curve:curve ?? Curves.linear, duration:duration, end:end, height:height, key:key, onEnd:onEnd == null ? null :onEndProxy, start:start, top:top, width:width);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositionedDirectional@createState': (m.Scope scope, AnimatedPositionedDirectional target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPositionedDirectional@debugFillProperties': (m.Scope scope, AnimatedPositionedDirectional target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedScale@#as': (m.Scope scope, target)=>()=>target as AnimatedScale,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedScale@#is': (m.Scope scope, target)=>()=>target is AnimatedScale,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedScale@child': (m.Scope scope, AnimatedScale target)=>target.child,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedScale@scale': (m.Scope scope, AnimatedScale target)=>target.scale,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedScale@alignment': (m.Scope scope, AnimatedScale target)=>target.alignment,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedScale@filterQuality': (m.Scope scope, AnimatedScale target)=>target.filterQuality,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedScale@': (m.Scope scope)=>({ alignment,  child,  curve,  duration,  filterQuality,  key,  onEnd,  scale}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedScale(alignment:alignment ?? Alignment.center, child:child, curve:curve ?? Curves.linear, duration:duration, filterQuality:filterQuality, key:key, onEnd:onEnd == null ? null :onEndProxy, scale:scale);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedScale@createState': (m.Scope scope, AnimatedScale target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedScale@debugFillProperties': (m.Scope scope, AnimatedScale target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedRotation@#as': (m.Scope scope, target)=>()=>target as AnimatedRotation,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedRotation@#is': (m.Scope scope, target)=>()=>target is AnimatedRotation,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedRotation@child': (m.Scope scope, AnimatedRotation target)=>target.child,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedRotation@turns': (m.Scope scope, AnimatedRotation target)=>target.turns,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedRotation@alignment': (m.Scope scope, AnimatedRotation target)=>target.alignment,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedRotation@filterQuality': (m.Scope scope, AnimatedRotation target)=>target.filterQuality,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedRotation@': (m.Scope scope)=>({ alignment,  child,  curve,  duration,  filterQuality,  key,  onEnd,  turns}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedRotation(alignment:alignment ?? Alignment.center, child:child, curve:curve ?? Curves.linear, duration:duration, filterQuality:filterQuality, key:key, onEnd:onEnd == null ? null :onEndProxy, turns:turns);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedRotation@createState': (m.Scope scope, AnimatedRotation target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedRotation@debugFillProperties': (m.Scope scope, AnimatedRotation target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedSlide@#as': (m.Scope scope, target)=>()=>target as AnimatedSlide,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedSlide@#is': (m.Scope scope, target)=>()=>target is AnimatedSlide,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedSlide@child': (m.Scope scope, AnimatedSlide target)=>target.child,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedSlide@offset': (m.Scope scope, AnimatedSlide target)=>target.offset,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedSlide@': (m.Scope scope)=>({ child,  curve,  duration,  key,  offset,  onEnd}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedSlide(child:child, curve:curve ?? Curves.linear, duration:duration, key:key, offset:offset, onEnd:onEnd == null ? null :onEndProxy);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedSlide@createState': (m.Scope scope, AnimatedSlide target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedSlide@debugFillProperties': (m.Scope scope, AnimatedSlide target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedOpacity@#as': (m.Scope scope, target)=>()=>target as AnimatedOpacity,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedOpacity@#is': (m.Scope scope, target)=>()=>target is AnimatedOpacity,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedOpacity@child': (m.Scope scope, AnimatedOpacity target)=>target.child,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedOpacity@opacity': (m.Scope scope, AnimatedOpacity target)=>target.opacity,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedOpacity@alwaysIncludeSemantics': (m.Scope scope, AnimatedOpacity target)=>target.alwaysIncludeSemantics,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedOpacity@': (m.Scope scope)=>({ alwaysIncludeSemantics,  child,  curve,  duration,  key,  onEnd,  opacity}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedOpacity(alwaysIncludeSemantics:alwaysIncludeSemantics ?? false, child:child, curve:curve ?? Curves.linear, duration:duration, key:key, onEnd:onEnd == null ? null :onEndProxy, opacity:opacity);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedOpacity@createState': (m.Scope scope, AnimatedOpacity target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedOpacity@debugFillProperties': (m.Scope scope, AnimatedOpacity target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@SliverAnimatedOpacity@#as': (m.Scope scope, target)=>()=>target as SliverAnimatedOpacity,
'package:flutter/src/widgets/implicit_animations.dart@SliverAnimatedOpacity@#is': (m.Scope scope, target)=>()=>target is SliverAnimatedOpacity,
'package:flutter/src/widgets/implicit_animations.dart@SliverAnimatedOpacity@sliver': (m.Scope scope, SliverAnimatedOpacity target)=>target.sliver,
'package:flutter/src/widgets/implicit_animations.dart@SliverAnimatedOpacity@opacity': (m.Scope scope, SliverAnimatedOpacity target)=>target.opacity,
'package:flutter/src/widgets/implicit_animations.dart@SliverAnimatedOpacity@alwaysIncludeSemantics': (m.Scope scope, SliverAnimatedOpacity target)=>target.alwaysIncludeSemantics,
'package:flutter/src/widgets/implicit_animations.dart@SliverAnimatedOpacity@': (m.Scope scope)=>({ alwaysIncludeSemantics,  curve,  duration,  key,  onEnd,  opacity,  sliver}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return SliverAnimatedOpacity(alwaysIncludeSemantics:alwaysIncludeSemantics ?? false, curve:curve ?? Curves.linear, duration:duration, key:key, onEnd:onEnd == null ? null :onEndProxy, opacity:opacity, sliver:sliver);
},
'package:flutter/src/widgets/implicit_animations.dart@SliverAnimatedOpacity@createState': (m.Scope scope, SliverAnimatedOpacity target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@SliverAnimatedOpacity@debugFillProperties': (m.Scope scope, SliverAnimatedOpacity target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@#as': (m.Scope scope, target)=>()=>target as AnimatedDefaultTextStyle,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@#is': (m.Scope scope, target)=>()=>target is AnimatedDefaultTextStyle,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@child': (m.Scope scope, AnimatedDefaultTextStyle target)=>target.child,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@style': (m.Scope scope, AnimatedDefaultTextStyle target)=>target.style,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@textAlign': (m.Scope scope, AnimatedDefaultTextStyle target)=>target.textAlign,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@softWrap': (m.Scope scope, AnimatedDefaultTextStyle target)=>target.softWrap,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@overflow': (m.Scope scope, AnimatedDefaultTextStyle target)=>target.overflow,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@maxLines': (m.Scope scope, AnimatedDefaultTextStyle target)=>target.maxLines,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@textWidthBasis': (m.Scope scope, AnimatedDefaultTextStyle target)=>target.textWidthBasis,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@textHeightBehavior': (m.Scope scope, AnimatedDefaultTextStyle target)=>target.textHeightBehavior,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@': (m.Scope scope)=>({ child,  curve,  duration,  key,  maxLines,  onEnd,  overflow,  softWrap,  style,  textAlign,  textHeightBehavior,  textWidthBasis}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedDefaultTextStyle(child:child, curve:curve ?? Curves.linear, duration:duration, key:key, maxLines:maxLines, onEnd:onEnd == null ? null :onEndProxy, overflow:overflow ?? TextOverflow.clip, softWrap:softWrap ?? true, style:style, textAlign:textAlign, textHeightBehavior:textHeightBehavior, textWidthBasis:textWidthBasis ?? TextWidthBasis.parent);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@createState': (m.Scope scope, AnimatedDefaultTextStyle target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedDefaultTextStyle@debugFillProperties': (m.Scope scope, AnimatedDefaultTextStyle target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@#as': (m.Scope scope, target)=>()=>target as AnimatedPhysicalModel,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@#is': (m.Scope scope, target)=>()=>target is AnimatedPhysicalModel,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@child': (m.Scope scope, AnimatedPhysicalModel target)=>target.child,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@shape': (m.Scope scope, AnimatedPhysicalModel target)=>target.shape,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@clipBehavior': (m.Scope scope, AnimatedPhysicalModel target)=>target.clipBehavior,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@borderRadius': (m.Scope scope, AnimatedPhysicalModel target)=>target.borderRadius,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@elevation': (m.Scope scope, AnimatedPhysicalModel target)=>target.elevation,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@color': (m.Scope scope, AnimatedPhysicalModel target)=>target.color,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@animateColor': (m.Scope scope, AnimatedPhysicalModel target)=>target.animateColor,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@shadowColor': (m.Scope scope, AnimatedPhysicalModel target)=>target.shadowColor,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@animateShadowColor': (m.Scope scope, AnimatedPhysicalModel target)=>target.animateShadowColor,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@': (m.Scope scope)=>({ animateColor,  animateShadowColor,  borderRadius,  child,  clipBehavior,  color,  curve,  duration,  elevation,  key,  onEnd,  shadowColor,  shape}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedPhysicalModel(animateColor:animateColor ?? true, animateShadowColor:animateShadowColor ?? true, borderRadius:borderRadius ?? BorderRadius.zero, child:child, clipBehavior:clipBehavior ?? Clip.none, color:color, curve:curve ?? Curves.linear, duration:duration, elevation:elevation, key:key, onEnd:onEnd == null ? null :onEndProxy, shadowColor:shadowColor, shape:shape);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@createState': (m.Scope scope, AnimatedPhysicalModel target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedPhysicalModel@debugFillProperties': (m.Scope scope, AnimatedPhysicalModel target)=>target.debugFillProperties,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedFractionallySizedBox@#as': (m.Scope scope, target)=>()=>target as AnimatedFractionallySizedBox,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedFractionallySizedBox@#is': (m.Scope scope, target)=>()=>target is AnimatedFractionallySizedBox,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedFractionallySizedBox@child': (m.Scope scope, AnimatedFractionallySizedBox target)=>target.child,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedFractionallySizedBox@heightFactor': (m.Scope scope, AnimatedFractionallySizedBox target)=>target.heightFactor,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedFractionallySizedBox@widthFactor': (m.Scope scope, AnimatedFractionallySizedBox target)=>target.widthFactor,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedFractionallySizedBox@alignment': (m.Scope scope, AnimatedFractionallySizedBox target)=>target.alignment,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedFractionallySizedBox@': (m.Scope scope)=>({ alignment,  child,  curve,  duration,  heightFactor,  key,  onEnd,  widthFactor}){
void onEndProxy() {
 engine.callFunctionPointer(scope, onEnd!,[], {});
}

return AnimatedFractionallySizedBox(alignment:alignment ?? Alignment.center, child:child, curve:curve ?? Curves.linear, duration:duration, heightFactor:heightFactor, key:key, onEnd:onEnd == null ? null :onEndProxy, widthFactor:widthFactor);
},
'package:flutter/src/widgets/implicit_animations.dart@AnimatedFractionallySizedBox@createState': (m.Scope scope, AnimatedFractionallySizedBox target)=>target.createState,
'package:flutter/src/widgets/implicit_animations.dart@AnimatedFractionallySizedBox@debugFillProperties': (m.Scope scope, AnimatedFractionallySizedBox target)=>target.debugFillProperties,

};
}