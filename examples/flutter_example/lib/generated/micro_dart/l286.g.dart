import 'package:flutter/src/widgets/performance_overlay.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/performance_overlay.dart@PerformanceOverlay@#as': (m.Scope scope, target)=>()=>target as PerformanceOverlay,
'package:flutter/src/widgets/performance_overlay.dart@PerformanceOverlay@#is': (m.Scope scope, target)=>()=>target is PerformanceOverlay,
'package:flutter/src/widgets/performance_overlay.dart@PerformanceOverlay@optionsMask': (m.Scope scope, PerformanceOverlay target)=>target.optionsMask,
'package:flutter/src/widgets/performance_overlay.dart@PerformanceOverlay@rasterizerThreshold': (m.Scope scope, PerformanceOverlay target)=>target.rasterizerThreshold,
'package:flutter/src/widgets/performance_overlay.dart@PerformanceOverlay@checkerboardRasterCacheImages': (m.Scope scope, PerformanceOverlay target)=>target.checkerboardRasterCacheImages,
'package:flutter/src/widgets/performance_overlay.dart@PerformanceOverlay@checkerboardOffscreenLayers': (m.Scope scope, PerformanceOverlay target)=>target.checkerboardOffscreenLayers,
'package:flutter/src/widgets/performance_overlay.dart@PerformanceOverlay@': (m.Scope scope)=>({ checkerboardOffscreenLayers,  checkerboardRasterCacheImages,  key,  optionsMask,  rasterizerThreshold}){
return PerformanceOverlay(checkerboardOffscreenLayers:checkerboardOffscreenLayers ?? false, checkerboardRasterCacheImages:checkerboardRasterCacheImages ?? false, key:key, optionsMask:optionsMask ?? 0, rasterizerThreshold:rasterizerThreshold ?? 0);
},
'package:flutter/src/widgets/performance_overlay.dart@PerformanceOverlay@allEnabled': (m.Scope scope)=>PerformanceOverlay.allEnabled,
'package:flutter/src/widgets/performance_overlay.dart@PerformanceOverlay@createRenderObject': (m.Scope scope, PerformanceOverlay target)=>target.createRenderObject,
'package:flutter/src/widgets/performance_overlay.dart@PerformanceOverlay@updateRenderObject': (m.Scope scope, PerformanceOverlay target)=>target.updateRenderObject,

};
}