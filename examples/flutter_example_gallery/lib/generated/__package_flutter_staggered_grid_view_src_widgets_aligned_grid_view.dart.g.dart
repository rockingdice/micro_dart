import 'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/src/rendering/sliver_simple_grid_delegate.dart';
import 'package:flutter_staggered_grid_view/src/widgets/sliver_aligned_grid.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@#as': (m.Scope scope, target)=>()=>target as AlignedGridView,
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@#is': (m.Scope scope, target)=>()=>target is AlignedGridView,
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@gridDelegate': (m.Scope scope, AlignedGridView target)=>target.gridDelegate,
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@mainAxisSpacing': (m.Scope scope, AlignedGridView target)=>target.mainAxisSpacing,
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@crossAxisSpacing': (m.Scope scope, AlignedGridView target)=>target.crossAxisSpacing,
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@itemBuilder': (m.Scope scope, AlignedGridView target)=>target.itemBuilder,
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@itemCount': (m.Scope scope, AlignedGridView target)=>target.itemCount,
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@addAutomaticKeepAlives': (m.Scope scope, AlignedGridView target)=>target.addAutomaticKeepAlives,
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@addRepaintBoundaries': (m.Scope scope, AlignedGridView target)=>target.addRepaintBoundaries,
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@custom': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  cacheExtent,  clipBehavior,  controller,  crossAxisSpacing,  dragStartBehavior,  gridDelegate,  itemBuilder,  itemCount,  key,  keyboardDismissBehavior,  mainAxisSpacing,  padding,  physics,  primary,  restorationId,  reverse,  scrollDirection,  semanticChildCount,  shrinkWrap}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return AlignedGridView.custom(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, cacheExtent:cacheExtent, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, crossAxisSpacing:crossAxisSpacing ?? 0.0, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, gridDelegate:gridDelegate, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, mainAxisSpacing:mainAxisSpacing ?? 0.0, padding:padding, physics:physics, primary:primary, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, semanticChildCount:semanticChildCount, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@count': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  cacheExtent,  clipBehavior,  controller,  crossAxisCount,  crossAxisSpacing,  dragStartBehavior,  itemBuilder,  itemCount,  key,  keyboardDismissBehavior,  mainAxisSpacing,  padding,  physics,  primary,  restorationId,  reverse,  scrollDirection,  semanticChildCount,  shrinkWrap}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return AlignedGridView.count(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, cacheExtent:cacheExtent, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, crossAxisCount:crossAxisCount, crossAxisSpacing:crossAxisSpacing ?? 0.0, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, mainAxisSpacing:mainAxisSpacing ?? 0.0, padding:padding, physics:physics, primary:primary, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, semanticChildCount:semanticChildCount, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@extent': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  cacheExtent,  clipBehavior,  controller,  crossAxisSpacing,  dragStartBehavior,  itemBuilder,  itemCount,  key,  keyboardDismissBehavior,  mainAxisSpacing,  maxCrossAxisExtent,  padding,  physics,  primary,  restorationId,  reverse,  scrollDirection,  semanticChildCount,  shrinkWrap}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return AlignedGridView.extent(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, cacheExtent:cacheExtent, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, crossAxisSpacing:crossAxisSpacing ?? 0.0, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, mainAxisSpacing:mainAxisSpacing ?? 0.0, maxCrossAxisExtent:maxCrossAxisExtent, padding:padding, physics:physics, primary:primary, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, semanticChildCount:semanticChildCount, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter_staggered_grid_view/src/widgets/aligned_grid_view.dart@AlignedGridView@buildChildLayout': (m.Scope scope, AlignedGridView target)=>target.buildChildLayout,

};
}