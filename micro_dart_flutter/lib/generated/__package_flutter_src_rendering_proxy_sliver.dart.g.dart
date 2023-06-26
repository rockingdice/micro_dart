import 'package:flutter/src/rendering/proxy_sliver.dart';
import 'dart:ui' show Color;
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/proxy_box.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/proxy_sliver.dart@RenderProxySliver@#as': (m.Scope scope, target)=>()=>target as RenderProxySliver,
'package:flutter/src/rendering/proxy_sliver.dart@RenderProxySliver@#is': (m.Scope scope, target)=>()=>target is RenderProxySliver,
'package:flutter/src/rendering/proxy_sliver.dart@RenderProxySliver@setupParentData': (m.Scope scope, RenderProxySliver target)=>target.setupParentData,
'package:flutter/src/rendering/proxy_sliver.dart@RenderProxySliver@performLayout': (m.Scope scope, RenderProxySliver target)=>target.performLayout,
'package:flutter/src/rendering/proxy_sliver.dart@RenderProxySliver@paint': (m.Scope scope, RenderProxySliver target)=>target.paint,
'package:flutter/src/rendering/proxy_sliver.dart@RenderProxySliver@hitTestChildren': (m.Scope scope, RenderProxySliver target)=>target.hitTestChildren,
'package:flutter/src/rendering/proxy_sliver.dart@RenderProxySliver@childMainAxisPosition': (m.Scope scope, RenderProxySliver target)=>target.childMainAxisPosition,
'package:flutter/src/rendering/proxy_sliver.dart@RenderProxySliver@applyPaintTransform': (m.Scope scope, RenderProxySliver target)=>target.applyPaintTransform,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOpacity@#as': (m.Scope scope, target)=>()=>target as RenderSliverOpacity,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOpacity@#is': (m.Scope scope, target)=>()=>target is RenderSliverOpacity,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOpacity@alwaysNeedsCompositing': (m.Scope scope, RenderSliverOpacity target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOpacity@opacity': (m.Scope scope, RenderSliverOpacity target)=>target.opacity,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOpacity@opacity:set': (m.Scope scope, RenderSliverOpacity target)=>(other)=>target.opacity=other,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOpacity@alwaysIncludeSemantics': (m.Scope scope, RenderSliverOpacity target)=>target.alwaysIncludeSemantics,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOpacity@alwaysIncludeSemantics:set': (m.Scope scope, RenderSliverOpacity target)=>(other)=>target.alwaysIncludeSemantics=other,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOpacity@': (m.Scope scope)=>({ alwaysIncludeSemantics,  opacity,  sliver}){
return RenderSliverOpacity(alwaysIncludeSemantics:alwaysIncludeSemantics ?? false, opacity:opacity ?? 1.0, sliver:sliver);
},
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOpacity@paint': (m.Scope scope, RenderSliverOpacity target)=>target.paint,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOpacity@visitChildrenForSemantics': (m.Scope scope, RenderSliverOpacity target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildrenForSemantics(visitorProxy);
},
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOpacity@debugFillProperties': (m.Scope scope, RenderSliverOpacity target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverIgnorePointer@#as': (m.Scope scope, target)=>()=>target as RenderSliverIgnorePointer,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverIgnorePointer@#is': (m.Scope scope, target)=>()=>target is RenderSliverIgnorePointer,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverIgnorePointer@ignoring': (m.Scope scope, RenderSliverIgnorePointer target)=>target.ignoring,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverIgnorePointer@ignoring:set': (m.Scope scope, RenderSliverIgnorePointer target)=>(other)=>target.ignoring=other,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverIgnorePointer@ignoringSemantics': (m.Scope scope, RenderSliverIgnorePointer target)=>target.ignoringSemantics,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverIgnorePointer@ignoringSemantics:set': (m.Scope scope, RenderSliverIgnorePointer target)=>(other)=>target.ignoringSemantics=other,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverIgnorePointer@': (m.Scope scope)=>({ ignoring,  ignoringSemantics,  sliver}){
return RenderSliverIgnorePointer(ignoring:ignoring ?? true, ignoringSemantics:ignoringSemantics, sliver:sliver);
},
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverIgnorePointer@hitTest': (m.Scope scope, RenderSliverIgnorePointer target)=>target.hitTest,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverIgnorePointer@visitChildrenForSemantics': (m.Scope scope, RenderSliverIgnorePointer target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildrenForSemantics(visitorProxy);
},
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverIgnorePointer@debugFillProperties': (m.Scope scope, RenderSliverIgnorePointer target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOffstage@#as': (m.Scope scope, target)=>()=>target as RenderSliverOffstage,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOffstage@#is': (m.Scope scope, target)=>()=>target is RenderSliverOffstage,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOffstage@offstage': (m.Scope scope, RenderSliverOffstage target)=>target.offstage,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOffstage@offstage:set': (m.Scope scope, RenderSliverOffstage target)=>(other)=>target.offstage=other,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOffstage@': (m.Scope scope)=>({ offstage,  sliver}){
return RenderSliverOffstage(offstage:offstage ?? true, sliver:sliver);
},
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOffstage@performLayout': (m.Scope scope, RenderSliverOffstage target)=>target.performLayout,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOffstage@hitTest': (m.Scope scope, RenderSliverOffstage target)=>target.hitTest,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOffstage@hitTestChildren': (m.Scope scope, RenderSliverOffstage target)=>target.hitTestChildren,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOffstage@paint': (m.Scope scope, RenderSliverOffstage target)=>target.paint,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOffstage@visitChildrenForSemantics': (m.Scope scope, RenderSliverOffstage target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildrenForSemantics(visitorProxy);
},
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOffstage@debugFillProperties': (m.Scope scope, RenderSliverOffstage target)=>target.debugFillProperties,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverOffstage@debugDescribeChildren': (m.Scope scope, RenderSliverOffstage target)=>target.debugDescribeChildren,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverAnimatedOpacity@#as': (m.Scope scope, target)=>()=>target as RenderSliverAnimatedOpacity,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverAnimatedOpacity@#is': (m.Scope scope, target)=>()=>target is RenderSliverAnimatedOpacity,
'package:flutter/src/rendering/proxy_sliver.dart@RenderSliverAnimatedOpacity@': (m.Scope scope)=>RenderSliverAnimatedOpacity,

};
}