import 'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/src/foundation/extensions.dart';
import 'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@SliverMasonryGridParentData@#as': (m.Scope scope, target)=>()=>target as SliverMasonryGridParentData,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@SliverMasonryGridParentData@#is': (m.Scope scope, target)=>()=>target is SliverMasonryGridParentData,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@SliverMasonryGridParentData@crossAxisIndex': (m.Scope scope, SliverMasonryGridParentData target)=>target.crossAxisIndex,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@SliverMasonryGridParentData@crossAxisIndex:set': (m.Scope scope, SliverMasonryGridParentData target)=>(other)=>target.crossAxisIndex=other,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@SliverMasonryGridParentData@lastMainAxisExtent': (m.Scope scope, SliverMasonryGridParentData target)=>target.lastMainAxisExtent,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@SliverMasonryGridParentData@lastMainAxisExtent:set': (m.Scope scope, SliverMasonryGridParentData target)=>(other)=>target.lastMainAxisExtent=other,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@SliverMasonryGridParentData@': (m.Scope scope)=>(){
return SliverMasonryGridParentData();
},
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@SliverMasonryGridParentData@toString': (m.Scope scope, SliverMasonryGridParentData target)=>target.toString,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@#as': (m.Scope scope, target)=>()=>target as RenderSliverMasonryGrid,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@#is': (m.Scope scope, target)=>()=>target is RenderSliverMasonryGrid,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@gridDelegate': (m.Scope scope, RenderSliverMasonryGrid target)=>target.gridDelegate,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@gridDelegate:set': (m.Scope scope, RenderSliverMasonryGrid target)=>(other)=>target.gridDelegate=other,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@mainAxisSpacing': (m.Scope scope, RenderSliverMasonryGrid target)=>target.mainAxisSpacing,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@mainAxisSpacing:set': (m.Scope scope, RenderSliverMasonryGrid target)=>(other)=>target.mainAxisSpacing=other,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@crossAxisSpacing': (m.Scope scope, RenderSliverMasonryGrid target)=>target.crossAxisSpacing,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@crossAxisSpacing:set': (m.Scope scope, RenderSliverMasonryGrid target)=>(other)=>target.crossAxisSpacing=other,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@': (m.Scope scope)=>({ childManager,  crossAxisSpacing,  gridDelegate,  mainAxisSpacing}){
return RenderSliverMasonryGrid(childManager:childManager, crossAxisSpacing:crossAxisSpacing, gridDelegate:gridDelegate, mainAxisSpacing:mainAxisSpacing);
},
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@setupParentData': (m.Scope scope, RenderSliverMasonryGrid target)=>target.setupParentData,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@childCrossAxisPosition': (m.Scope scope, RenderSliverMasonryGrid target)=>target.childCrossAxisPosition,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@addInitialChild': (m.Scope scope, RenderSliverMasonryGrid target)=>target.addInitialChild,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@collectGarbage': (m.Scope scope, RenderSliverMasonryGrid target)=>target.collectGarbage,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@insertAndLayoutLeadingChild': (m.Scope scope, RenderSliverMasonryGrid target)=>target.insertAndLayoutLeadingChild,
'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart@RenderSliverMasonryGrid@performLayout': (m.Scope scope, RenderSliverMasonryGrid target)=>target.performLayout,

};
}