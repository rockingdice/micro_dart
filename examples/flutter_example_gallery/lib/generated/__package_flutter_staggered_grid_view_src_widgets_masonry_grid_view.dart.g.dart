import 'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart';
import 'package:flutter_staggered_grid_view/src/widgets/sliver_masonry_grid.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart@MasonryGridView@#as': (m.Scope scope, target)=>()=>target as MasonryGridView,
'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart@MasonryGridView@#is': (m.Scope scope, target)=>()=>target is MasonryGridView,
'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart@MasonryGridView@gridDelegate': (m.Scope scope, MasonryGridView target)=>target.gridDelegate,
'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart@MasonryGridView@mainAxisSpacing': (m.Scope scope, MasonryGridView target)=>target.mainAxisSpacing,
'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart@MasonryGridView@crossAxisSpacing': (m.Scope scope, MasonryGridView target)=>target.crossAxisSpacing,
'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart@MasonryGridView@childrenDelegate': (m.Scope scope, MasonryGridView target)=>target.childrenDelegate,
'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart@MasonryGridView@': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  cacheExtent,  children,  clipBehavior,  controller,  crossAxisSpacing,  dragStartBehavior,  gridDelegate,  key,  keyboardDismissBehavior,  mainAxisSpacing,  padding,  physics,  primary,  restorationId,  reverse,  scrollDirection,  semanticChildCount,  shrinkWrap}){
return MasonryGridView(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, cacheExtent:cacheExtent, children:children ?? const <Widget>[], clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, crossAxisSpacing:crossAxisSpacing ?? 0.0, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, gridDelegate:gridDelegate, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, mainAxisSpacing:mainAxisSpacing ?? 0.0, padding:padding, physics:physics, primary:primary, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, semanticChildCount:semanticChildCount, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart@MasonryGridView@builder': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  cacheExtent,  clipBehavior,  controller,  crossAxisSpacing,  dragStartBehavior,  gridDelegate,  itemBuilder,  itemCount,  key,  keyboardDismissBehavior,  mainAxisSpacing,  padding,  physics,  primary,  restorationId,  reverse,  scrollDirection,  semanticChildCount,  shrinkWrap}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return MasonryGridView.builder(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, cacheExtent:cacheExtent, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, crossAxisSpacing:crossAxisSpacing ?? 0.0, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, gridDelegate:gridDelegate, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, mainAxisSpacing:mainAxisSpacing ?? 0.0, padding:padding, physics:physics, primary:primary, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, semanticChildCount:semanticChildCount, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart@MasonryGridView@custom': (m.Scope scope)=>MasonryGridView.custom,
'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart@MasonryGridView@count': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  cacheExtent,  clipBehavior,  controller,  crossAxisCount,  crossAxisSpacing,  dragStartBehavior,  itemBuilder,  itemCount,  key,  keyboardDismissBehavior,  mainAxisSpacing,  padding,  physics,  primary,  restorationId,  reverse,  scrollDirection,  semanticChildCount,  shrinkWrap}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return MasonryGridView.count(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, cacheExtent:cacheExtent, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, crossAxisCount:crossAxisCount, crossAxisSpacing:crossAxisSpacing ?? 0.0, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, mainAxisSpacing:mainAxisSpacing ?? 0.0, padding:padding, physics:physics, primary:primary, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, semanticChildCount:semanticChildCount, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart@MasonryGridView@extent': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  cacheExtent,  clipBehavior,  controller,  crossAxisSpacing,  dragStartBehavior,  itemBuilder,  itemCount,  key,  keyboardDismissBehavior,  mainAxisSpacing,  maxCrossAxisExtent,  padding,  physics,  primary,  restorationId,  reverse,  scrollDirection,  semanticChildCount,  shrinkWrap}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return MasonryGridView.extent(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, cacheExtent:cacheExtent, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, crossAxisSpacing:crossAxisSpacing ?? 0.0, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, mainAxisSpacing:mainAxisSpacing ?? 0.0, maxCrossAxisExtent:maxCrossAxisExtent, padding:padding, physics:physics, primary:primary, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, semanticChildCount:semanticChildCount, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter_staggered_grid_view/src/widgets/masonry_grid_view.dart@MasonryGridView@buildChildLayout': (m.Scope scope, MasonryGridView target)=>target.buildChildLayout,

};
}