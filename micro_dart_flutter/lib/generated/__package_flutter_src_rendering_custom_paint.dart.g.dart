import 'package:flutter/src/rendering/custom_paint.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/proxy_box.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/custom_paint.dart@CustomPainter@#as': (m.Scope scope, target)=>()=>target as CustomPainter,
'package:flutter/src/rendering/custom_paint.dart@CustomPainter@#is': (m.Scope scope, target)=>()=>target is CustomPainter,
'package:flutter/src/rendering/custom_paint.dart@CustomPainter@semanticsBuilder': (m.Scope scope, CustomPainter target)=>target.semanticsBuilder,
'package:flutter/src/rendering/custom_paint.dart@CustomPainter@addListener': (m.Scope scope, CustomPainter target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/rendering/custom_paint.dart@CustomPainter@removeListener': (m.Scope scope, CustomPainter target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/rendering/custom_paint.dart@CustomPainter@paint': (m.Scope scope, CustomPainter target)=>target.paint,
'package:flutter/src/rendering/custom_paint.dart@CustomPainter@shouldRebuildSemantics': (m.Scope scope, CustomPainter target)=>target.shouldRebuildSemantics,
'package:flutter/src/rendering/custom_paint.dart@CustomPainter@shouldRepaint': (m.Scope scope, CustomPainter target)=>target.shouldRepaint,
'package:flutter/src/rendering/custom_paint.dart@CustomPainter@hitTest': (m.Scope scope, CustomPainter target)=>target.hitTest,
'package:flutter/src/rendering/custom_paint.dart@CustomPainter@toString': (m.Scope scope, CustomPainter target)=>target.toString,
'package:flutter/src/rendering/custom_paint.dart@CustomPainterSemantics@#as': (m.Scope scope, target)=>()=>target as CustomPainterSemantics,
'package:flutter/src/rendering/custom_paint.dart@CustomPainterSemantics@#is': (m.Scope scope, target)=>()=>target is CustomPainterSemantics,
'package:flutter/src/rendering/custom_paint.dart@CustomPainterSemantics@key': (m.Scope scope, CustomPainterSemantics target)=>target.key,
'package:flutter/src/rendering/custom_paint.dart@CustomPainterSemantics@rect': (m.Scope scope, CustomPainterSemantics target)=>target.rect,
'package:flutter/src/rendering/custom_paint.dart@CustomPainterSemantics@transform': (m.Scope scope, CustomPainterSemantics target)=>target.transform,
'package:flutter/src/rendering/custom_paint.dart@CustomPainterSemantics@properties': (m.Scope scope, CustomPainterSemantics target)=>target.properties,
'package:flutter/src/rendering/custom_paint.dart@CustomPainterSemantics@tags': (m.Scope scope, CustomPainterSemantics target)=>target.tags,
'package:flutter/src/rendering/custom_paint.dart@CustomPainterSemantics@': (m.Scope scope)=>({ key,  properties,  rect,  tags,  transform}){
return CustomPainterSemantics(key:key, properties:properties, rect:rect, tags:tags, transform:transform);
},
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@#as': (m.Scope scope, target)=>()=>target as RenderCustomPaint,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@#is': (m.Scope scope, target)=>()=>target is RenderCustomPaint,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@isComplex': (m.Scope scope, RenderCustomPaint target)=>target.isComplex,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@isComplex:set': (m.Scope scope, RenderCustomPaint target)=>(other)=>target.isComplex=other,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@willChange': (m.Scope scope, RenderCustomPaint target)=>target.willChange,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@willChange:set': (m.Scope scope, RenderCustomPaint target)=>(other)=>target.willChange=other,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@painter': (m.Scope scope, RenderCustomPaint target)=>target.painter,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@painter:set': (m.Scope scope, RenderCustomPaint target)=>(other)=>target.painter=other,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@foregroundPainter': (m.Scope scope, RenderCustomPaint target)=>target.foregroundPainter,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@foregroundPainter:set': (m.Scope scope, RenderCustomPaint target)=>(other)=>target.foregroundPainter=other,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@preferredSize': (m.Scope scope, RenderCustomPaint target)=>target.preferredSize,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@preferredSize:set': (m.Scope scope, RenderCustomPaint target)=>(other)=>target.preferredSize=other,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@': (m.Scope scope)=>({ child,  foregroundPainter,  isComplex,  painter,  preferredSize,  willChange}){
return RenderCustomPaint(child:child, foregroundPainter:foregroundPainter, isComplex:isComplex ?? false, painter:painter, preferredSize:preferredSize ?? Size.zero, willChange:willChange ?? false);
},
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@computeMinIntrinsicWidth': (m.Scope scope, RenderCustomPaint target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@computeMaxIntrinsicWidth': (m.Scope scope, RenderCustomPaint target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@computeMinIntrinsicHeight': (m.Scope scope, RenderCustomPaint target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@computeMaxIntrinsicHeight': (m.Scope scope, RenderCustomPaint target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@attach': (m.Scope scope, RenderCustomPaint target)=>target.attach,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@detach': (m.Scope scope, RenderCustomPaint target)=>target.detach,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@hitTestChildren': (m.Scope scope, RenderCustomPaint target)=>target.hitTestChildren,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@hitTestSelf': (m.Scope scope, RenderCustomPaint target)=>target.hitTestSelf,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@performLayout': (m.Scope scope, RenderCustomPaint target)=>target.performLayout,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@computeSizeForNoChild': (m.Scope scope, RenderCustomPaint target)=>target.computeSizeForNoChild,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@paint': (m.Scope scope, RenderCustomPaint target)=>target.paint,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@describeSemanticsConfiguration': (m.Scope scope, RenderCustomPaint target)=>target.describeSemanticsConfiguration,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@assembleSemanticsNode': (m.Scope scope, RenderCustomPaint target)=>target.assembleSemanticsNode,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@clearSemantics': (m.Scope scope, RenderCustomPaint target)=>target.clearSemantics,
'package:flutter/src/rendering/custom_paint.dart@RenderCustomPaint@debugFillProperties': (m.Scope scope, RenderCustomPaint target)=>target.debugFillProperties,

};
}