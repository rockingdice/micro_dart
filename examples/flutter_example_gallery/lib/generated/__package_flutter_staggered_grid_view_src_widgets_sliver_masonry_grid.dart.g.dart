import 'package:flutter_staggered_grid_view/src/widgets/sliver_masonry_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/src/rendering/sliver_masonry_grid.dart';
import 'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/widgets/sliver_masonry_grid.dart@SliverMasonryGrid@#as': (m.Scope scope, target)=>()=>target as SliverMasonryGrid,
'package:flutter_staggered_grid_view/src/widgets/sliver_masonry_grid.dart@SliverMasonryGrid@#is': (m.Scope scope, target)=>()=>target is SliverMasonryGrid,
'package:flutter_staggered_grid_view/src/widgets/sliver_masonry_grid.dart@SliverMasonryGrid@gridDelegate': (m.Scope scope, SliverMasonryGrid target)=>target.gridDelegate,
'package:flutter_staggered_grid_view/src/widgets/sliver_masonry_grid.dart@SliverMasonryGrid@mainAxisSpacing': (m.Scope scope, SliverMasonryGrid target)=>target.mainAxisSpacing,
'package:flutter_staggered_grid_view/src/widgets/sliver_masonry_grid.dart@SliverMasonryGrid@crossAxisSpacing': (m.Scope scope, SliverMasonryGrid target)=>target.crossAxisSpacing,
'package:flutter_staggered_grid_view/src/widgets/sliver_masonry_grid.dart@SliverMasonryGrid@': (m.Scope scope)=>({ crossAxisSpacing,  delegate,  gridDelegate,  key,  mainAxisSpacing}){
return SliverMasonryGrid(crossAxisSpacing:crossAxisSpacing ?? 0, delegate:delegate, gridDelegate:gridDelegate, key:key, mainAxisSpacing:mainAxisSpacing ?? 0);
},
'package:flutter_staggered_grid_view/src/widgets/sliver_masonry_grid.dart@SliverMasonryGrid@count': (m.Scope scope)=>({ childCount,  crossAxisCount,  crossAxisSpacing,  itemBuilder,  key,  mainAxisSpacing}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return SliverMasonryGrid.count(childCount:childCount, crossAxisCount:crossAxisCount, crossAxisSpacing:crossAxisSpacing ?? 0, itemBuilder:itemBuilderProxy, key:key, mainAxisSpacing:mainAxisSpacing ?? 0);
},
'package:flutter_staggered_grid_view/src/widgets/sliver_masonry_grid.dart@SliverMasonryGrid@extent': (m.Scope scope)=>({ childCount,  crossAxisSpacing,  itemBuilder,  key,  mainAxisSpacing,  maxCrossAxisExtent}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return SliverMasonryGrid.extent(childCount:childCount, crossAxisSpacing:crossAxisSpacing ?? 0, itemBuilder:itemBuilderProxy, key:key, mainAxisSpacing:mainAxisSpacing ?? 0, maxCrossAxisExtent:maxCrossAxisExtent);
},
'package:flutter_staggered_grid_view/src/widgets/sliver_masonry_grid.dart@SliverMasonryGrid@createRenderObject': (m.Scope scope, SliverMasonryGrid target)=>target.createRenderObject,
'package:flutter_staggered_grid_view/src/widgets/sliver_masonry_grid.dart@SliverMasonryGrid@updateRenderObject': (m.Scope scope, SliverMasonryGrid target)=>target.updateRenderObject,

};
}