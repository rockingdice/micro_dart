import 'package:flutter/src/rendering/proxy_box.dart';
import 'dart:ui' show Color,Gradient,Image,ImageFilter;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/layout_helper.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/proxy_box.dart@RenderProxyBox@#as': (m.Scope scope, target)=>()=>target as RenderProxyBox,
'package:flutter/src/rendering/proxy_box.dart@RenderProxyBox@#is': (m.Scope scope, target)=>()=>target is RenderProxyBox,
'package:flutter/src/rendering/proxy_box.dart@RenderProxyBox@': (m.Scope scope)=>([RenderBox? child]){
if(child == null){
return RenderProxyBox();
}
return RenderProxyBox(child!);
},
'package:flutter/src/rendering/proxy_box.dart@RenderProxyBoxWithHitTestBehavior@#as': (m.Scope scope, target)=>()=>target as RenderProxyBoxWithHitTestBehavior,
'package:flutter/src/rendering/proxy_box.dart@RenderProxyBoxWithHitTestBehavior@#is': (m.Scope scope, target)=>()=>target is RenderProxyBoxWithHitTestBehavior,
'package:flutter/src/rendering/proxy_box.dart@RenderProxyBoxWithHitTestBehavior@behavior': (m.Scope scope, RenderProxyBoxWithHitTestBehavior target)=>target.behavior,
'package:flutter/src/rendering/proxy_box.dart@RenderProxyBoxWithHitTestBehavior@behavior:set': (m.Scope scope, RenderProxyBoxWithHitTestBehavior target)=>(other)=>target.behavior=other,
'package:flutter/src/rendering/proxy_box.dart@RenderProxyBoxWithHitTestBehavior@hitTest': (m.Scope scope, RenderProxyBoxWithHitTestBehavior target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderProxyBoxWithHitTestBehavior@hitTestSelf': (m.Scope scope, RenderProxyBoxWithHitTestBehavior target)=>target.hitTestSelf,
'package:flutter/src/rendering/proxy_box.dart@RenderProxyBoxWithHitTestBehavior@debugFillProperties': (m.Scope scope, RenderProxyBoxWithHitTestBehavior target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@#as': (m.Scope scope, target)=>()=>target as RenderConstrainedBox,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@#is': (m.Scope scope, target)=>()=>target is RenderConstrainedBox,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@additionalConstraints': (m.Scope scope, RenderConstrainedBox target)=>target.additionalConstraints,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@additionalConstraints:set': (m.Scope scope, RenderConstrainedBox target)=>(other)=>target.additionalConstraints=other,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@': (m.Scope scope)=>RenderConstrainedBox,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@computeMinIntrinsicWidth': (m.Scope scope, RenderConstrainedBox target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@computeMaxIntrinsicWidth': (m.Scope scope, RenderConstrainedBox target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@computeMinIntrinsicHeight': (m.Scope scope, RenderConstrainedBox target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@computeMaxIntrinsicHeight': (m.Scope scope, RenderConstrainedBox target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@performLayout': (m.Scope scope, RenderConstrainedBox target)=>target.performLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@computeDryLayout': (m.Scope scope, RenderConstrainedBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@debugPaintSize': (m.Scope scope, RenderConstrainedBox target)=>target.debugPaintSize,
'package:flutter/src/rendering/proxy_box.dart@RenderConstrainedBox@debugFillProperties': (m.Scope scope, RenderConstrainedBox target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderLimitedBox@#as': (m.Scope scope, target)=>()=>target as RenderLimitedBox,
'package:flutter/src/rendering/proxy_box.dart@RenderLimitedBox@#is': (m.Scope scope, target)=>()=>target is RenderLimitedBox,
'package:flutter/src/rendering/proxy_box.dart@RenderLimitedBox@maxWidth': (m.Scope scope, RenderLimitedBox target)=>target.maxWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderLimitedBox@maxWidth:set': (m.Scope scope, RenderLimitedBox target)=>(other)=>target.maxWidth=other,
'package:flutter/src/rendering/proxy_box.dart@RenderLimitedBox@maxHeight': (m.Scope scope, RenderLimitedBox target)=>target.maxHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderLimitedBox@maxHeight:set': (m.Scope scope, RenderLimitedBox target)=>(other)=>target.maxHeight=other,
'package:flutter/src/rendering/proxy_box.dart@RenderLimitedBox@': (m.Scope scope)=>({ child,  maxHeight,  maxWidth}){
return RenderLimitedBox(child:child, maxHeight:maxHeight ?? double.infinity, maxWidth:maxWidth ?? double.infinity);
},
'package:flutter/src/rendering/proxy_box.dart@RenderLimitedBox@computeDryLayout': (m.Scope scope, RenderLimitedBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderLimitedBox@performLayout': (m.Scope scope, RenderLimitedBox target)=>target.performLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderLimitedBox@debugFillProperties': (m.Scope scope, RenderLimitedBox target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderAspectRatio@#as': (m.Scope scope, target)=>()=>target as RenderAspectRatio,
'package:flutter/src/rendering/proxy_box.dart@RenderAspectRatio@#is': (m.Scope scope, target)=>()=>target is RenderAspectRatio,
'package:flutter/src/rendering/proxy_box.dart@RenderAspectRatio@aspectRatio': (m.Scope scope, RenderAspectRatio target)=>target.aspectRatio,
'package:flutter/src/rendering/proxy_box.dart@RenderAspectRatio@aspectRatio:set': (m.Scope scope, RenderAspectRatio target)=>(other)=>target.aspectRatio=other,
'package:flutter/src/rendering/proxy_box.dart@RenderAspectRatio@': (m.Scope scope)=>RenderAspectRatio,
'package:flutter/src/rendering/proxy_box.dart@RenderAspectRatio@computeMinIntrinsicWidth': (m.Scope scope, RenderAspectRatio target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderAspectRatio@computeMaxIntrinsicWidth': (m.Scope scope, RenderAspectRatio target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderAspectRatio@computeMinIntrinsicHeight': (m.Scope scope, RenderAspectRatio target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderAspectRatio@computeMaxIntrinsicHeight': (m.Scope scope, RenderAspectRatio target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderAspectRatio@computeDryLayout': (m.Scope scope, RenderAspectRatio target)=>target.computeDryLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderAspectRatio@performLayout': (m.Scope scope, RenderAspectRatio target)=>target.performLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderAspectRatio@debugFillProperties': (m.Scope scope, RenderAspectRatio target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@#as': (m.Scope scope, target)=>()=>target as RenderIntrinsicWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@#is': (m.Scope scope, target)=>()=>target is RenderIntrinsicWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@stepWidth': (m.Scope scope, RenderIntrinsicWidth target)=>target.stepWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@stepWidth:set': (m.Scope scope, RenderIntrinsicWidth target)=>(other)=>target.stepWidth=other,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@stepHeight': (m.Scope scope, RenderIntrinsicWidth target)=>target.stepHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@stepHeight:set': (m.Scope scope, RenderIntrinsicWidth target)=>(other)=>target.stepHeight=other,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@': (m.Scope scope)=>({ child,  stepHeight,  stepWidth}){
return RenderIntrinsicWidth(child:child, stepHeight:stepHeight, stepWidth:stepWidth);
},
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@computeMinIntrinsicWidth': (m.Scope scope, RenderIntrinsicWidth target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@computeMaxIntrinsicWidth': (m.Scope scope, RenderIntrinsicWidth target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@computeMinIntrinsicHeight': (m.Scope scope, RenderIntrinsicWidth target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@computeMaxIntrinsicHeight': (m.Scope scope, RenderIntrinsicWidth target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@computeDryLayout': (m.Scope scope, RenderIntrinsicWidth target)=>target.computeDryLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@performLayout': (m.Scope scope, RenderIntrinsicWidth target)=>target.performLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicWidth@debugFillProperties': (m.Scope scope, RenderIntrinsicWidth target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicHeight@#as': (m.Scope scope, target)=>()=>target as RenderIntrinsicHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicHeight@#is': (m.Scope scope, target)=>()=>target is RenderIntrinsicHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicHeight@': (m.Scope scope)=>({ child}){
return RenderIntrinsicHeight(child:child);
},
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicHeight@computeMinIntrinsicWidth': (m.Scope scope, RenderIntrinsicHeight target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicHeight@computeMaxIntrinsicWidth': (m.Scope scope, RenderIntrinsicHeight target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicHeight@computeMinIntrinsicHeight': (m.Scope scope, RenderIntrinsicHeight target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicHeight@computeDryLayout': (m.Scope scope, RenderIntrinsicHeight target)=>target.computeDryLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderIntrinsicHeight@performLayout': (m.Scope scope, RenderIntrinsicHeight target)=>target.performLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@#as': (m.Scope scope, target)=>()=>target as RenderOpacity,
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@#is': (m.Scope scope, target)=>()=>target is RenderOpacity,
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@alwaysNeedsCompositing': (m.Scope scope, RenderOpacity target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@isRepaintBoundary': (m.Scope scope, RenderOpacity target)=>target.isRepaintBoundary,
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@opacity': (m.Scope scope, RenderOpacity target)=>target.opacity,
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@opacity:set': (m.Scope scope, RenderOpacity target)=>(other)=>target.opacity=other,
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@alwaysIncludeSemantics': (m.Scope scope, RenderOpacity target)=>target.alwaysIncludeSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@alwaysIncludeSemantics:set': (m.Scope scope, RenderOpacity target)=>(other)=>target.alwaysIncludeSemantics=other,
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@': (m.Scope scope)=>({ alwaysIncludeSemantics,  child,  opacity}){
return RenderOpacity(alwaysIncludeSemantics:alwaysIncludeSemantics ?? false, child:child, opacity:opacity ?? 1.0);
},
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@paintsChild': (m.Scope scope, RenderOpacity target)=>target.paintsChild,
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@updateCompositedLayer': (m.Scope scope, RenderOpacity target)=>target.updateCompositedLayer,
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@paint': (m.Scope scope, RenderOpacity target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@visitChildrenForSemantics': (m.Scope scope, RenderOpacity target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildrenForSemantics(visitorProxy);
},
'package:flutter/src/rendering/proxy_box.dart@RenderOpacity@debugFillProperties': (m.Scope scope, RenderOpacity target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderAnimatedOpacity@#as': (m.Scope scope, target)=>()=>target as RenderAnimatedOpacity,
'package:flutter/src/rendering/proxy_box.dart@RenderAnimatedOpacity@#is': (m.Scope scope, target)=>()=>target is RenderAnimatedOpacity,
'package:flutter/src/rendering/proxy_box.dart@RenderAnimatedOpacity@': (m.Scope scope)=>RenderAnimatedOpacity,
'package:flutter/src/rendering/proxy_box.dart@RenderShaderMask@#as': (m.Scope scope, target)=>()=>target as RenderShaderMask,
'package:flutter/src/rendering/proxy_box.dart@RenderShaderMask@#is': (m.Scope scope, target)=>()=>target is RenderShaderMask,
'package:flutter/src/rendering/proxy_box.dart@RenderShaderMask@layer': (m.Scope scope, RenderShaderMask target)=>target.layer,
'package:flutter/src/rendering/proxy_box.dart@RenderShaderMask@shaderCallback': (m.Scope scope, RenderShaderMask target)=>target.shaderCallback,
'package:flutter/src/rendering/proxy_box.dart@RenderShaderMask@shaderCallback:set': (m.Scope scope, RenderShaderMask target)=>(other)=>target.shaderCallback=other,
'package:flutter/src/rendering/proxy_box.dart@RenderShaderMask@blendMode': (m.Scope scope, RenderShaderMask target)=>target.blendMode,
'package:flutter/src/rendering/proxy_box.dart@RenderShaderMask@blendMode:set': (m.Scope scope, RenderShaderMask target)=>(other)=>target.blendMode=other,
'package:flutter/src/rendering/proxy_box.dart@RenderShaderMask@alwaysNeedsCompositing': (m.Scope scope, RenderShaderMask target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/proxy_box.dart@RenderShaderMask@': (m.Scope scope)=>({ blendMode,  child,  shaderCallback}){
Shader shaderCallbackProxy( bounds) {
return  engine.callFunctionPointer(scope, shaderCallback!,[bounds], {});
}

return RenderShaderMask(blendMode:blendMode ?? BlendMode.modulate, child:child, shaderCallback:shaderCallbackProxy);
},
'package:flutter/src/rendering/proxy_box.dart@RenderShaderMask@paint': (m.Scope scope, RenderShaderMask target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderBackdropFilter@#as': (m.Scope scope, target)=>()=>target as RenderBackdropFilter,
'package:flutter/src/rendering/proxy_box.dart@RenderBackdropFilter@#is': (m.Scope scope, target)=>()=>target is RenderBackdropFilter,
'package:flutter/src/rendering/proxy_box.dart@RenderBackdropFilter@layer': (m.Scope scope, RenderBackdropFilter target)=>target.layer,
'package:flutter/src/rendering/proxy_box.dart@RenderBackdropFilter@filter': (m.Scope scope, RenderBackdropFilter target)=>target.filter,
'package:flutter/src/rendering/proxy_box.dart@RenderBackdropFilter@filter:set': (m.Scope scope, RenderBackdropFilter target)=>(other)=>target.filter=other,
'package:flutter/src/rendering/proxy_box.dart@RenderBackdropFilter@blendMode': (m.Scope scope, RenderBackdropFilter target)=>target.blendMode,
'package:flutter/src/rendering/proxy_box.dart@RenderBackdropFilter@blendMode:set': (m.Scope scope, RenderBackdropFilter target)=>(other)=>target.blendMode=other,
'package:flutter/src/rendering/proxy_box.dart@RenderBackdropFilter@alwaysNeedsCompositing': (m.Scope scope, RenderBackdropFilter target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/proxy_box.dart@RenderBackdropFilter@': (m.Scope scope)=>RenderBackdropFilter,
'package:flutter/src/rendering/proxy_box.dart@RenderBackdropFilter@paint': (m.Scope scope, RenderBackdropFilter target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@CustomClipper@#as': (m.Scope scope, target)=>()=>target as CustomClipper,
'package:flutter/src/rendering/proxy_box.dart@CustomClipper@#is': (m.Scope scope, target)=>()=>target is CustomClipper,
'package:flutter/src/rendering/proxy_box.dart@CustomClipper@addListener': (m.Scope scope, CustomClipper target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/rendering/proxy_box.dart@CustomClipper@removeListener': (m.Scope scope, CustomClipper target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/rendering/proxy_box.dart@CustomClipper@getClip': (m.Scope scope, CustomClipper target)=>target.getClip,
'package:flutter/src/rendering/proxy_box.dart@CustomClipper@getApproximateClipRect': (m.Scope scope, CustomClipper target)=>target.getApproximateClipRect,
'package:flutter/src/rendering/proxy_box.dart@CustomClipper@shouldReclip': (m.Scope scope, CustomClipper target)=>target.shouldReclip,
'package:flutter/src/rendering/proxy_box.dart@CustomClipper@toString': (m.Scope scope, CustomClipper target)=>target.toString,
'package:flutter/src/rendering/proxy_box.dart@ShapeBorderClipper@#as': (m.Scope scope, target)=>()=>target as ShapeBorderClipper,
'package:flutter/src/rendering/proxy_box.dart@ShapeBorderClipper@#is': (m.Scope scope, target)=>()=>target is ShapeBorderClipper,
'package:flutter/src/rendering/proxy_box.dart@ShapeBorderClipper@shape': (m.Scope scope, ShapeBorderClipper target)=>target.shape,
'package:flutter/src/rendering/proxy_box.dart@ShapeBorderClipper@textDirection': (m.Scope scope, ShapeBorderClipper target)=>target.textDirection,
'package:flutter/src/rendering/proxy_box.dart@ShapeBorderClipper@': (m.Scope scope)=>ShapeBorderClipper,
'package:flutter/src/rendering/proxy_box.dart@ShapeBorderClipper@getClip': (m.Scope scope, ShapeBorderClipper target)=>target.getClip,
'package:flutter/src/rendering/proxy_box.dart@ShapeBorderClipper@shouldReclip': (m.Scope scope, ShapeBorderClipper target)=>target.shouldReclip,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRect@#as': (m.Scope scope, target)=>()=>target as RenderClipRect,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRect@#is': (m.Scope scope, target)=>()=>target is RenderClipRect,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRect@': (m.Scope scope)=>({ child,  clipBehavior,  clipper}){
return RenderClipRect(child:child, clipBehavior:clipBehavior ?? Clip.antiAlias, clipper:clipper);
},
'package:flutter/src/rendering/proxy_box.dart@RenderClipRect@hitTest': (m.Scope scope, RenderClipRect target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRect@paint': (m.Scope scope, RenderClipRect target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRect@debugPaintSize': (m.Scope scope, RenderClipRect target)=>target.debugPaintSize,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRRect@#as': (m.Scope scope, target)=>()=>target as RenderClipRRect,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRRect@#is': (m.Scope scope, target)=>()=>target is RenderClipRRect,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRRect@borderRadius': (m.Scope scope, RenderClipRRect target)=>target.borderRadius,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRRect@borderRadius:set': (m.Scope scope, RenderClipRRect target)=>(other)=>target.borderRadius=other,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRRect@textDirection': (m.Scope scope, RenderClipRRect target)=>target.textDirection,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRRect@textDirection:set': (m.Scope scope, RenderClipRRect target)=>(other)=>target.textDirection=other,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRRect@': (m.Scope scope)=>({ borderRadius,  child,  clipBehavior,  clipper,  textDirection}){
return RenderClipRRect(borderRadius:borderRadius ?? BorderRadius.zero, child:child, clipBehavior:clipBehavior ?? Clip.antiAlias, clipper:clipper, textDirection:textDirection);
},
'package:flutter/src/rendering/proxy_box.dart@RenderClipRRect@hitTest': (m.Scope scope, RenderClipRRect target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRRect@paint': (m.Scope scope, RenderClipRRect target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderClipRRect@debugPaintSize': (m.Scope scope, RenderClipRRect target)=>target.debugPaintSize,
'package:flutter/src/rendering/proxy_box.dart@RenderClipOval@#as': (m.Scope scope, target)=>()=>target as RenderClipOval,
'package:flutter/src/rendering/proxy_box.dart@RenderClipOval@#is': (m.Scope scope, target)=>()=>target is RenderClipOval,
'package:flutter/src/rendering/proxy_box.dart@RenderClipOval@': (m.Scope scope)=>({ child,  clipBehavior,  clipper}){
return RenderClipOval(child:child, clipBehavior:clipBehavior ?? Clip.antiAlias, clipper:clipper);
},
'package:flutter/src/rendering/proxy_box.dart@RenderClipOval@hitTest': (m.Scope scope, RenderClipOval target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderClipOval@paint': (m.Scope scope, RenderClipOval target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderClipOval@debugPaintSize': (m.Scope scope, RenderClipOval target)=>target.debugPaintSize,
'package:flutter/src/rendering/proxy_box.dart@RenderClipPath@#as': (m.Scope scope, target)=>()=>target as RenderClipPath,
'package:flutter/src/rendering/proxy_box.dart@RenderClipPath@#is': (m.Scope scope, target)=>()=>target is RenderClipPath,
'package:flutter/src/rendering/proxy_box.dart@RenderClipPath@': (m.Scope scope)=>({ child,  clipBehavior,  clipper}){
return RenderClipPath(child:child, clipBehavior:clipBehavior ?? Clip.antiAlias, clipper:clipper);
},
'package:flutter/src/rendering/proxy_box.dart@RenderClipPath@hitTest': (m.Scope scope, RenderClipPath target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderClipPath@paint': (m.Scope scope, RenderClipPath target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderClipPath@debugPaintSize': (m.Scope scope, RenderClipPath target)=>target.debugPaintSize,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalModel@#as': (m.Scope scope, target)=>()=>target as RenderPhysicalModel,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalModel@#is': (m.Scope scope, target)=>()=>target is RenderPhysicalModel,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalModel@shape': (m.Scope scope, RenderPhysicalModel target)=>target.shape,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalModel@shape:set': (m.Scope scope, RenderPhysicalModel target)=>(other)=>target.shape=other,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalModel@borderRadius': (m.Scope scope, RenderPhysicalModel target)=>target.borderRadius,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalModel@borderRadius:set': (m.Scope scope, RenderPhysicalModel target)=>(other)=>target.borderRadius=other,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalModel@': (m.Scope scope)=>RenderPhysicalModel,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalModel@hitTest': (m.Scope scope, RenderPhysicalModel target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalModel@paint': (m.Scope scope, RenderPhysicalModel target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalModel@debugFillProperties': (m.Scope scope, RenderPhysicalModel target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalShape@#as': (m.Scope scope, target)=>()=>target as RenderPhysicalShape,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalShape@#is': (m.Scope scope, target)=>()=>target is RenderPhysicalShape,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalShape@': (m.Scope scope)=>RenderPhysicalShape,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalShape@hitTest': (m.Scope scope, RenderPhysicalShape target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalShape@paint': (m.Scope scope, RenderPhysicalShape target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderPhysicalShape@debugFillProperties': (m.Scope scope, RenderPhysicalShape target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@#as': (m.Scope scope, target)=>()=>target as RenderDecoratedBox,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@#is': (m.Scope scope, target)=>()=>target is RenderDecoratedBox,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@decoration': (m.Scope scope, RenderDecoratedBox target)=>target.decoration,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@decoration:set': (m.Scope scope, RenderDecoratedBox target)=>(other)=>target.decoration=other,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@position': (m.Scope scope, RenderDecoratedBox target)=>target.position,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@position:set': (m.Scope scope, RenderDecoratedBox target)=>(other)=>target.position=other,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@configuration': (m.Scope scope, RenderDecoratedBox target)=>target.configuration,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@configuration:set': (m.Scope scope, RenderDecoratedBox target)=>(other)=>target.configuration=other,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@': (m.Scope scope)=>RenderDecoratedBox,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@detach': (m.Scope scope, RenderDecoratedBox target)=>target.detach,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@hitTestSelf': (m.Scope scope, RenderDecoratedBox target)=>target.hitTestSelf,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@paint': (m.Scope scope, RenderDecoratedBox target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderDecoratedBox@debugFillProperties': (m.Scope scope, RenderDecoratedBox target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@#as': (m.Scope scope, target)=>()=>target as RenderTransform,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@#is': (m.Scope scope, target)=>()=>target is RenderTransform,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@transformHitTests': (m.Scope scope, RenderTransform target)=>target.transformHitTests,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@transformHitTests:set': (m.Scope scope, RenderTransform target)=>(other)=>target.transformHitTests=other,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@origin': (m.Scope scope, RenderTransform target)=>target.origin,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@origin:set': (m.Scope scope, RenderTransform target)=>(other)=>target.origin=other,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@alignment': (m.Scope scope, RenderTransform target)=>target.alignment,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@alignment:set': (m.Scope scope, RenderTransform target)=>(other)=>target.alignment=other,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@textDirection': (m.Scope scope, RenderTransform target)=>target.textDirection,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@textDirection:set': (m.Scope scope, RenderTransform target)=>(other)=>target.textDirection=other,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@alwaysNeedsCompositing': (m.Scope scope, RenderTransform target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@transform:set': (m.Scope scope, RenderTransform target)=>(other)=>target.transform=other,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@filterQuality': (m.Scope scope, RenderTransform target)=>target.filterQuality,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@filterQuality:set': (m.Scope scope, RenderTransform target)=>(other)=>target.filterQuality=other,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@': (m.Scope scope)=>RenderTransform,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@setIdentity': (m.Scope scope, RenderTransform target)=>target.setIdentity,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@rotateX': (m.Scope scope, RenderTransform target)=>target.rotateX,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@rotateY': (m.Scope scope, RenderTransform target)=>target.rotateY,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@rotateZ': (m.Scope scope, RenderTransform target)=>target.rotateZ,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@translate': (m.Scope scope, RenderTransform target)=>target.translate,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@scale': (m.Scope scope, RenderTransform target)=>target.scale,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@hitTest': (m.Scope scope, RenderTransform target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@hitTestChildren': (m.Scope scope, RenderTransform target)=>target.hitTestChildren,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@paint': (m.Scope scope, RenderTransform target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@applyPaintTransform': (m.Scope scope, RenderTransform target)=>target.applyPaintTransform,
'package:flutter/src/rendering/proxy_box.dart@RenderTransform@debugFillProperties': (m.Scope scope, RenderTransform target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@#as': (m.Scope scope, target)=>()=>target as RenderFittedBox,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@#is': (m.Scope scope, target)=>()=>target is RenderFittedBox,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@fit': (m.Scope scope, RenderFittedBox target)=>target.fit,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@fit:set': (m.Scope scope, RenderFittedBox target)=>(other)=>target.fit=other,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@alignment': (m.Scope scope, RenderFittedBox target)=>target.alignment,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@alignment:set': (m.Scope scope, RenderFittedBox target)=>(other)=>target.alignment=other,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@textDirection': (m.Scope scope, RenderFittedBox target)=>target.textDirection,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@textDirection:set': (m.Scope scope, RenderFittedBox target)=>(other)=>target.textDirection=other,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@clipBehavior': (m.Scope scope, RenderFittedBox target)=>target.clipBehavior,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@clipBehavior:set': (m.Scope scope, RenderFittedBox target)=>(other)=>target.clipBehavior=other,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@': (m.Scope scope)=>({ alignment,  child,  clipBehavior,  fit,  textDirection}){
return RenderFittedBox(alignment:alignment ?? Alignment.center, child:child, clipBehavior:clipBehavior ?? Clip.none, fit:fit ?? BoxFit.contain, textDirection:textDirection);
},
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@computeDryLayout': (m.Scope scope, RenderFittedBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@performLayout': (m.Scope scope, RenderFittedBox target)=>target.performLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@paint': (m.Scope scope, RenderFittedBox target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@hitTestChildren': (m.Scope scope, RenderFittedBox target)=>target.hitTestChildren,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@paintsChild': (m.Scope scope, RenderFittedBox target)=>target.paintsChild,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@applyPaintTransform': (m.Scope scope, RenderFittedBox target)=>target.applyPaintTransform,
'package:flutter/src/rendering/proxy_box.dart@RenderFittedBox@debugFillProperties': (m.Scope scope, RenderFittedBox target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderFractionalTranslation@#as': (m.Scope scope, target)=>()=>target as RenderFractionalTranslation,
'package:flutter/src/rendering/proxy_box.dart@RenderFractionalTranslation@#is': (m.Scope scope, target)=>()=>target is RenderFractionalTranslation,
'package:flutter/src/rendering/proxy_box.dart@RenderFractionalTranslation@transformHitTests': (m.Scope scope, RenderFractionalTranslation target)=>target.transformHitTests,
'package:flutter/src/rendering/proxy_box.dart@RenderFractionalTranslation@transformHitTests:set': (m.Scope scope, RenderFractionalTranslation target)=>(other)=>target.transformHitTests=other,
'package:flutter/src/rendering/proxy_box.dart@RenderFractionalTranslation@translation': (m.Scope scope, RenderFractionalTranslation target)=>target.translation,
'package:flutter/src/rendering/proxy_box.dart@RenderFractionalTranslation@translation:set': (m.Scope scope, RenderFractionalTranslation target)=>(other)=>target.translation=other,
'package:flutter/src/rendering/proxy_box.dart@RenderFractionalTranslation@': (m.Scope scope)=>RenderFractionalTranslation,
'package:flutter/src/rendering/proxy_box.dart@RenderFractionalTranslation@hitTest': (m.Scope scope, RenderFractionalTranslation target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderFractionalTranslation@hitTestChildren': (m.Scope scope, RenderFractionalTranslation target)=>target.hitTestChildren,
'package:flutter/src/rendering/proxy_box.dart@RenderFractionalTranslation@paint': (m.Scope scope, RenderFractionalTranslation target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderFractionalTranslation@applyPaintTransform': (m.Scope scope, RenderFractionalTranslation target)=>target.applyPaintTransform,
'package:flutter/src/rendering/proxy_box.dart@RenderFractionalTranslation@debugFillProperties': (m.Scope scope, RenderFractionalTranslation target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@#as': (m.Scope scope, target)=>()=>target as RenderPointerListener,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@#is': (m.Scope scope, target)=>()=>target is RenderPointerListener,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerDown': (m.Scope scope, RenderPointerListener target)=>target.onPointerDown,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerDown:set': (m.Scope scope, RenderPointerListener target)=>(other)=>target.onPointerDown=other,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerMove': (m.Scope scope, RenderPointerListener target)=>target.onPointerMove,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerMove:set': (m.Scope scope, RenderPointerListener target)=>(other)=>target.onPointerMove=other,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerUp': (m.Scope scope, RenderPointerListener target)=>target.onPointerUp,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerUp:set': (m.Scope scope, RenderPointerListener target)=>(other)=>target.onPointerUp=other,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerHover': (m.Scope scope, RenderPointerListener target)=>target.onPointerHover,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerHover:set': (m.Scope scope, RenderPointerListener target)=>(other)=>target.onPointerHover=other,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerCancel': (m.Scope scope, RenderPointerListener target)=>target.onPointerCancel,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerCancel:set': (m.Scope scope, RenderPointerListener target)=>(other)=>target.onPointerCancel=other,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerPanZoomStart': (m.Scope scope, RenderPointerListener target)=>target.onPointerPanZoomStart,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerPanZoomStart:set': (m.Scope scope, RenderPointerListener target)=>(other)=>target.onPointerPanZoomStart=other,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerPanZoomUpdate': (m.Scope scope, RenderPointerListener target)=>target.onPointerPanZoomUpdate,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerPanZoomUpdate:set': (m.Scope scope, RenderPointerListener target)=>(other)=>target.onPointerPanZoomUpdate=other,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerPanZoomEnd': (m.Scope scope, RenderPointerListener target)=>target.onPointerPanZoomEnd,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerPanZoomEnd:set': (m.Scope scope, RenderPointerListener target)=>(other)=>target.onPointerPanZoomEnd=other,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerSignal': (m.Scope scope, RenderPointerListener target)=>target.onPointerSignal,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@onPointerSignal:set': (m.Scope scope, RenderPointerListener target)=>(other)=>target.onPointerSignal=other,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@': (m.Scope scope)=>({ behavior,  child,  onPointerCancel,  onPointerDown,  onPointerHover,  onPointerMove,  onPointerPanZoomEnd,  onPointerPanZoomStart,  onPointerPanZoomUpdate,  onPointerSignal,  onPointerUp}){
void onPointerCancelProxy( event) {
 engine.callFunctionPointer(scope, onPointerCancel!,[event], {});
}

void onPointerDownProxy( event) {
 engine.callFunctionPointer(scope, onPointerDown!,[event], {});
}

void onPointerHoverProxy( event) {
 engine.callFunctionPointer(scope, onPointerHover!,[event], {});
}

void onPointerMoveProxy( event) {
 engine.callFunctionPointer(scope, onPointerMove!,[event], {});
}

void onPointerPanZoomEndProxy( event) {
 engine.callFunctionPointer(scope, onPointerPanZoomEnd!,[event], {});
}

void onPointerPanZoomStartProxy( event) {
 engine.callFunctionPointer(scope, onPointerPanZoomStart!,[event], {});
}

void onPointerPanZoomUpdateProxy( event) {
 engine.callFunctionPointer(scope, onPointerPanZoomUpdate!,[event], {});
}

void onPointerSignalProxy( event) {
 engine.callFunctionPointer(scope, onPointerSignal!,[event], {});
}

void onPointerUpProxy( event) {
 engine.callFunctionPointer(scope, onPointerUp!,[event], {});
}

return RenderPointerListener(behavior:behavior ?? HitTestBehavior.deferToChild, child:child, onPointerCancel:onPointerCancel == null ? null :onPointerCancelProxy, onPointerDown:onPointerDown == null ? null :onPointerDownProxy, onPointerHover:onPointerHover == null ? null :onPointerHoverProxy, onPointerMove:onPointerMove == null ? null :onPointerMoveProxy, onPointerPanZoomEnd:onPointerPanZoomEnd == null ? null :onPointerPanZoomEndProxy, onPointerPanZoomStart:onPointerPanZoomStart == null ? null :onPointerPanZoomStartProxy, onPointerPanZoomUpdate:onPointerPanZoomUpdate == null ? null :onPointerPanZoomUpdateProxy, onPointerSignal:onPointerSignal == null ? null :onPointerSignalProxy, onPointerUp:onPointerUp == null ? null :onPointerUpProxy);
},
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@computeSizeForNoChild': (m.Scope scope, RenderPointerListener target)=>target.computeSizeForNoChild,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@handleEvent': (m.Scope scope, RenderPointerListener target)=>target.handleEvent,
'package:flutter/src/rendering/proxy_box.dart@RenderPointerListener@debugFillProperties': (m.Scope scope, RenderPointerListener target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@#as': (m.Scope scope, target)=>()=>target as RenderMouseRegion,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@#is': (m.Scope scope, target)=>()=>target is RenderMouseRegion,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@onEnter': (m.Scope scope, RenderMouseRegion target)=>target.onEnter,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@onEnter:set': (m.Scope scope, RenderMouseRegion target)=>(other)=>target.onEnter=other,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@onHover': (m.Scope scope, RenderMouseRegion target)=>target.onHover,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@onHover:set': (m.Scope scope, RenderMouseRegion target)=>(other)=>target.onHover=other,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@onExit': (m.Scope scope, RenderMouseRegion target)=>target.onExit,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@onExit:set': (m.Scope scope, RenderMouseRegion target)=>(other)=>target.onExit=other,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@opaque': (m.Scope scope, RenderMouseRegion target)=>target.opaque,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@opaque:set': (m.Scope scope, RenderMouseRegion target)=>(other)=>target.opaque=other,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@hitTestBehavior': (m.Scope scope, RenderMouseRegion target)=>target.hitTestBehavior,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@hitTestBehavior:set': (m.Scope scope, RenderMouseRegion target)=>(other)=>target.hitTestBehavior=other,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@cursor': (m.Scope scope, RenderMouseRegion target)=>target.cursor,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@cursor:set': (m.Scope scope, RenderMouseRegion target)=>(other)=>target.cursor=other,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@validForMouseTracker': (m.Scope scope, RenderMouseRegion target)=>target.validForMouseTracker,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@': (m.Scope scope)=>({ child,  cursor,  hitTestBehavior,  onEnter,  onExit,  onHover,  opaque,  validForMouseTracker}){
void onEnterProxy( event) {
 engine.callFunctionPointer(scope, onEnter!,[event], {});
}

void onExitProxy( event) {
 engine.callFunctionPointer(scope, onExit!,[event], {});
}

void onHoverProxy( event) {
 engine.callFunctionPointer(scope, onHover!,[event], {});
}

return RenderMouseRegion(child:child, cursor:cursor ?? MouseCursor.defer, hitTestBehavior:hitTestBehavior ?? HitTestBehavior.opaque, onEnter:onEnter == null ? null :onEnterProxy, onExit:onExit == null ? null :onExitProxy, onHover:onHover == null ? null :onHoverProxy, opaque:opaque ?? true, validForMouseTracker:validForMouseTracker ?? true);
},
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@hitTest': (m.Scope scope, RenderMouseRegion target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@handleEvent': (m.Scope scope, RenderMouseRegion target)=>target.handleEvent,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@attach': (m.Scope scope, RenderMouseRegion target)=>target.attach,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@detach': (m.Scope scope, RenderMouseRegion target)=>target.detach,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@computeSizeForNoChild': (m.Scope scope, RenderMouseRegion target)=>target.computeSizeForNoChild,
'package:flutter/src/rendering/proxy_box.dart@RenderMouseRegion@debugFillProperties': (m.Scope scope, RenderMouseRegion target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderRepaintBoundary@#as': (m.Scope scope, target)=>()=>target as RenderRepaintBoundary,
'package:flutter/src/rendering/proxy_box.dart@RenderRepaintBoundary@#is': (m.Scope scope, target)=>()=>target is RenderRepaintBoundary,
'package:flutter/src/rendering/proxy_box.dart@RenderRepaintBoundary@isRepaintBoundary': (m.Scope scope, RenderRepaintBoundary target)=>target.isRepaintBoundary,
'package:flutter/src/rendering/proxy_box.dart@RenderRepaintBoundary@debugSymmetricPaintCount': (m.Scope scope, RenderRepaintBoundary target)=>target.debugSymmetricPaintCount,
'package:flutter/src/rendering/proxy_box.dart@RenderRepaintBoundary@debugAsymmetricPaintCount': (m.Scope scope, RenderRepaintBoundary target)=>target.debugAsymmetricPaintCount,
'package:flutter/src/rendering/proxy_box.dart@RenderRepaintBoundary@': (m.Scope scope)=>({ child}){
return RenderRepaintBoundary(child:child);
},
'package:flutter/src/rendering/proxy_box.dart@RenderRepaintBoundary@toImage': (m.Scope scope, RenderRepaintBoundary target)=>target.toImage,
'package:flutter/src/rendering/proxy_box.dart@RenderRepaintBoundary@toImageSync': (m.Scope scope, RenderRepaintBoundary target)=>target.toImageSync,
'package:flutter/src/rendering/proxy_box.dart@RenderRepaintBoundary@debugResetMetrics': (m.Scope scope, RenderRepaintBoundary target)=>target.debugResetMetrics,
'package:flutter/src/rendering/proxy_box.dart@RenderRepaintBoundary@debugRegisterRepaintBoundaryPaint': (m.Scope scope, RenderRepaintBoundary target)=>target.debugRegisterRepaintBoundaryPaint,
'package:flutter/src/rendering/proxy_box.dart@RenderRepaintBoundary@debugFillProperties': (m.Scope scope, RenderRepaintBoundary target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderIgnorePointer@#as': (m.Scope scope, target)=>()=>target as RenderIgnorePointer,
'package:flutter/src/rendering/proxy_box.dart@RenderIgnorePointer@#is': (m.Scope scope, target)=>()=>target is RenderIgnorePointer,
'package:flutter/src/rendering/proxy_box.dart@RenderIgnorePointer@ignoring': (m.Scope scope, RenderIgnorePointer target)=>target.ignoring,
'package:flutter/src/rendering/proxy_box.dart@RenderIgnorePointer@ignoring:set': (m.Scope scope, RenderIgnorePointer target)=>(other)=>target.ignoring=other,
'package:flutter/src/rendering/proxy_box.dart@RenderIgnorePointer@ignoringSemantics': (m.Scope scope, RenderIgnorePointer target)=>target.ignoringSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderIgnorePointer@ignoringSemantics:set': (m.Scope scope, RenderIgnorePointer target)=>(other)=>target.ignoringSemantics=other,
'package:flutter/src/rendering/proxy_box.dart@RenderIgnorePointer@': (m.Scope scope)=>({ child,  ignoring,  ignoringSemantics}){
return RenderIgnorePointer(child:child, ignoring:ignoring ?? true, ignoringSemantics:ignoringSemantics);
},
'package:flutter/src/rendering/proxy_box.dart@RenderIgnorePointer@hitTest': (m.Scope scope, RenderIgnorePointer target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderIgnorePointer@visitChildrenForSemantics': (m.Scope scope, RenderIgnorePointer target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildrenForSemantics(visitorProxy);
},
'package:flutter/src/rendering/proxy_box.dart@RenderIgnorePointer@debugFillProperties': (m.Scope scope, RenderIgnorePointer target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@#as': (m.Scope scope, target)=>()=>target as RenderOffstage,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@#is': (m.Scope scope, target)=>()=>target is RenderOffstage,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@offstage': (m.Scope scope, RenderOffstage target)=>target.offstage,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@offstage:set': (m.Scope scope, RenderOffstage target)=>(other)=>target.offstage=other,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@sizedByParent': (m.Scope scope, RenderOffstage target)=>target.sizedByParent,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@': (m.Scope scope)=>({ child,  offstage}){
return RenderOffstage(child:child, offstage:offstage ?? true);
},
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@computeMinIntrinsicWidth': (m.Scope scope, RenderOffstage target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@computeMaxIntrinsicWidth': (m.Scope scope, RenderOffstage target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@computeMinIntrinsicHeight': (m.Scope scope, RenderOffstage target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@computeMaxIntrinsicHeight': (m.Scope scope, RenderOffstage target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@computeDistanceToActualBaseline': (m.Scope scope, RenderOffstage target)=>target.computeDistanceToActualBaseline,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@computeDryLayout': (m.Scope scope, RenderOffstage target)=>target.computeDryLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@performResize': (m.Scope scope, RenderOffstage target)=>target.performResize,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@performLayout': (m.Scope scope, RenderOffstage target)=>target.performLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@hitTest': (m.Scope scope, RenderOffstage target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@paintsChild': (m.Scope scope, RenderOffstage target)=>target.paintsChild,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@paint': (m.Scope scope, RenderOffstage target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@visitChildrenForSemantics': (m.Scope scope, RenderOffstage target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildrenForSemantics(visitorProxy);
},
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@debugFillProperties': (m.Scope scope, RenderOffstage target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderOffstage@debugDescribeChildren': (m.Scope scope, RenderOffstage target)=>target.debugDescribeChildren,
'package:flutter/src/rendering/proxy_box.dart@RenderAbsorbPointer@#as': (m.Scope scope, target)=>()=>target as RenderAbsorbPointer,
'package:flutter/src/rendering/proxy_box.dart@RenderAbsorbPointer@#is': (m.Scope scope, target)=>()=>target is RenderAbsorbPointer,
'package:flutter/src/rendering/proxy_box.dart@RenderAbsorbPointer@absorbing': (m.Scope scope, RenderAbsorbPointer target)=>target.absorbing,
'package:flutter/src/rendering/proxy_box.dart@RenderAbsorbPointer@absorbing:set': (m.Scope scope, RenderAbsorbPointer target)=>(other)=>target.absorbing=other,
'package:flutter/src/rendering/proxy_box.dart@RenderAbsorbPointer@ignoringSemantics': (m.Scope scope, RenderAbsorbPointer target)=>target.ignoringSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderAbsorbPointer@ignoringSemantics:set': (m.Scope scope, RenderAbsorbPointer target)=>(other)=>target.ignoringSemantics=other,
'package:flutter/src/rendering/proxy_box.dart@RenderAbsorbPointer@': (m.Scope scope)=>({ absorbing,  child,  ignoringSemantics}){
return RenderAbsorbPointer(absorbing:absorbing ?? true, child:child, ignoringSemantics:ignoringSemantics);
},
'package:flutter/src/rendering/proxy_box.dart@RenderAbsorbPointer@hitTest': (m.Scope scope, RenderAbsorbPointer target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderAbsorbPointer@visitChildrenForSemantics': (m.Scope scope, RenderAbsorbPointer target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildrenForSemantics(visitorProxy);
},
'package:flutter/src/rendering/proxy_box.dart@RenderAbsorbPointer@debugFillProperties': (m.Scope scope, RenderAbsorbPointer target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderMetaData@#as': (m.Scope scope, target)=>()=>target as RenderMetaData,
'package:flutter/src/rendering/proxy_box.dart@RenderMetaData@#is': (m.Scope scope, target)=>()=>target is RenderMetaData,
'package:flutter/src/rendering/proxy_box.dart@RenderMetaData@metaData': (m.Scope scope, RenderMetaData target)=>target.metaData,
'package:flutter/src/rendering/proxy_box.dart@RenderMetaData@metaData:set': (m.Scope scope, RenderMetaData target)=>(other)=>target.metaData=other,
'package:flutter/src/rendering/proxy_box.dart@RenderMetaData@': (m.Scope scope)=>({ behavior,  child,  metaData}){
return RenderMetaData(behavior:behavior ?? HitTestBehavior.deferToChild, child:child, metaData:metaData);
},
'package:flutter/src/rendering/proxy_box.dart@RenderMetaData@debugFillProperties': (m.Scope scope, RenderMetaData target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@#as': (m.Scope scope, target)=>()=>target as RenderSemanticsGestureHandler,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@#is': (m.Scope scope, target)=>()=>target is RenderSemanticsGestureHandler,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@scrollFactor': (m.Scope scope, RenderSemanticsGestureHandler target)=>target.scrollFactor,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@scrollFactor:set': (m.Scope scope, RenderSemanticsGestureHandler target)=>(other)=>target.scrollFactor=other,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@validActions': (m.Scope scope, RenderSemanticsGestureHandler target)=>target.validActions,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@validActions:set': (m.Scope scope, RenderSemanticsGestureHandler target)=>(other)=>target.validActions=other,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@onTap': (m.Scope scope, RenderSemanticsGestureHandler target)=>target.onTap,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@onTap:set': (m.Scope scope, RenderSemanticsGestureHandler target)=>(other)=>target.onTap=other,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@onLongPress': (m.Scope scope, RenderSemanticsGestureHandler target)=>target.onLongPress,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@onLongPress:set': (m.Scope scope, RenderSemanticsGestureHandler target)=>(other)=>target.onLongPress=other,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@onHorizontalDragUpdate': (m.Scope scope, RenderSemanticsGestureHandler target)=>target.onHorizontalDragUpdate,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@onHorizontalDragUpdate:set': (m.Scope scope, RenderSemanticsGestureHandler target)=>(other)=>target.onHorizontalDragUpdate=other,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@onVerticalDragUpdate': (m.Scope scope, RenderSemanticsGestureHandler target)=>target.onVerticalDragUpdate,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@onVerticalDragUpdate:set': (m.Scope scope, RenderSemanticsGestureHandler target)=>(other)=>target.onVerticalDragUpdate=other,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@': (m.Scope scope)=>({ behavior,  child,  onHorizontalDragUpdate,  onLongPress,  onTap,  onVerticalDragUpdate,  scrollFactor}){
void onHorizontalDragUpdateProxy( details) {
 engine.callFunctionPointer(scope, onHorizontalDragUpdate!,[details], {});
}

void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

void onVerticalDragUpdateProxy( details) {
 engine.callFunctionPointer(scope, onVerticalDragUpdate!,[details], {});
}

return RenderSemanticsGestureHandler(behavior:behavior ?? HitTestBehavior.deferToChild, child:child, onHorizontalDragUpdate:onHorizontalDragUpdate == null ? null :onHorizontalDragUpdateProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onTap:onTap == null ? null :onTapProxy, onVerticalDragUpdate:onVerticalDragUpdate == null ? null :onVerticalDragUpdateProxy, scrollFactor:scrollFactor ?? 0.8);
},
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@describeSemanticsConfiguration': (m.Scope scope, RenderSemanticsGestureHandler target)=>target.describeSemanticsConfiguration,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsGestureHandler@debugFillProperties': (m.Scope scope, RenderSemanticsGestureHandler target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@#as': (m.Scope scope, target)=>()=>target as RenderSemanticsAnnotations,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@#is': (m.Scope scope, target)=>()=>target is RenderSemanticsAnnotations,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@properties': (m.Scope scope, RenderSemanticsAnnotations target)=>target.properties,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@properties:set': (m.Scope scope, RenderSemanticsAnnotations target)=>(other)=>target.properties=other,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@container': (m.Scope scope, RenderSemanticsAnnotations target)=>target.container,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@container:set': (m.Scope scope, RenderSemanticsAnnotations target)=>(other)=>target.container=other,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@explicitChildNodes': (m.Scope scope, RenderSemanticsAnnotations target)=>target.explicitChildNodes,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@explicitChildNodes:set': (m.Scope scope, RenderSemanticsAnnotations target)=>(other)=>target.explicitChildNodes=other,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@excludeSemantics': (m.Scope scope, RenderSemanticsAnnotations target)=>target.excludeSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@excludeSemantics:set': (m.Scope scope, RenderSemanticsAnnotations target)=>(other)=>target.excludeSemantics=other,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@textDirection': (m.Scope scope, RenderSemanticsAnnotations target)=>target.textDirection,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@textDirection:set': (m.Scope scope, RenderSemanticsAnnotations target)=>(other)=>target.textDirection=other,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@': (m.Scope scope)=>RenderSemanticsAnnotations,
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@visitChildrenForSemantics': (m.Scope scope, RenderSemanticsAnnotations target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildrenForSemantics(visitorProxy);
},
'package:flutter/src/rendering/proxy_box.dart@RenderSemanticsAnnotations@describeSemanticsConfiguration': (m.Scope scope, RenderSemanticsAnnotations target)=>target.describeSemanticsConfiguration,
'package:flutter/src/rendering/proxy_box.dart@RenderBlockSemantics@#as': (m.Scope scope, target)=>()=>target as RenderBlockSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderBlockSemantics@#is': (m.Scope scope, target)=>()=>target is RenderBlockSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderBlockSemantics@blocking': (m.Scope scope, RenderBlockSemantics target)=>target.blocking,
'package:flutter/src/rendering/proxy_box.dart@RenderBlockSemantics@blocking:set': (m.Scope scope, RenderBlockSemantics target)=>(other)=>target.blocking=other,
'package:flutter/src/rendering/proxy_box.dart@RenderBlockSemantics@': (m.Scope scope)=>({ blocking,  child}){
return RenderBlockSemantics(blocking:blocking ?? true, child:child);
},
'package:flutter/src/rendering/proxy_box.dart@RenderBlockSemantics@describeSemanticsConfiguration': (m.Scope scope, RenderBlockSemantics target)=>target.describeSemanticsConfiguration,
'package:flutter/src/rendering/proxy_box.dart@RenderBlockSemantics@debugFillProperties': (m.Scope scope, RenderBlockSemantics target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderMergeSemantics@#as': (m.Scope scope, target)=>()=>target as RenderMergeSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderMergeSemantics@#is': (m.Scope scope, target)=>()=>target is RenderMergeSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderMergeSemantics@': (m.Scope scope)=>({ child}){
return RenderMergeSemantics(child:child);
},
'package:flutter/src/rendering/proxy_box.dart@RenderMergeSemantics@describeSemanticsConfiguration': (m.Scope scope, RenderMergeSemantics target)=>target.describeSemanticsConfiguration,
'package:flutter/src/rendering/proxy_box.dart@RenderExcludeSemantics@#as': (m.Scope scope, target)=>()=>target as RenderExcludeSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderExcludeSemantics@#is': (m.Scope scope, target)=>()=>target is RenderExcludeSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderExcludeSemantics@excluding': (m.Scope scope, RenderExcludeSemantics target)=>target.excluding,
'package:flutter/src/rendering/proxy_box.dart@RenderExcludeSemantics@excluding:set': (m.Scope scope, RenderExcludeSemantics target)=>(other)=>target.excluding=other,
'package:flutter/src/rendering/proxy_box.dart@RenderExcludeSemantics@': (m.Scope scope)=>({ child,  excluding}){
return RenderExcludeSemantics(child:child, excluding:excluding ?? true);
},
'package:flutter/src/rendering/proxy_box.dart@RenderExcludeSemantics@visitChildrenForSemantics': (m.Scope scope, RenderExcludeSemantics target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildrenForSemantics(visitorProxy);
},
'package:flutter/src/rendering/proxy_box.dart@RenderExcludeSemantics@debugFillProperties': (m.Scope scope, RenderExcludeSemantics target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderIndexedSemantics@#as': (m.Scope scope, target)=>()=>target as RenderIndexedSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderIndexedSemantics@#is': (m.Scope scope, target)=>()=>target is RenderIndexedSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderIndexedSemantics@index': (m.Scope scope, RenderIndexedSemantics target)=>target.index,
'package:flutter/src/rendering/proxy_box.dart@RenderIndexedSemantics@index:set': (m.Scope scope, RenderIndexedSemantics target)=>(other)=>target.index=other,
'package:flutter/src/rendering/proxy_box.dart@RenderIndexedSemantics@': (m.Scope scope)=>RenderIndexedSemantics,
'package:flutter/src/rendering/proxy_box.dart@RenderIndexedSemantics@describeSemanticsConfiguration': (m.Scope scope, RenderIndexedSemantics target)=>target.describeSemanticsConfiguration,
'package:flutter/src/rendering/proxy_box.dart@RenderIndexedSemantics@debugFillProperties': (m.Scope scope, RenderIndexedSemantics target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderLeaderLayer@#as': (m.Scope scope, target)=>()=>target as RenderLeaderLayer,
'package:flutter/src/rendering/proxy_box.dart@RenderLeaderLayer@#is': (m.Scope scope, target)=>()=>target is RenderLeaderLayer,
'package:flutter/src/rendering/proxy_box.dart@RenderLeaderLayer@link': (m.Scope scope, RenderLeaderLayer target)=>target.link,
'package:flutter/src/rendering/proxy_box.dart@RenderLeaderLayer@link:set': (m.Scope scope, RenderLeaderLayer target)=>(other)=>target.link=other,
'package:flutter/src/rendering/proxy_box.dart@RenderLeaderLayer@alwaysNeedsCompositing': (m.Scope scope, RenderLeaderLayer target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/proxy_box.dart@RenderLeaderLayer@': (m.Scope scope)=>RenderLeaderLayer,
'package:flutter/src/rendering/proxy_box.dart@RenderLeaderLayer@performLayout': (m.Scope scope, RenderLeaderLayer target)=>target.performLayout,
'package:flutter/src/rendering/proxy_box.dart@RenderLeaderLayer@paint': (m.Scope scope, RenderLeaderLayer target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderLeaderLayer@debugFillProperties': (m.Scope scope, RenderLeaderLayer target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@#as': (m.Scope scope, target)=>()=>target as RenderFollowerLayer,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@#is': (m.Scope scope, target)=>()=>target is RenderFollowerLayer,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@link': (m.Scope scope, RenderFollowerLayer target)=>target.link,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@link:set': (m.Scope scope, RenderFollowerLayer target)=>(other)=>target.link=other,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@showWhenUnlinked': (m.Scope scope, RenderFollowerLayer target)=>target.showWhenUnlinked,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@showWhenUnlinked:set': (m.Scope scope, RenderFollowerLayer target)=>(other)=>target.showWhenUnlinked=other,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@offset': (m.Scope scope, RenderFollowerLayer target)=>target.offset,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@offset:set': (m.Scope scope, RenderFollowerLayer target)=>(other)=>target.offset=other,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@leaderAnchor': (m.Scope scope, RenderFollowerLayer target)=>target.leaderAnchor,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@leaderAnchor:set': (m.Scope scope, RenderFollowerLayer target)=>(other)=>target.leaderAnchor=other,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@followerAnchor': (m.Scope scope, RenderFollowerLayer target)=>target.followerAnchor,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@followerAnchor:set': (m.Scope scope, RenderFollowerLayer target)=>(other)=>target.followerAnchor=other,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@alwaysNeedsCompositing': (m.Scope scope, RenderFollowerLayer target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@layer': (m.Scope scope, RenderFollowerLayer target)=>target.layer,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@': (m.Scope scope)=>RenderFollowerLayer,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@detach': (m.Scope scope, RenderFollowerLayer target)=>target.detach,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@getCurrentTransform': (m.Scope scope, RenderFollowerLayer target)=>target.getCurrentTransform,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@hitTest': (m.Scope scope, RenderFollowerLayer target)=>target.hitTest,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@hitTestChildren': (m.Scope scope, RenderFollowerLayer target)=>target.hitTestChildren,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@paint': (m.Scope scope, RenderFollowerLayer target)=>target.paint,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@applyPaintTransform': (m.Scope scope, RenderFollowerLayer target)=>target.applyPaintTransform,
'package:flutter/src/rendering/proxy_box.dart@RenderFollowerLayer@debugFillProperties': (m.Scope scope, RenderFollowerLayer target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_box.dart@RenderAnnotatedRegion@#as': (m.Scope scope, target)=>()=>target as RenderAnnotatedRegion,
'package:flutter/src/rendering/proxy_box.dart@RenderAnnotatedRegion@#is': (m.Scope scope, target)=>()=>target is RenderAnnotatedRegion,
'package:flutter/src/rendering/proxy_box.dart@RenderAnnotatedRegion@alwaysNeedsCompositing': (m.Scope scope, RenderAnnotatedRegion target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/proxy_box.dart@RenderAnnotatedRegion@value': (m.Scope scope, RenderAnnotatedRegion target)=>target.value,
'package:flutter/src/rendering/proxy_box.dart@RenderAnnotatedRegion@value:set': (m.Scope scope, RenderAnnotatedRegion target)=>(other)=>target.value=other,
'package:flutter/src/rendering/proxy_box.dart@RenderAnnotatedRegion@sized': (m.Scope scope, RenderAnnotatedRegion target)=>target.sized,
'package:flutter/src/rendering/proxy_box.dart@RenderAnnotatedRegion@sized:set': (m.Scope scope, RenderAnnotatedRegion target)=>(other)=>target.sized=other,
'package:flutter/src/rendering/proxy_box.dart@RenderAnnotatedRegion@': (m.Scope scope)=>RenderAnnotatedRegion,
'package:flutter/src/rendering/proxy_box.dart@RenderAnnotatedRegion@paint': (m.Scope scope, RenderAnnotatedRegion target)=>target.paint,

};
}