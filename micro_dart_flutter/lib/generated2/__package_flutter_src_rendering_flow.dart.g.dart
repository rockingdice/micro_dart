import 'package:flutter/src/rendering/flow.dart';
import 'dart:ui' show Color;
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/flow.dart@FlowPaintingContext@#as': (m.Scope scope, target)=>()=>target as FlowPaintingContext,
'package:flutter/src/rendering/flow.dart@FlowPaintingContext@#is': (m.Scope scope, target)=>()=>target is FlowPaintingContext,
'package:flutter/src/rendering/flow.dart@FlowPaintingContext@size': (m.Scope scope, FlowPaintingContext target)=>target.size,
'package:flutter/src/rendering/flow.dart@FlowPaintingContext@childCount': (m.Scope scope, FlowPaintingContext target)=>target.childCount,
'package:flutter/src/rendering/flow.dart@FlowPaintingContext@getChildSize': (m.Scope scope, FlowPaintingContext target)=>target.getChildSize,
'package:flutter/src/rendering/flow.dart@FlowPaintingContext@paintChild': (m.Scope scope, FlowPaintingContext target)=>target.paintChild,
'package:flutter/src/rendering/flow.dart@FlowDelegate@#as': (m.Scope scope, target)=>()=>target as FlowDelegate,
'package:flutter/src/rendering/flow.dart@FlowDelegate@#is': (m.Scope scope, target)=>()=>target is FlowDelegate,
'package:flutter/src/rendering/flow.dart@FlowDelegate@getSize': (m.Scope scope, FlowDelegate target)=>target.getSize,
'package:flutter/src/rendering/flow.dart@FlowDelegate@getConstraintsForChild': (m.Scope scope, FlowDelegate target)=>target.getConstraintsForChild,
'package:flutter/src/rendering/flow.dart@FlowDelegate@paintChildren': (m.Scope scope, FlowDelegate target)=>target.paintChildren,
'package:flutter/src/rendering/flow.dart@FlowDelegate@shouldRelayout': (m.Scope scope, FlowDelegate target)=>target.shouldRelayout,
'package:flutter/src/rendering/flow.dart@FlowDelegate@shouldRepaint': (m.Scope scope, FlowDelegate target)=>target.shouldRepaint,
'package:flutter/src/rendering/flow.dart@FlowDelegate@toString': (m.Scope scope, FlowDelegate target)=>target.toString,
'package:flutter/src/rendering/flow.dart@FlowParentData@#as': (m.Scope scope, target)=>()=>target as FlowParentData,
'package:flutter/src/rendering/flow.dart@FlowParentData@#is': (m.Scope scope, target)=>()=>target is FlowParentData,
'package:flutter/src/rendering/flow.dart@FlowParentData@': (m.Scope scope)=>(){
return FlowParentData();
},
'package:flutter/src/rendering/flow.dart@RenderFlow@#as': (m.Scope scope, target)=>()=>target as RenderFlow,
'package:flutter/src/rendering/flow.dart@RenderFlow@#is': (m.Scope scope, target)=>()=>target is RenderFlow,
'package:flutter/src/rendering/flow.dart@RenderFlow@delegate': (m.Scope scope, RenderFlow target)=>target.delegate,
'package:flutter/src/rendering/flow.dart@RenderFlow@delegate:set': (m.Scope scope, RenderFlow target)=>(other)=>target.delegate=other,
'package:flutter/src/rendering/flow.dart@RenderFlow@clipBehavior': (m.Scope scope, RenderFlow target)=>target.clipBehavior,
'package:flutter/src/rendering/flow.dart@RenderFlow@clipBehavior:set': (m.Scope scope, RenderFlow target)=>(other)=>target.clipBehavior=other,
'package:flutter/src/rendering/flow.dart@RenderFlow@isRepaintBoundary': (m.Scope scope, RenderFlow target)=>target.isRepaintBoundary,
'package:flutter/src/rendering/flow.dart@RenderFlow@': (m.Scope scope)=>({ children,  clipBehavior,  delegate}){
return RenderFlow(children:children, clipBehavior:clipBehavior ?? Clip.hardEdge, delegate:delegate);
},
'package:flutter/src/rendering/flow.dart@RenderFlow@setupParentData': (m.Scope scope, RenderFlow target)=>target.setupParentData,
'package:flutter/src/rendering/flow.dart@RenderFlow@attach': (m.Scope scope, RenderFlow target)=>target.attach,
'package:flutter/src/rendering/flow.dart@RenderFlow@detach': (m.Scope scope, RenderFlow target)=>target.detach,
'package:flutter/src/rendering/flow.dart@RenderFlow@computeMinIntrinsicWidth': (m.Scope scope, RenderFlow target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/flow.dart@RenderFlow@computeMaxIntrinsicWidth': (m.Scope scope, RenderFlow target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/flow.dart@RenderFlow@computeMinIntrinsicHeight': (m.Scope scope, RenderFlow target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/flow.dart@RenderFlow@computeMaxIntrinsicHeight': (m.Scope scope, RenderFlow target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/flow.dart@RenderFlow@computeDryLayout': (m.Scope scope, RenderFlow target)=>target.computeDryLayout,
'package:flutter/src/rendering/flow.dart@RenderFlow@performLayout': (m.Scope scope, RenderFlow target)=>target.performLayout,
'package:flutter/src/rendering/flow.dart@RenderFlow@getChildSize': (m.Scope scope, RenderFlow target)=>target.getChildSize,
'package:flutter/src/rendering/flow.dart@RenderFlow@paintChild': (m.Scope scope, RenderFlow target)=>target.paintChild,
'package:flutter/src/rendering/flow.dart@RenderFlow@paint': (m.Scope scope, RenderFlow target)=>target.paint,
'package:flutter/src/rendering/flow.dart@RenderFlow@dispose': (m.Scope scope, RenderFlow target)=>target.dispose,
'package:flutter/src/rendering/flow.dart@RenderFlow@hitTestChildren': (m.Scope scope, RenderFlow target)=>target.hitTestChildren,
'package:flutter/src/rendering/flow.dart@RenderFlow@applyPaintTransform': (m.Scope scope, RenderFlow target)=>target.applyPaintTransform,

};
}