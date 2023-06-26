import 'package:flutter/src/rendering/image.dart';
import 'dart:ui' show Image;
import 'package:flutter/animation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/image.dart@RenderImage@#as': (m.Scope scope, target)=>()=>target as RenderImage,
'package:flutter/src/rendering/image.dart@RenderImage@#is': (m.Scope scope, target)=>()=>target is RenderImage,
'package:flutter/src/rendering/image.dart@RenderImage@debugImageLabel': (m.Scope scope, RenderImage target)=>target.debugImageLabel,
'package:flutter/src/rendering/image.dart@RenderImage@debugImageLabel:set': (m.Scope scope, RenderImage target)=>(other)=>target.debugImageLabel=other,
'package:flutter/src/rendering/image.dart@RenderImage@image': (m.Scope scope, RenderImage target)=>target.image,
'package:flutter/src/rendering/image.dart@RenderImage@image:set': (m.Scope scope, RenderImage target)=>(other)=>target.image=other,
'package:flutter/src/rendering/image.dart@RenderImage@width': (m.Scope scope, RenderImage target)=>target.width,
'package:flutter/src/rendering/image.dart@RenderImage@width:set': (m.Scope scope, RenderImage target)=>(other)=>target.width=other,
'package:flutter/src/rendering/image.dart@RenderImage@height': (m.Scope scope, RenderImage target)=>target.height,
'package:flutter/src/rendering/image.dart@RenderImage@height:set': (m.Scope scope, RenderImage target)=>(other)=>target.height=other,
'package:flutter/src/rendering/image.dart@RenderImage@scale': (m.Scope scope, RenderImage target)=>target.scale,
'package:flutter/src/rendering/image.dart@RenderImage@scale:set': (m.Scope scope, RenderImage target)=>(other)=>target.scale=other,
'package:flutter/src/rendering/image.dart@RenderImage@color': (m.Scope scope, RenderImage target)=>target.color,
'package:flutter/src/rendering/image.dart@RenderImage@color:set': (m.Scope scope, RenderImage target)=>(other)=>target.color=other,
'package:flutter/src/rendering/image.dart@RenderImage@opacity': (m.Scope scope, RenderImage target)=>target.opacity,
'package:flutter/src/rendering/image.dart@RenderImage@opacity:set': (m.Scope scope, RenderImage target)=>(other)=>target.opacity=other,
'package:flutter/src/rendering/image.dart@RenderImage@filterQuality': (m.Scope scope, RenderImage target)=>target.filterQuality,
'package:flutter/src/rendering/image.dart@RenderImage@filterQuality:set': (m.Scope scope, RenderImage target)=>(other)=>target.filterQuality=other,
'package:flutter/src/rendering/image.dart@RenderImage@colorBlendMode': (m.Scope scope, RenderImage target)=>target.colorBlendMode,
'package:flutter/src/rendering/image.dart@RenderImage@colorBlendMode:set': (m.Scope scope, RenderImage target)=>(other)=>target.colorBlendMode=other,
'package:flutter/src/rendering/image.dart@RenderImage@fit': (m.Scope scope, RenderImage target)=>target.fit,
'package:flutter/src/rendering/image.dart@RenderImage@fit:set': (m.Scope scope, RenderImage target)=>(other)=>target.fit=other,
'package:flutter/src/rendering/image.dart@RenderImage@alignment': (m.Scope scope, RenderImage target)=>target.alignment,
'package:flutter/src/rendering/image.dart@RenderImage@alignment:set': (m.Scope scope, RenderImage target)=>(other)=>target.alignment=other,
'package:flutter/src/rendering/image.dart@RenderImage@repeat': (m.Scope scope, RenderImage target)=>target.repeat,
'package:flutter/src/rendering/image.dart@RenderImage@repeat:set': (m.Scope scope, RenderImage target)=>(other)=>target.repeat=other,
'package:flutter/src/rendering/image.dart@RenderImage@centerSlice': (m.Scope scope, RenderImage target)=>target.centerSlice,
'package:flutter/src/rendering/image.dart@RenderImage@centerSlice:set': (m.Scope scope, RenderImage target)=>(other)=>target.centerSlice=other,
'package:flutter/src/rendering/image.dart@RenderImage@invertColors': (m.Scope scope, RenderImage target)=>target.invertColors,
'package:flutter/src/rendering/image.dart@RenderImage@invertColors:set': (m.Scope scope, RenderImage target)=>(other)=>target.invertColors=other,
'package:flutter/src/rendering/image.dart@RenderImage@matchTextDirection': (m.Scope scope, RenderImage target)=>target.matchTextDirection,
'package:flutter/src/rendering/image.dart@RenderImage@matchTextDirection:set': (m.Scope scope, RenderImage target)=>(other)=>target.matchTextDirection=other,
'package:flutter/src/rendering/image.dart@RenderImage@textDirection': (m.Scope scope, RenderImage target)=>target.textDirection,
'package:flutter/src/rendering/image.dart@RenderImage@textDirection:set': (m.Scope scope, RenderImage target)=>(other)=>target.textDirection=other,
'package:flutter/src/rendering/image.dart@RenderImage@isAntiAlias': (m.Scope scope, RenderImage target)=>target.isAntiAlias,
'package:flutter/src/rendering/image.dart@RenderImage@isAntiAlias:set': (m.Scope scope, RenderImage target)=>(other)=>target.isAntiAlias=other,
'package:flutter/src/rendering/image.dart@RenderImage@': (m.Scope scope)=>({ alignment,  centerSlice,  color,  colorBlendMode,  debugImageLabel,  filterQuality,  fit,  height,  image,  invertColors,  isAntiAlias,  matchTextDirection,  opacity,  repeat,  scale,  textDirection,  width}){
return RenderImage(alignment:alignment ?? Alignment.center, centerSlice:centerSlice, color:color, colorBlendMode:colorBlendMode, debugImageLabel:debugImageLabel, filterQuality:filterQuality ?? FilterQuality.low, fit:fit, height:height, image:image, invertColors:invertColors ?? false, isAntiAlias:isAntiAlias ?? false, matchTextDirection:matchTextDirection ?? false, opacity:opacity, repeat:repeat ?? ImageRepeat.noRepeat, scale:scale ?? 1.0, textDirection:textDirection, width:width);
},
'package:flutter/src/rendering/image.dart@RenderImage@computeMinIntrinsicWidth': (m.Scope scope, RenderImage target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/image.dart@RenderImage@computeMaxIntrinsicWidth': (m.Scope scope, RenderImage target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/image.dart@RenderImage@computeMinIntrinsicHeight': (m.Scope scope, RenderImage target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/image.dart@RenderImage@computeMaxIntrinsicHeight': (m.Scope scope, RenderImage target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/image.dart@RenderImage@hitTestSelf': (m.Scope scope, RenderImage target)=>target.hitTestSelf,
'package:flutter/src/rendering/image.dart@RenderImage@computeDryLayout': (m.Scope scope, RenderImage target)=>target.computeDryLayout,
'package:flutter/src/rendering/image.dart@RenderImage@performLayout': (m.Scope scope, RenderImage target)=>target.performLayout,
'package:flutter/src/rendering/image.dart@RenderImage@attach': (m.Scope scope, RenderImage target)=>target.attach,
'package:flutter/src/rendering/image.dart@RenderImage@detach': (m.Scope scope, RenderImage target)=>target.detach,
'package:flutter/src/rendering/image.dart@RenderImage@paint': (m.Scope scope, RenderImage target)=>target.paint,
'package:flutter/src/rendering/image.dart@RenderImage@dispose': (m.Scope scope, RenderImage target)=>target.dispose,
'package:flutter/src/rendering/image.dart@RenderImage@debugFillProperties': (m.Scope scope, RenderImage target)=>target.debugFillProperties,

};
}