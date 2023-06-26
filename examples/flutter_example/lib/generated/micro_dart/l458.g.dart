import 'package:flutter/src/rendering/performance_overlay.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@#as': (m.Scope scope, target)=>()=>target as RenderPerformanceOverlay,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@#is': (m.Scope scope, target)=>()=>target is RenderPerformanceOverlay,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@optionsMask': (m.Scope scope, RenderPerformanceOverlay target)=>target.optionsMask,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@optionsMask:set': (m.Scope scope, RenderPerformanceOverlay target)=>(other)=>target.optionsMask=other,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@rasterizerThreshold': (m.Scope scope, RenderPerformanceOverlay target)=>target.rasterizerThreshold,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@rasterizerThreshold:set': (m.Scope scope, RenderPerformanceOverlay target)=>(other)=>target.rasterizerThreshold=other,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@checkerboardRasterCacheImages': (m.Scope scope, RenderPerformanceOverlay target)=>target.checkerboardRasterCacheImages,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@checkerboardRasterCacheImages:set': (m.Scope scope, RenderPerformanceOverlay target)=>(other)=>target.checkerboardRasterCacheImages=other,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@checkerboardOffscreenLayers': (m.Scope scope, RenderPerformanceOverlay target)=>target.checkerboardOffscreenLayers,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@checkerboardOffscreenLayers:set': (m.Scope scope, RenderPerformanceOverlay target)=>(other)=>target.checkerboardOffscreenLayers=other,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@sizedByParent': (m.Scope scope, RenderPerformanceOverlay target)=>target.sizedByParent,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@alwaysNeedsCompositing': (m.Scope scope, RenderPerformanceOverlay target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@': (m.Scope scope)=>({ checkerboardOffscreenLayers,  checkerboardRasterCacheImages,  optionsMask,  rasterizerThreshold}){
return RenderPerformanceOverlay(checkerboardOffscreenLayers:checkerboardOffscreenLayers ?? false, checkerboardRasterCacheImages:checkerboardRasterCacheImages ?? false, optionsMask:optionsMask ?? 0, rasterizerThreshold:rasterizerThreshold ?? 0);
},
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@computeMinIntrinsicWidth': (m.Scope scope, RenderPerformanceOverlay target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@computeMaxIntrinsicWidth': (m.Scope scope, RenderPerformanceOverlay target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@computeMinIntrinsicHeight': (m.Scope scope, RenderPerformanceOverlay target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@computeMaxIntrinsicHeight': (m.Scope scope, RenderPerformanceOverlay target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@computeDryLayout': (m.Scope scope, RenderPerformanceOverlay target)=>target.computeDryLayout,
'package:flutter/src/rendering/performance_overlay.dart@RenderPerformanceOverlay@paint': (m.Scope scope, RenderPerformanceOverlay target)=>target.paint,

};
}