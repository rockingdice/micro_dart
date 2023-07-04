import 'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridParentData@#as': (m.Scope scope, target)=>()=>target as StaggeredGridParentData,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridParentData@#is': (m.Scope scope, target)=>()=>target is StaggeredGridParentData,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridParentData@crossAxisCellCount': (m.Scope scope, StaggeredGridParentData target)=>target.crossAxisCellCount,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridParentData@crossAxisCellCount:set': (m.Scope scope, StaggeredGridParentData target)=>(other)=>target.crossAxisCellCount=other,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridParentData@mainAxisCellCount': (m.Scope scope, StaggeredGridParentData target)=>target.mainAxisCellCount,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridParentData@mainAxisCellCount:set': (m.Scope scope, StaggeredGridParentData target)=>(other)=>target.mainAxisCellCount=other,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridParentData@mainAxisExtent': (m.Scope scope, StaggeredGridParentData target)=>target.mainAxisExtent,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridParentData@mainAxisExtent:set': (m.Scope scope, StaggeredGridParentData target)=>(other)=>target.mainAxisExtent=other,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridParentData@': (m.Scope scope)=>(){
return StaggeredGridParentData();
},
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridParentData@toString': (m.Scope scope, StaggeredGridParentData target)=>target.toString,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegate@#as': (m.Scope scope, target)=>()=>target as StaggeredGridDelegate,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegate@#is': (m.Scope scope, target)=>()=>target is StaggeredGridDelegate,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegate@getCrossAxisCount': (m.Scope scope, StaggeredGridDelegate target)=>target.getCrossAxisCount,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegate@shouldRelayout': (m.Scope scope, StaggeredGridDelegate target)=>target.shouldRelayout,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegateWithFixedCrossAxisCount@#as': (m.Scope scope, target)=>()=>target as StaggeredGridDelegateWithFixedCrossAxisCount,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegateWithFixedCrossAxisCount@#is': (m.Scope scope, target)=>()=>target is StaggeredGridDelegateWithFixedCrossAxisCount,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegateWithFixedCrossAxisCount@crossAxisCount': (m.Scope scope, StaggeredGridDelegateWithFixedCrossAxisCount target)=>target.crossAxisCount,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegateWithFixedCrossAxisCount@': (m.Scope scope)=>({ crossAxisCount}){
return StaggeredGridDelegateWithFixedCrossAxisCount(crossAxisCount:crossAxisCount);
},
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegateWithFixedCrossAxisCount@getCrossAxisCount': (m.Scope scope, StaggeredGridDelegateWithFixedCrossAxisCount target)=>target.getCrossAxisCount,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegateWithFixedCrossAxisCount@shouldRelayout': (m.Scope scope, StaggeredGridDelegateWithFixedCrossAxisCount target)=>target.shouldRelayout,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegateWithMaxCrossAxisExtent@#as': (m.Scope scope, target)=>()=>target as StaggeredGridDelegateWithMaxCrossAxisExtent,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegateWithMaxCrossAxisExtent@#is': (m.Scope scope, target)=>()=>target is StaggeredGridDelegateWithMaxCrossAxisExtent,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegateWithMaxCrossAxisExtent@maxCrossAxisExtent': (m.Scope scope, StaggeredGridDelegateWithMaxCrossAxisExtent target)=>target.maxCrossAxisExtent,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegateWithMaxCrossAxisExtent@': (m.Scope scope)=>({ maxCrossAxisExtent}){
return StaggeredGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:maxCrossAxisExtent);
},
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegateWithMaxCrossAxisExtent@getCrossAxisCount': (m.Scope scope, StaggeredGridDelegateWithMaxCrossAxisExtent target)=>target.getCrossAxisCount,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@StaggeredGridDelegateWithMaxCrossAxisExtent@shouldRelayout': (m.Scope scope, StaggeredGridDelegateWithMaxCrossAxisExtent target)=>target.shouldRelayout,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@#as': (m.Scope scope, target)=>()=>target as RenderStaggeredGrid,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@#is': (m.Scope scope, target)=>()=>target is RenderStaggeredGrid,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@delegate': (m.Scope scope, RenderStaggeredGrid target)=>target.delegate,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@delegate:set': (m.Scope scope, RenderStaggeredGrid target)=>(other)=>target.delegate=other,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@mainAxisSpacing': (m.Scope scope, RenderStaggeredGrid target)=>target.mainAxisSpacing,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@mainAxisSpacing:set': (m.Scope scope, RenderStaggeredGrid target)=>(other)=>target.mainAxisSpacing=other,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@crossAxisSpacing': (m.Scope scope, RenderStaggeredGrid target)=>target.crossAxisSpacing,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@crossAxisSpacing:set': (m.Scope scope, RenderStaggeredGrid target)=>(other)=>target.crossAxisSpacing=other,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@axisDirection': (m.Scope scope, RenderStaggeredGrid target)=>target.axisDirection,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@axisDirection:set': (m.Scope scope, RenderStaggeredGrid target)=>(other)=>target.axisDirection=other,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@mainAxis': (m.Scope scope, RenderStaggeredGrid target)=>target.mainAxis,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@textDirection': (m.Scope scope, RenderStaggeredGrid target)=>target.textDirection,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@textDirection:set': (m.Scope scope, RenderStaggeredGrid target)=>(other)=>target.textDirection=other,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@': (m.Scope scope)=>({ axisDirection,  children,  crossAxisSpacing,  delegate,  mainAxisSpacing,  textDirection}){
return RenderStaggeredGrid(axisDirection:axisDirection, children:children, crossAxisSpacing:crossAxisSpacing, delegate:delegate, mainAxisSpacing:mainAxisSpacing, textDirection:textDirection);
},
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@setupParentData': (m.Scope scope, RenderStaggeredGrid target)=>target.setupParentData,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@computeMinIntrinsicWidth': (m.Scope scope, RenderStaggeredGrid target)=>target.computeMinIntrinsicWidth,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@computeMaxIntrinsicWidth': (m.Scope scope, RenderStaggeredGrid target)=>target.computeMaxIntrinsicWidth,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@computeMinIntrinsicHeight': (m.Scope scope, RenderStaggeredGrid target)=>target.computeMinIntrinsicHeight,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@computeMaxIntrinsicHeight': (m.Scope scope, RenderStaggeredGrid target)=>target.computeMaxIntrinsicHeight,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@computeDistanceToActualBaseline': (m.Scope scope, RenderStaggeredGrid target)=>target.computeDistanceToActualBaseline,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@computeDryLayout': (m.Scope scope, RenderStaggeredGrid target)=>target.computeDryLayout,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@performLayout': (m.Scope scope, RenderStaggeredGrid target)=>target.performLayout,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@hitTestChildren': (m.Scope scope, RenderStaggeredGrid target)=>target.hitTestChildren,
'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart@RenderStaggeredGrid@paint': (m.Scope scope, RenderStaggeredGrid target)=>target.paint,

};
}