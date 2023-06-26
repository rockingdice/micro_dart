import 'package:flutter/src/rendering/rotated_box.dart';
import 'dart:math';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@#as': (m.Scope scope, target)=>()=>target as RenderRotatedBox,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@#is': (m.Scope scope, target)=>()=>target is RenderRotatedBox,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@quarterTurns': (m.Scope scope, RenderRotatedBox target)=>target.quarterTurns,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@quarterTurns:set': (m.Scope scope, RenderRotatedBox target)=>(other)=>target.quarterTurns=other,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@': (m.Scope scope)=>RenderRotatedBox,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@computeMinIntrinsicWidth': (m.Scope scope, RenderRotatedBox target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@computeMaxIntrinsicWidth': (m.Scope scope, RenderRotatedBox target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@computeMinIntrinsicHeight': (m.Scope scope, RenderRotatedBox target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@computeMaxIntrinsicHeight': (m.Scope scope, RenderRotatedBox target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@computeDryLayout': (m.Scope scope, RenderRotatedBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@performLayout': (m.Scope scope, RenderRotatedBox target)=>target.performLayout,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@hitTestChildren': (m.Scope scope, RenderRotatedBox target)=>target.hitTestChildren,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@paint': (m.Scope scope, RenderRotatedBox target)=>target.paint,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@dispose': (m.Scope scope, RenderRotatedBox target)=>target.dispose,
'package:flutter/src/rendering/rotated_box.dart@RenderRotatedBox@applyPaintTransform': (m.Scope scope, RenderRotatedBox target)=>target.applyPaintTransform,

};
}