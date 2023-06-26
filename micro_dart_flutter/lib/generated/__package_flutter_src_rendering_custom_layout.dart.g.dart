import 'package:flutter/src/rendering/custom_layout.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutParentData@#as': (m.Scope scope, target)=>()=>target as MultiChildLayoutParentData,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutParentData@#is': (m.Scope scope, target)=>()=>target is MultiChildLayoutParentData,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutParentData@id': (m.Scope scope, MultiChildLayoutParentData target)=>target.id,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutParentData@id:set': (m.Scope scope, MultiChildLayoutParentData target)=>(other)=>target.id=other,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutParentData@': (m.Scope scope)=>(){
return MultiChildLayoutParentData();
},
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutParentData@toString': (m.Scope scope, MultiChildLayoutParentData target)=>target.toString,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutDelegate@#as': (m.Scope scope, target)=>()=>target as MultiChildLayoutDelegate,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutDelegate@#is': (m.Scope scope, target)=>()=>target is MultiChildLayoutDelegate,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutDelegate@hasChild': (m.Scope scope, MultiChildLayoutDelegate target)=>target.hasChild,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutDelegate@layoutChild': (m.Scope scope, MultiChildLayoutDelegate target)=>target.layoutChild,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutDelegate@positionChild': (m.Scope scope, MultiChildLayoutDelegate target)=>target.positionChild,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutDelegate@getSize': (m.Scope scope, MultiChildLayoutDelegate target)=>target.getSize,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutDelegate@performLayout': (m.Scope scope, MultiChildLayoutDelegate target)=>target.performLayout,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutDelegate@shouldRelayout': (m.Scope scope, MultiChildLayoutDelegate target)=>target.shouldRelayout,
'package:flutter/src/rendering/custom_layout.dart@MultiChildLayoutDelegate@toString': (m.Scope scope, MultiChildLayoutDelegate target)=>target.toString,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@#as': (m.Scope scope, target)=>()=>target as RenderCustomMultiChildLayoutBox,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@#is': (m.Scope scope, target)=>()=>target is RenderCustomMultiChildLayoutBox,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@delegate': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>target.delegate,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@delegate:set': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>(other)=>target.delegate=other,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@': (m.Scope scope)=>RenderCustomMultiChildLayoutBox,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@setupParentData': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>target.setupParentData,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@attach': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>target.attach,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@detach': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>target.detach,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@computeMinIntrinsicWidth': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@computeMaxIntrinsicWidth': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@computeMinIntrinsicHeight': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@computeMaxIntrinsicHeight': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@computeDryLayout': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@performLayout': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>target.performLayout,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@paint': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>target.paint,
'package:flutter/src/rendering/custom_layout.dart@RenderCustomMultiChildLayoutBox@hitTestChildren': (m.Scope scope, RenderCustomMultiChildLayoutBox target)=>target.hitTestChildren,

};
}