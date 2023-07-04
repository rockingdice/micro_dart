import 'package:flutter_staggered_grid_view/src/widgets/staggered_grid_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart';
import 'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/widgets/staggered_grid_tile.dart@StaggeredGridTile@#as': (m.Scope scope, target)=>()=>target as StaggeredGridTile,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid_tile.dart@StaggeredGridTile@#is': (m.Scope scope, target)=>()=>target is StaggeredGridTile,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid_tile.dart@StaggeredGridTile@crossAxisCellCount': (m.Scope scope, StaggeredGridTile target)=>target.crossAxisCellCount,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid_tile.dart@StaggeredGridTile@mainAxisCellCount': (m.Scope scope, StaggeredGridTile target)=>target.mainAxisCellCount,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid_tile.dart@StaggeredGridTile@mainAxisExtent': (m.Scope scope, StaggeredGridTile target)=>target.mainAxisExtent,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid_tile.dart@StaggeredGridTile@debugTypicalAncestorWidgetClass': (m.Scope scope, StaggeredGridTile target)=>target.debugTypicalAncestorWidgetClass,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid_tile.dart@StaggeredGridTile@count': (m.Scope scope)=>StaggeredGridTile.count,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid_tile.dart@StaggeredGridTile@extent': (m.Scope scope)=>StaggeredGridTile.extent,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid_tile.dart@StaggeredGridTile@fit': (m.Scope scope)=>StaggeredGridTile.fit,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid_tile.dart@StaggeredGridTile@applyParentData': (m.Scope scope, StaggeredGridTile target)=>target.applyParentData,

};
}