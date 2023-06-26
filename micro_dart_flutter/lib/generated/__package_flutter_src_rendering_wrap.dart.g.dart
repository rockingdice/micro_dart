import 'package:flutter/src/rendering/wrap.dart';
import 'dart:math';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/layout_helper.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/wrap.dart@WrapParentData@#as': (m.Scope scope, target)=>()=>target as WrapParentData,
'package:flutter/src/rendering/wrap.dart@WrapParentData@#is': (m.Scope scope, target)=>()=>target is WrapParentData,
'package:flutter/src/rendering/wrap.dart@WrapParentData@': (m.Scope scope)=>(){
return WrapParentData();
},
'package:flutter/src/rendering/wrap.dart@RenderWrap@#as': (m.Scope scope, target)=>()=>target as RenderWrap,
'package:flutter/src/rendering/wrap.dart@RenderWrap@#is': (m.Scope scope, target)=>()=>target is RenderWrap,
'package:flutter/src/rendering/wrap.dart@RenderWrap@direction': (m.Scope scope, RenderWrap target)=>target.direction,
'package:flutter/src/rendering/wrap.dart@RenderWrap@direction:set': (m.Scope scope, RenderWrap target)=>(other)=>target.direction=other,
'package:flutter/src/rendering/wrap.dart@RenderWrap@alignment': (m.Scope scope, RenderWrap target)=>target.alignment,
'package:flutter/src/rendering/wrap.dart@RenderWrap@alignment:set': (m.Scope scope, RenderWrap target)=>(other)=>target.alignment=other,
'package:flutter/src/rendering/wrap.dart@RenderWrap@spacing': (m.Scope scope, RenderWrap target)=>target.spacing,
'package:flutter/src/rendering/wrap.dart@RenderWrap@spacing:set': (m.Scope scope, RenderWrap target)=>(other)=>target.spacing=other,
'package:flutter/src/rendering/wrap.dart@RenderWrap@runAlignment': (m.Scope scope, RenderWrap target)=>target.runAlignment,
'package:flutter/src/rendering/wrap.dart@RenderWrap@runAlignment:set': (m.Scope scope, RenderWrap target)=>(other)=>target.runAlignment=other,
'package:flutter/src/rendering/wrap.dart@RenderWrap@runSpacing': (m.Scope scope, RenderWrap target)=>target.runSpacing,
'package:flutter/src/rendering/wrap.dart@RenderWrap@runSpacing:set': (m.Scope scope, RenderWrap target)=>(other)=>target.runSpacing=other,
'package:flutter/src/rendering/wrap.dart@RenderWrap@crossAxisAlignment': (m.Scope scope, RenderWrap target)=>target.crossAxisAlignment,
'package:flutter/src/rendering/wrap.dart@RenderWrap@crossAxisAlignment:set': (m.Scope scope, RenderWrap target)=>(other)=>target.crossAxisAlignment=other,
'package:flutter/src/rendering/wrap.dart@RenderWrap@textDirection': (m.Scope scope, RenderWrap target)=>target.textDirection,
'package:flutter/src/rendering/wrap.dart@RenderWrap@textDirection:set': (m.Scope scope, RenderWrap target)=>(other)=>target.textDirection=other,
'package:flutter/src/rendering/wrap.dart@RenderWrap@verticalDirection': (m.Scope scope, RenderWrap target)=>target.verticalDirection,
'package:flutter/src/rendering/wrap.dart@RenderWrap@verticalDirection:set': (m.Scope scope, RenderWrap target)=>(other)=>target.verticalDirection=other,
'package:flutter/src/rendering/wrap.dart@RenderWrap@clipBehavior': (m.Scope scope, RenderWrap target)=>target.clipBehavior,
'package:flutter/src/rendering/wrap.dart@RenderWrap@clipBehavior:set': (m.Scope scope, RenderWrap target)=>(other)=>target.clipBehavior=other,
'package:flutter/src/rendering/wrap.dart@RenderWrap@': (m.Scope scope)=>({ alignment,  children,  clipBehavior,  crossAxisAlignment,  direction,  runAlignment,  runSpacing,  spacing,  textDirection,  verticalDirection}){
return RenderWrap(alignment:alignment ?? WrapAlignment.start, children:children, clipBehavior:clipBehavior ?? Clip.none, crossAxisAlignment:crossAxisAlignment ?? WrapCrossAlignment.start, direction:direction ?? Axis.horizontal, runAlignment:runAlignment ?? WrapAlignment.start, runSpacing:runSpacing ?? 0.0, spacing:spacing ?? 0.0, textDirection:textDirection, verticalDirection:verticalDirection ?? VerticalDirection.down);
},
'package:flutter/src/rendering/wrap.dart@RenderWrap@setupParentData': (m.Scope scope, RenderWrap target)=>target.setupParentData,
'package:flutter/src/rendering/wrap.dart@RenderWrap@computeMinIntrinsicWidth': (m.Scope scope, RenderWrap target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/wrap.dart@RenderWrap@computeMaxIntrinsicWidth': (m.Scope scope, RenderWrap target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/wrap.dart@RenderWrap@computeMinIntrinsicHeight': (m.Scope scope, RenderWrap target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/wrap.dart@RenderWrap@computeMaxIntrinsicHeight': (m.Scope scope, RenderWrap target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/wrap.dart@RenderWrap@computeDistanceToActualBaseline': (m.Scope scope, RenderWrap target)=>target.computeDistanceToActualBaseline,
'package:flutter/src/rendering/wrap.dart@RenderWrap@computeDryLayout': (m.Scope scope, RenderWrap target)=>target.computeDryLayout,
'package:flutter/src/rendering/wrap.dart@RenderWrap@performLayout': (m.Scope scope, RenderWrap target)=>target.performLayout,
'package:flutter/src/rendering/wrap.dart@RenderWrap@hitTestChildren': (m.Scope scope, RenderWrap target)=>target.hitTestChildren,
'package:flutter/src/rendering/wrap.dart@RenderWrap@paint': (m.Scope scope, RenderWrap target)=>target.paint,
'package:flutter/src/rendering/wrap.dart@RenderWrap@dispose': (m.Scope scope, RenderWrap target)=>target.dispose,
'package:flutter/src/rendering/wrap.dart@RenderWrap@debugFillProperties': (m.Scope scope, RenderWrap target)=>target.debugFillProperties,

};
}