import 'package:flutter/src/rendering/sliver_grid.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/sliver_multi_box_adaptor.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/sliver_grid.dart@SliverGridGeometry@#as': (m.Scope scope, target)=>()=>target as SliverGridGeometry,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridGeometry@#is': (m.Scope scope, target)=>()=>target is SliverGridGeometry,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridGeometry@scrollOffset': (m.Scope scope, SliverGridGeometry target)=>target.scrollOffset,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridGeometry@crossAxisOffset': (m.Scope scope, SliverGridGeometry target)=>target.crossAxisOffset,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridGeometry@mainAxisExtent': (m.Scope scope, SliverGridGeometry target)=>target.mainAxisExtent,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridGeometry@crossAxisExtent': (m.Scope scope, SliverGridGeometry target)=>target.crossAxisExtent,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridGeometry@trailingScrollOffset': (m.Scope scope, SliverGridGeometry target)=>target.trailingScrollOffset,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridGeometry@': (m.Scope scope)=>({ crossAxisExtent,  crossAxisOffset,  mainAxisExtent,  scrollOffset}){
return SliverGridGeometry(crossAxisExtent:crossAxisExtent, crossAxisOffset:crossAxisOffset, mainAxisExtent:mainAxisExtent, scrollOffset:scrollOffset);
},
'package:flutter/src/rendering/sliver_grid.dart@SliverGridGeometry@getBoxConstraints': (m.Scope scope, SliverGridGeometry target)=>target.getBoxConstraints,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridGeometry@toString': (m.Scope scope, SliverGridGeometry target)=>target.toString,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridLayout@#as': (m.Scope scope, target)=>()=>target as SliverGridLayout,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridLayout@#is': (m.Scope scope, target)=>()=>target is SliverGridLayout,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridLayout@getMinChildIndexForScrollOffset': (m.Scope scope, SliverGridLayout target)=>target.getMinChildIndexForScrollOffset,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridLayout@getMaxChildIndexForScrollOffset': (m.Scope scope, SliverGridLayout target)=>target.getMaxChildIndexForScrollOffset,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridLayout@getGeometryForChildIndex': (m.Scope scope, SliverGridLayout target)=>target.getGeometryForChildIndex,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridLayout@computeMaxScrollOffset': (m.Scope scope, SliverGridLayout target)=>target.computeMaxScrollOffset,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@#as': (m.Scope scope, target)=>()=>target as SliverGridRegularTileLayout,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@#is': (m.Scope scope, target)=>()=>target is SliverGridRegularTileLayout,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@crossAxisCount': (m.Scope scope, SliverGridRegularTileLayout target)=>target.crossAxisCount,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@mainAxisStride': (m.Scope scope, SliverGridRegularTileLayout target)=>target.mainAxisStride,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@crossAxisStride': (m.Scope scope, SliverGridRegularTileLayout target)=>target.crossAxisStride,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@childMainAxisExtent': (m.Scope scope, SliverGridRegularTileLayout target)=>target.childMainAxisExtent,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@childCrossAxisExtent': (m.Scope scope, SliverGridRegularTileLayout target)=>target.childCrossAxisExtent,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@reverseCrossAxis': (m.Scope scope, SliverGridRegularTileLayout target)=>target.reverseCrossAxis,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@': (m.Scope scope)=>({ childCrossAxisExtent,  childMainAxisExtent,  crossAxisCount,  crossAxisStride,  mainAxisStride,  reverseCrossAxis}){
return SliverGridRegularTileLayout(childCrossAxisExtent:childCrossAxisExtent, childMainAxisExtent:childMainAxisExtent, crossAxisCount:crossAxisCount, crossAxisStride:crossAxisStride, mainAxisStride:mainAxisStride, reverseCrossAxis:reverseCrossAxis);
},
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@getMinChildIndexForScrollOffset': (m.Scope scope, SliverGridRegularTileLayout target)=>target.getMinChildIndexForScrollOffset,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@getMaxChildIndexForScrollOffset': (m.Scope scope, SliverGridRegularTileLayout target)=>target.getMaxChildIndexForScrollOffset,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@getGeometryForChildIndex': (m.Scope scope, SliverGridRegularTileLayout target)=>target.getGeometryForChildIndex,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridRegularTileLayout@computeMaxScrollOffset': (m.Scope scope, SliverGridRegularTileLayout target)=>target.computeMaxScrollOffset,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegate@#as': (m.Scope scope, target)=>()=>target as SliverGridDelegate,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegate@#is': (m.Scope scope, target)=>()=>target is SliverGridDelegate,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegate@getLayout': (m.Scope scope, SliverGridDelegate target)=>target.getLayout,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegate@shouldRelayout': (m.Scope scope, SliverGridDelegate target)=>target.shouldRelayout,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithFixedCrossAxisCount@#as': (m.Scope scope, target)=>()=>target as SliverGridDelegateWithFixedCrossAxisCount,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithFixedCrossAxisCount@#is': (m.Scope scope, target)=>()=>target is SliverGridDelegateWithFixedCrossAxisCount,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithFixedCrossAxisCount@crossAxisCount': (m.Scope scope, SliverGridDelegateWithFixedCrossAxisCount target)=>target.crossAxisCount,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithFixedCrossAxisCount@mainAxisSpacing': (m.Scope scope, SliverGridDelegateWithFixedCrossAxisCount target)=>target.mainAxisSpacing,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithFixedCrossAxisCount@crossAxisSpacing': (m.Scope scope, SliverGridDelegateWithFixedCrossAxisCount target)=>target.crossAxisSpacing,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithFixedCrossAxisCount@childAspectRatio': (m.Scope scope, SliverGridDelegateWithFixedCrossAxisCount target)=>target.childAspectRatio,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithFixedCrossAxisCount@mainAxisExtent': (m.Scope scope, SliverGridDelegateWithFixedCrossAxisCount target)=>target.mainAxisExtent,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithFixedCrossAxisCount@': (m.Scope scope)=>({ childAspectRatio,  crossAxisCount,  crossAxisSpacing,  mainAxisExtent,  mainAxisSpacing}){
return SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio:childAspectRatio ?? 1.0, crossAxisCount:crossAxisCount, crossAxisSpacing:crossAxisSpacing ?? 0.0, mainAxisExtent:mainAxisExtent, mainAxisSpacing:mainAxisSpacing ?? 0.0);
},
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithFixedCrossAxisCount@getLayout': (m.Scope scope, SliverGridDelegateWithFixedCrossAxisCount target)=>target.getLayout,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithFixedCrossAxisCount@shouldRelayout': (m.Scope scope, SliverGridDelegateWithFixedCrossAxisCount target)=>target.shouldRelayout,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithMaxCrossAxisExtent@#as': (m.Scope scope, target)=>()=>target as SliverGridDelegateWithMaxCrossAxisExtent,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithMaxCrossAxisExtent@#is': (m.Scope scope, target)=>()=>target is SliverGridDelegateWithMaxCrossAxisExtent,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithMaxCrossAxisExtent@maxCrossAxisExtent': (m.Scope scope, SliverGridDelegateWithMaxCrossAxisExtent target)=>target.maxCrossAxisExtent,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithMaxCrossAxisExtent@mainAxisSpacing': (m.Scope scope, SliverGridDelegateWithMaxCrossAxisExtent target)=>target.mainAxisSpacing,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithMaxCrossAxisExtent@crossAxisSpacing': (m.Scope scope, SliverGridDelegateWithMaxCrossAxisExtent target)=>target.crossAxisSpacing,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithMaxCrossAxisExtent@childAspectRatio': (m.Scope scope, SliverGridDelegateWithMaxCrossAxisExtent target)=>target.childAspectRatio,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithMaxCrossAxisExtent@mainAxisExtent': (m.Scope scope, SliverGridDelegateWithMaxCrossAxisExtent target)=>target.mainAxisExtent,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithMaxCrossAxisExtent@': (m.Scope scope)=>({ childAspectRatio,  crossAxisSpacing,  mainAxisExtent,  mainAxisSpacing,  maxCrossAxisExtent}){
return SliverGridDelegateWithMaxCrossAxisExtent(childAspectRatio:childAspectRatio ?? 1.0, crossAxisSpacing:crossAxisSpacing ?? 0.0, mainAxisExtent:mainAxisExtent, mainAxisSpacing:mainAxisSpacing ?? 0.0, maxCrossAxisExtent:maxCrossAxisExtent);
},
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithMaxCrossAxisExtent@getLayout': (m.Scope scope, SliverGridDelegateWithMaxCrossAxisExtent target)=>target.getLayout,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridDelegateWithMaxCrossAxisExtent@shouldRelayout': (m.Scope scope, SliverGridDelegateWithMaxCrossAxisExtent target)=>target.shouldRelayout,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridParentData@#as': (m.Scope scope, target)=>()=>target as SliverGridParentData,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridParentData@#is': (m.Scope scope, target)=>()=>target is SliverGridParentData,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridParentData@crossAxisOffset': (m.Scope scope, SliverGridParentData target)=>target.crossAxisOffset,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridParentData@crossAxisOffset:set': (m.Scope scope, SliverGridParentData target)=>(other)=>target.crossAxisOffset=other,
'package:flutter/src/rendering/sliver_grid.dart@SliverGridParentData@': (m.Scope scope)=>(){
return SliverGridParentData();
},
'package:flutter/src/rendering/sliver_grid.dart@SliverGridParentData@toString': (m.Scope scope, SliverGridParentData target)=>target.toString,
'package:flutter/src/rendering/sliver_grid.dart@RenderSliverGrid@#as': (m.Scope scope, target)=>()=>target as RenderSliverGrid,
'package:flutter/src/rendering/sliver_grid.dart@RenderSliverGrid@#is': (m.Scope scope, target)=>()=>target is RenderSliverGrid,
'package:flutter/src/rendering/sliver_grid.dart@RenderSliverGrid@gridDelegate': (m.Scope scope, RenderSliverGrid target)=>target.gridDelegate,
'package:flutter/src/rendering/sliver_grid.dart@RenderSliverGrid@gridDelegate:set': (m.Scope scope, RenderSliverGrid target)=>(other)=>target.gridDelegate=other,
'package:flutter/src/rendering/sliver_grid.dart@RenderSliverGrid@': (m.Scope scope)=>({ childManager,  gridDelegate}){
return RenderSliverGrid(childManager:childManager, gridDelegate:gridDelegate);
},
'package:flutter/src/rendering/sliver_grid.dart@RenderSliverGrid@setupParentData': (m.Scope scope, RenderSliverGrid target)=>target.setupParentData,
'package:flutter/src/rendering/sliver_grid.dart@RenderSliverGrid@childCrossAxisPosition': (m.Scope scope, RenderSliverGrid target)=>target.childCrossAxisPosition,
'package:flutter/src/rendering/sliver_grid.dart@RenderSliverGrid@performLayout': (m.Scope scope, RenderSliverGrid target)=>target.performLayout,

};
}