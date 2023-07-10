import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@#as': (m.Scope scope, target)=>()=>target as FixedScrollMetrics,
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@#is': (m.Scope scope, target)=>()=>target is FixedScrollMetrics,
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@axisDirection': (m.Scope scope, FixedScrollMetrics target)=>target.axisDirection,
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@devicePixelRatio': (m.Scope scope, FixedScrollMetrics target)=>target.devicePixelRatio,
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@minScrollExtent': (m.Scope scope, FixedScrollMetrics target)=>target.minScrollExtent,
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@maxScrollExtent': (m.Scope scope, FixedScrollMetrics target)=>target.maxScrollExtent,
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@hasContentDimensions': (m.Scope scope, FixedScrollMetrics target)=>target.hasContentDimensions,
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@pixels': (m.Scope scope, FixedScrollMetrics target)=>target.pixels,
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@hasPixels': (m.Scope scope, FixedScrollMetrics target)=>target.hasPixels,
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@viewportDimension': (m.Scope scope, FixedScrollMetrics target)=>target.viewportDimension,
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@hasViewportDimension': (m.Scope scope, FixedScrollMetrics target)=>target.hasViewportDimension,
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@': (m.Scope scope)=>({ axisDirection,  devicePixelRatio,  maxScrollExtent,  minScrollExtent,  pixels,  viewportDimension}){
return FixedScrollMetrics(axisDirection:axisDirection, devicePixelRatio:devicePixelRatio, maxScrollExtent:maxScrollExtent, minScrollExtent:minScrollExtent, pixels:pixels, viewportDimension:viewportDimension);
},
'package:flutter/src/widgets/scroll_metrics.dart@FixedScrollMetrics@toString': (m.Scope scope, FixedScrollMetrics target)=>target.toString,

};
}