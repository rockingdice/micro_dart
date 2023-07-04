import 'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/src/rendering/staggered_grid.dart';
import 'package:flutter_staggered_grid_view/src/widgets/staggered_grid_tile.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart@StaggeredGrid@#as': (m.Scope scope, target)=>()=>target as StaggeredGrid,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart@StaggeredGrid@#is': (m.Scope scope, target)=>()=>target is StaggeredGrid,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart@StaggeredGrid@delegate': (m.Scope scope, StaggeredGrid target)=>target.delegate,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart@StaggeredGrid@mainAxisSpacing': (m.Scope scope, StaggeredGrid target)=>target.mainAxisSpacing,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart@StaggeredGrid@crossAxisSpacing': (m.Scope scope, StaggeredGrid target)=>target.crossAxisSpacing,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart@StaggeredGrid@axisDirection': (m.Scope scope, StaggeredGrid target)=>target.axisDirection,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart@StaggeredGrid@custom': (m.Scope scope)=>StaggeredGrid.custom,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart@StaggeredGrid@count': (m.Scope scope)=>StaggeredGrid.count,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart@StaggeredGrid@extent': (m.Scope scope)=>StaggeredGrid.extent,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart@StaggeredGrid@createRenderObject': (m.Scope scope, StaggeredGrid target)=>target.createRenderObject,
'package:flutter_staggered_grid_view/src/widgets/staggered_grid.dart@StaggeredGrid@updateRenderObject': (m.Scope scope, StaggeredGrid target)=>target.updateRenderObject,

};
}