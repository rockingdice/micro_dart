import 'package:flutter/src/widgets/reorderable_list.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/inherited_theme.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_delegate.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/scrollable_helpers.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:flutter/src/widgets/sliver_prototype_extent_list.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@#as': (m.Scope scope, target)=>()=>target as ReorderableList,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@#is': (m.Scope scope, target)=>()=>target is ReorderableList,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@itemBuilder': (m.Scope scope, ReorderableList target)=>target.itemBuilder,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@itemCount': (m.Scope scope, ReorderableList target)=>target.itemCount,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@onReorder': (m.Scope scope, ReorderableList target)=>target.onReorder,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@onReorderStart': (m.Scope scope, ReorderableList target)=>target.onReorderStart,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@onReorderEnd': (m.Scope scope, ReorderableList target)=>target.onReorderEnd,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@proxyDecorator': (m.Scope scope, ReorderableList target)=>target.proxyDecorator,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@padding': (m.Scope scope, ReorderableList target)=>target.padding,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@scrollDirection': (m.Scope scope, ReorderableList target)=>target.scrollDirection,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@reverse': (m.Scope scope, ReorderableList target)=>target.reverse,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@controller': (m.Scope scope, ReorderableList target)=>target.controller,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@primary': (m.Scope scope, ReorderableList target)=>target.primary,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@physics': (m.Scope scope, ReorderableList target)=>target.physics,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@shrinkWrap': (m.Scope scope, ReorderableList target)=>target.shrinkWrap,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@anchor': (m.Scope scope, ReorderableList target)=>target.anchor,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@cacheExtent': (m.Scope scope, ReorderableList target)=>target.cacheExtent,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@dragStartBehavior': (m.Scope scope, ReorderableList target)=>target.dragStartBehavior,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@keyboardDismissBehavior': (m.Scope scope, ReorderableList target)=>target.keyboardDismissBehavior,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@restorationId': (m.Scope scope, ReorderableList target)=>target.restorationId,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@clipBehavior': (m.Scope scope, ReorderableList target)=>target.clipBehavior,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@itemExtent': (m.Scope scope, ReorderableList target)=>target.itemExtent,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@prototypeItem': (m.Scope scope, ReorderableList target)=>target.prototypeItem,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@': (m.Scope scope)=>({ anchor,  cacheExtent,  clipBehavior,  controller,  dragStartBehavior,  itemBuilder,  itemCount,  itemExtent,  key,  keyboardDismissBehavior,  onReorder,  onReorderEnd,  onReorderStart,  padding,  physics,  primary,  prototypeItem,  proxyDecorator,  restorationId,  reverse,  scrollDirection,  shrinkWrap}){
Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

void onReorderProxy( oldIndex,  newIndex) {
 engine.callFunctionPointer(scope, onReorder!,[oldIndex, newIndex], {});
}

void onReorderEndProxy( index) {
 engine.callFunctionPointer(scope, onReorderEnd!,[index], {});
}

void onReorderStartProxy( index) {
 engine.callFunctionPointer(scope, onReorderStart!,[index], {});
}

Widget proxyDecoratorProxy( child,  index,  animation) {
return  engine.callFunctionPointer(scope, proxyDecorator!,[child, index, animation], {});
}

return ReorderableList(anchor:anchor ?? 0.0, cacheExtent:cacheExtent, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, itemBuilder:itemBuilderProxy, itemCount:itemCount, itemExtent:itemExtent, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, onReorder:onReorderProxy, onReorderEnd:onReorderEnd == null ? null :onReorderEndProxy, onReorderStart:onReorderStart == null ? null :onReorderStartProxy, padding:padding, physics:physics, primary:primary, prototypeItem:prototypeItem, proxyDecorator:proxyDecorator == null ? null :proxyDecoratorProxy, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@of': (m.Scope scope)=>ReorderableList.of,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@maybeOf': (m.Scope scope)=>ReorderableList.maybeOf,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableList@createState': (m.Scope scope, ReorderableList target)=>target.createState,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableListState@#as': (m.Scope scope, target)=>()=>target as ReorderableListState,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableListState@#is': (m.Scope scope, target)=>()=>target is ReorderableListState,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableListState@': (m.Scope scope)=>(){
return ReorderableListState();
},
'package:flutter/src/widgets/reorderable_list.dart@ReorderableListState@startItemDragReorder': (m.Scope scope, ReorderableListState target)=>target.startItemDragReorder,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableListState@cancelReorder': (m.Scope scope, ReorderableListState target)=>target.cancelReorder,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableListState@build': (m.Scope scope, ReorderableListState target)=>target.build,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@#as': (m.Scope scope, target)=>()=>target as SliverReorderableList,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@#is': (m.Scope scope, target)=>()=>target is SliverReorderableList,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@itemBuilder': (m.Scope scope, SliverReorderableList target)=>target.itemBuilder,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@findChildIndexCallback': (m.Scope scope, SliverReorderableList target)=>target.findChildIndexCallback,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@itemCount': (m.Scope scope, SliverReorderableList target)=>target.itemCount,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@onReorder': (m.Scope scope, SliverReorderableList target)=>target.onReorder,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@onReorderStart': (m.Scope scope, SliverReorderableList target)=>target.onReorderStart,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@onReorderEnd': (m.Scope scope, SliverReorderableList target)=>target.onReorderEnd,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@proxyDecorator': (m.Scope scope, SliverReorderableList target)=>target.proxyDecorator,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@itemExtent': (m.Scope scope, SliverReorderableList target)=>target.itemExtent,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@prototypeItem': (m.Scope scope, SliverReorderableList target)=>target.prototypeItem,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@': (m.Scope scope)=>({ findChildIndexCallback,  itemBuilder,  itemCount,  itemExtent,  key,  onReorder,  onReorderEnd,  onReorderStart,  prototypeItem,  proxyDecorator}){
int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

void onReorderProxy( oldIndex,  newIndex) {
 engine.callFunctionPointer(scope, onReorder!,[oldIndex, newIndex], {});
}

void onReorderEndProxy( $p0) {
 engine.callFunctionPointer(scope, onReorderEnd!,[$p0], {});
}

void onReorderStartProxy( $p0) {
 engine.callFunctionPointer(scope, onReorderStart!,[$p0], {});
}

Widget proxyDecoratorProxy( child,  index,  animation) {
return  engine.callFunctionPointer(scope, proxyDecorator!,[child, index, animation], {});
}

return SliverReorderableList(findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, itemBuilder:itemBuilderProxy, itemCount:itemCount, itemExtent:itemExtent, key:key, onReorder:onReorderProxy, onReorderEnd:onReorderEnd == null ? null :onReorderEndProxy, onReorderStart:onReorderStart == null ? null :onReorderStartProxy, prototypeItem:prototypeItem, proxyDecorator:proxyDecorator == null ? null :proxyDecoratorProxy);
},
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@createState': (m.Scope scope, SliverReorderableList target)=>target.createState,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@of': (m.Scope scope)=>SliverReorderableList.of,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableList@maybeOf': (m.Scope scope)=>SliverReorderableList.maybeOf,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableListState@#as': (m.Scope scope, target)=>()=>target as SliverReorderableListState,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableListState@#is': (m.Scope scope, target)=>()=>target is SliverReorderableListState,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableListState@': (m.Scope scope)=>(){
return SliverReorderableListState();
},
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableListState@didChangeDependencies': (m.Scope scope, SliverReorderableListState target)=>target.didChangeDependencies,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableListState@didUpdateWidget': (m.Scope scope, SliverReorderableListState target)=>target.didUpdateWidget,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableListState@dispose': (m.Scope scope, SliverReorderableListState target)=>target.dispose,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableListState@startItemDragReorder': (m.Scope scope, SliverReorderableListState target)=>target.startItemDragReorder,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableListState@cancelReorder': (m.Scope scope, SliverReorderableListState target)=>target.cancelReorder,
'package:flutter/src/widgets/reorderable_list.dart@SliverReorderableListState@build': (m.Scope scope, SliverReorderableListState target)=>target.build,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableDragStartListener@#as': (m.Scope scope, target)=>()=>target as ReorderableDragStartListener,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableDragStartListener@#is': (m.Scope scope, target)=>()=>target is ReorderableDragStartListener,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableDragStartListener@child': (m.Scope scope, ReorderableDragStartListener target)=>target.child,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableDragStartListener@index': (m.Scope scope, ReorderableDragStartListener target)=>target.index,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableDragStartListener@enabled': (m.Scope scope, ReorderableDragStartListener target)=>target.enabled,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableDragStartListener@': (m.Scope scope)=>ReorderableDragStartListener,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableDragStartListener@build': (m.Scope scope, ReorderableDragStartListener target)=>target.build,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableDragStartListener@createRecognizer': (m.Scope scope, ReorderableDragStartListener target)=>target.createRecognizer,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableDelayedDragStartListener@#as': (m.Scope scope, target)=>()=>target as ReorderableDelayedDragStartListener,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableDelayedDragStartListener@#is': (m.Scope scope, target)=>()=>target is ReorderableDelayedDragStartListener,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableDelayedDragStartListener@': (m.Scope scope)=>ReorderableDelayedDragStartListener,
'package:flutter/src/widgets/reorderable_list.dart@ReorderableDelayedDragStartListener@createRecognizer': (m.Scope scope, ReorderableDelayedDragStartListener target)=>target.createRecognizer,

};
}