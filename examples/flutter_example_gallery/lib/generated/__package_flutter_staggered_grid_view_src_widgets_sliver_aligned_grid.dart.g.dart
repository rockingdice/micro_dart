import 'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart';
import 'package:flutter_staggered_grid_view/src/widgets/uniform_track.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@#as': (m.Scope scope, target)=>()=>target as SliverAlignedGrid,
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@#is': (m.Scope scope, target)=>()=>target is SliverAlignedGrid,
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@mainAxisSpacing': (m.Scope scope, SliverAlignedGrid target)=>target.mainAxisSpacing,
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@crossAxisSpacing': (m.Scope scope, SliverAlignedGrid target)=>target.crossAxisSpacing,
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@gridDelegate': (m.Scope scope, SliverAlignedGrid target)=>target.gridDelegate,
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@itemBuilder': (m.Scope scope, SliverAlignedGrid target)=>target.itemBuilder,
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@itemCount': (m.Scope scope, SliverAlignedGrid target)=>target.itemCount,
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@addAutomaticKeepAlives': (m.Scope scope, SliverAlignedGrid target)=>target.addAutomaticKeepAlives,
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@addRepaintBoundaries': (m.Scope scope, SliverAlignedGrid target)=>target.addRepaintBoundaries,
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  crossAxisSpacing,  gridDelegate,  itemBuilder,  itemCount,  key,  mainAxisSpacing}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return SliverAlignedGrid(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, crossAxisSpacing:crossAxisSpacing ?? 0, gridDelegate:gridDelegate, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, mainAxisSpacing:mainAxisSpacing ?? 0);
},
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@count': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  crossAxisCount,  crossAxisSpacing,  itemBuilder,  itemCount,  key,  mainAxisSpacing}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return SliverAlignedGrid.count(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, crossAxisCount:crossAxisCount, crossAxisSpacing:crossAxisSpacing ?? 0, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, mainAxisSpacing:mainAxisSpacing ?? 0);
},
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@extent': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  crossAxisSpacing,  itemBuilder,  itemCount,  key,  mainAxisSpacing,  maxCrossAxisExtent}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return SliverAlignedGrid.extent(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, crossAxisSpacing:crossAxisSpacing ?? 0, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, mainAxisSpacing:mainAxisSpacing ?? 0, maxCrossAxisExtent:maxCrossAxisExtent);
},
'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart@SliverAlignedGrid@build': (m.Scope scope, SliverAlignedGrid target)=>target.build,

};
}