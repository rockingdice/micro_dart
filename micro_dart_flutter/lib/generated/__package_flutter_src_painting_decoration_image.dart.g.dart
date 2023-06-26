import 'package:flutter/src/painting/decoration_image.dart';
import 'dart:developer';
import 'dart:math';
import 'dart:ui' show FlutterView,Image;
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/painting/alignment.dart';
import 'package:flutter/src/painting/basic_types.dart';
import 'package:flutter/src/painting/binding.dart';
import 'package:flutter/src/painting/borders.dart';
import 'package:flutter/src/painting/box_fit.dart';
import 'package:flutter/src/painting/debug.dart';
import 'package:flutter/src/painting/image_provider.dart';
import 'package:flutter/src/painting/image_stream.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/painting/decoration_image.dart@DecorationImage@#as': (m.Scope scope, target)=>()=>target as DecorationImage,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@#is': (m.Scope scope, target)=>()=>target is DecorationImage,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@image': (m.Scope scope, DecorationImage target)=>target.image,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@onError': (m.Scope scope, DecorationImage target)=>target.onError,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@colorFilter': (m.Scope scope, DecorationImage target)=>target.colorFilter,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@fit': (m.Scope scope, DecorationImage target)=>target.fit,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@alignment': (m.Scope scope, DecorationImage target)=>target.alignment,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@centerSlice': (m.Scope scope, DecorationImage target)=>target.centerSlice,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@repeat': (m.Scope scope, DecorationImage target)=>target.repeat,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@matchTextDirection': (m.Scope scope, DecorationImage target)=>target.matchTextDirection,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@scale': (m.Scope scope, DecorationImage target)=>target.scale,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@opacity': (m.Scope scope, DecorationImage target)=>target.opacity,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@filterQuality': (m.Scope scope, DecorationImage target)=>target.filterQuality,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@invertColors': (m.Scope scope, DecorationImage target)=>target.invertColors,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@isAntiAlias': (m.Scope scope, DecorationImage target)=>target.isAntiAlias,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@hashCode': (m.Scope scope, DecorationImage target)=>target.hashCode,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@': (m.Scope scope)=>({ alignment,  centerSlice,  colorFilter,  filterQuality,  fit,  image,  invertColors,  isAntiAlias,  matchTextDirection,  onError,  opacity,  repeat,  scale}){
void onErrorProxy( exception,  stackTrace) {
 engine.callFunctionPointer(scope, onError!,[exception, stackTrace], {});
}

return DecorationImage(alignment:alignment ?? Alignment.center, centerSlice:centerSlice, colorFilter:colorFilter, filterQuality:filterQuality ?? FilterQuality.low, fit:fit, image:image, invertColors:invertColors ?? false, isAntiAlias:isAntiAlias ?? false, matchTextDirection:matchTextDirection ?? false, onError:onError == null ? null :onErrorProxy, opacity:opacity ?? 1.0, repeat:repeat ?? ImageRepeat.noRepeat, scale:scale ?? 1.0);
},
'package:flutter/src/painting/decoration_image.dart@DecorationImage@createPainter': (m.Scope scope, DecorationImage target)=>( onChanged){
void onChangedProxy() {
 engine.callFunctionPointer(scope, onChanged!,[], {});
}

return target.createPainter(onChangedProxy);
},
'package:flutter/src/painting/decoration_image.dart@DecorationImage@==': (m.Scope scope, DecorationImage target)=>(other)=> target == other,
'package:flutter/src/painting/decoration_image.dart@DecorationImage@toString': (m.Scope scope, DecorationImage target)=>target.toString,
'package:flutter/src/painting/decoration_image.dart@DecorationImagePainter@#as': (m.Scope scope, target)=>()=>target as DecorationImagePainter,
'package:flutter/src/painting/decoration_image.dart@DecorationImagePainter@#is': (m.Scope scope, target)=>()=>target is DecorationImagePainter,
'package:flutter/src/painting/decoration_image.dart@DecorationImagePainter@paint': (m.Scope scope, DecorationImagePainter target)=>target.paint,
'package:flutter/src/painting/decoration_image.dart@DecorationImagePainter@dispose': (m.Scope scope, DecorationImagePainter target)=>target.dispose,
'package:flutter/src/painting/decoration_image.dart@DecorationImagePainter@toString': (m.Scope scope, DecorationImagePainter target)=>target.toString,
'package:flutter/src/painting/decoration_image.dart@ImageTilingInfo@#as': (m.Scope scope, target)=>()=>target as ImageTilingInfo,
'package:flutter/src/painting/decoration_image.dart@ImageTilingInfo@#is': (m.Scope scope, target)=>()=>target is ImageTilingInfo,
'package:flutter/src/painting/decoration_image.dart@ImageTilingInfo@tmx': (m.Scope scope, ImageTilingInfo target)=>target.tmx,
'package:flutter/src/painting/decoration_image.dart@ImageTilingInfo@tmy': (m.Scope scope, ImageTilingInfo target)=>target.tmy,
'package:flutter/src/painting/decoration_image.dart@ImageTilingInfo@transform': (m.Scope scope, ImageTilingInfo target)=>target.transform,
'package:flutter/src/painting/decoration_image.dart@ImageTilingInfo@': (m.Scope scope)=>ImageTilingInfo,
'package:flutter/src/painting/decoration_image.dart@ImageTilingInfo@toString': (m.Scope scope, ImageTilingInfo target)=>target.toString,
'package:flutter/src/painting/decoration_image.dart@@debugFlushLastFrameImageSizeInfo': (m.Scope scope)=>debugFlushLastFrameImageSizeInfo,
'package:flutter/src/painting/decoration_image.dart@@createTilingInfo': (m.Scope scope)=>createTilingInfo,
'package:flutter/src/painting/decoration_image.dart@@paintImage': (m.Scope scope)=>paintImage,

};
}