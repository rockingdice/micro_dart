import 'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridGeometries@#as': (m.Scope scope, target)=>()=>target as SliverPatternGridGeometries,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridGeometries@#is': (m.Scope scope, target)=>()=>target is SliverPatternGridGeometries,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridGeometries@tiles': (m.Scope scope, SliverPatternGridGeometries target)=>target.tiles,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridGeometries@bounds': (m.Scope scope, SliverPatternGridGeometries target)=>target.bounds,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridGeometries@': (m.Scope scope)=>({ bounds,  tiles}){
return SliverPatternGridGeometries(bounds:bounds, tiles:tiles);
},
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridDelegate@#as': (m.Scope scope, target)=>()=>target as SliverPatternGridDelegate,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridDelegate@#is': (m.Scope scope, target)=>()=>target is SliverPatternGridDelegate,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridDelegate@mainAxisSpacing': (m.Scope scope, SliverPatternGridDelegate target)=>target.mainAxisSpacing,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridDelegate@crossAxisSpacing': (m.Scope scope, SliverPatternGridDelegate target)=>target.crossAxisSpacing,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridDelegate@pattern': (m.Scope scope, SliverPatternGridDelegate target)=>target.pattern,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridDelegate@tileCount': (m.Scope scope, SliverPatternGridDelegate target)=>target.tileCount,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridDelegate@crossAxisCount': (m.Scope scope, SliverPatternGridDelegate target)=>target.crossAxisCount,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridDelegate@maxCrossAxisExtent': (m.Scope scope, SliverPatternGridDelegate target)=>target.maxCrossAxisExtent,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridDelegate@getGeometries': (m.Scope scope, SliverPatternGridDelegate target)=>target.getGeometries,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridDelegate@getLayout': (m.Scope scope, SliverPatternGridDelegate target)=>target.getLayout,
'package:flutter_staggered_grid_view/src/layouts/sliver_patterned_grid_delegate.dart@SliverPatternGridDelegate@shouldRelayout': (m.Scope scope, SliverPatternGridDelegate target)=>target.shouldRelayout,

};
}