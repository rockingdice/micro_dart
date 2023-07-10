import 'package:flutter/src/rendering/sliver_padding.dart';
import 'dart:math';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@#as': (m.Scope scope, target)=>()=>target as RenderSliverEdgeInsetsPadding,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@#is': (m.Scope scope, target)=>()=>target is RenderSliverEdgeInsetsPadding,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@resolvedPadding': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.resolvedPadding,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@beforePadding': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.beforePadding,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@afterPadding': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.afterPadding,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@mainAxisPadding': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.mainAxisPadding,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@crossAxisPadding': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.crossAxisPadding,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@setupParentData': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.setupParentData,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@performLayout': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.performLayout,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@hitTestChildren': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.hitTestChildren,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@childMainAxisPosition': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.childMainAxisPosition,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@childCrossAxisPosition': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.childCrossAxisPosition,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@childScrollOffset': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.childScrollOffset,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@applyPaintTransform': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.applyPaintTransform,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@paint': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.paint,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverEdgeInsetsPadding@debugPaint': (m.Scope scope, RenderSliverEdgeInsetsPadding target)=>target.debugPaint,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverPadding@#as': (m.Scope scope, target)=>()=>target as RenderSliverPadding,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverPadding@#is': (m.Scope scope, target)=>()=>target is RenderSliverPadding,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverPadding@resolvedPadding': (m.Scope scope, RenderSliverPadding target)=>target.resolvedPadding,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverPadding@padding': (m.Scope scope, RenderSliverPadding target)=>target.padding,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverPadding@padding:set': (m.Scope scope, RenderSliverPadding target)=>(other)=>target.padding=other,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverPadding@textDirection': (m.Scope scope, RenderSliverPadding target)=>target.textDirection,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverPadding@textDirection:set': (m.Scope scope, RenderSliverPadding target)=>(other)=>target.textDirection=other,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverPadding@': (m.Scope scope)=>({ child,  padding,  textDirection}){
return RenderSliverPadding(child:child, padding:padding, textDirection:textDirection);
},
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverPadding@performLayout': (m.Scope scope, RenderSliverPadding target)=>target.performLayout,
'package:flutter/src/rendering/sliver_padding.dart@RenderSliverPadding@debugFillProperties': (m.Scope scope, RenderSliverPadding target)=>target.debugFillProperties,

};
}