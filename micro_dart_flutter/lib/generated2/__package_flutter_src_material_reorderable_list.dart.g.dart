import 'package:flutter/src/material/reorderable_list.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@#as': (m.Scope scope, target)=>()=>target as ReorderableListView,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@#is': (m.Scope scope, target)=>()=>target is ReorderableListView,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@itemBuilder': (m.Scope scope, ReorderableListView target)=>target.itemBuilder,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@itemCount': (m.Scope scope, ReorderableListView target)=>target.itemCount,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@onReorder': (m.Scope scope, ReorderableListView target)=>target.onReorder,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@onReorderStart': (m.Scope scope, ReorderableListView target)=>target.onReorderStart,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@onReorderEnd': (m.Scope scope, ReorderableListView target)=>target.onReorderEnd,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@proxyDecorator': (m.Scope scope, ReorderableListView target)=>target.proxyDecorator,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@buildDefaultDragHandles': (m.Scope scope, ReorderableListView target)=>target.buildDefaultDragHandles,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@padding': (m.Scope scope, ReorderableListView target)=>target.padding,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@header': (m.Scope scope, ReorderableListView target)=>target.header,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@footer': (m.Scope scope, ReorderableListView target)=>target.footer,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@scrollDirection': (m.Scope scope, ReorderableListView target)=>target.scrollDirection,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@reverse': (m.Scope scope, ReorderableListView target)=>target.reverse,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@scrollController': (m.Scope scope, ReorderableListView target)=>target.scrollController,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@primary': (m.Scope scope, ReorderableListView target)=>target.primary,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@physics': (m.Scope scope, ReorderableListView target)=>target.physics,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@shrinkWrap': (m.Scope scope, ReorderableListView target)=>target.shrinkWrap,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@anchor': (m.Scope scope, ReorderableListView target)=>target.anchor,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@cacheExtent': (m.Scope scope, ReorderableListView target)=>target.cacheExtent,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@dragStartBehavior': (m.Scope scope, ReorderableListView target)=>target.dragStartBehavior,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@keyboardDismissBehavior': (m.Scope scope, ReorderableListView target)=>target.keyboardDismissBehavior,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@restorationId': (m.Scope scope, ReorderableListView target)=>target.restorationId,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@clipBehavior': (m.Scope scope, ReorderableListView target)=>target.clipBehavior,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@itemExtent': (m.Scope scope, ReorderableListView target)=>target.itemExtent,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@prototypeItem': (m.Scope scope, ReorderableListView target)=>target.prototypeItem,
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@': (m.Scope scope)=>({ anchor,  buildDefaultDragHandles,  cacheExtent,  children,  clipBehavior,  dragStartBehavior,  footer,  header,  itemExtent,  key,  keyboardDismissBehavior,  onReorder,  onReorderEnd,  onReorderStart,  padding,  physics,  primary,  prototypeItem,  proxyDecorator,  restorationId,  reverse,  scrollController,  scrollDirection,  shrinkWrap}){
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

return ReorderableListView(anchor:anchor ?? 0.0, buildDefaultDragHandles:buildDefaultDragHandles ?? true, cacheExtent:cacheExtent, children:children, clipBehavior:clipBehavior ?? Clip.hardEdge, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, footer:footer, header:header, itemExtent:itemExtent, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, onReorder:onReorderProxy, onReorderEnd:onReorderEnd == null ? null :onReorderEndProxy, onReorderStart:onReorderStart == null ? null :onReorderStartProxy, padding:padding, physics:physics, primary:primary, prototypeItem:prototypeItem, proxyDecorator:proxyDecorator == null ? null :proxyDecoratorProxy, restorationId:restorationId, reverse:reverse ?? false, scrollController:scrollController, scrollDirection:scrollDirection ?? Axis.vertical, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@builder': (m.Scope scope)=>({ anchor,  buildDefaultDragHandles,  cacheExtent,  clipBehavior,  dragStartBehavior,  footer,  header,  itemBuilder,  itemCount,  itemExtent,  key,  keyboardDismissBehavior,  onReorder,  onReorderEnd,  onReorderStart,  padding,  physics,  primary,  prototypeItem,  proxyDecorator,  restorationId,  reverse,  scrollController,  scrollDirection,  shrinkWrap}){
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

return ReorderableListView.builder(anchor:anchor ?? 0.0, buildDefaultDragHandles:buildDefaultDragHandles ?? true, cacheExtent:cacheExtent, clipBehavior:clipBehavior ?? Clip.hardEdge, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, footer:footer, header:header, itemBuilder:itemBuilderProxy, itemCount:itemCount, itemExtent:itemExtent, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, onReorder:onReorderProxy, onReorderEnd:onReorderEnd == null ? null :onReorderEndProxy, onReorderStart:onReorderStart == null ? null :onReorderStartProxy, padding:padding, physics:physics, primary:primary, prototypeItem:prototypeItem, proxyDecorator:proxyDecorator == null ? null :proxyDecoratorProxy, restorationId:restorationId, reverse:reverse ?? false, scrollController:scrollController, scrollDirection:scrollDirection ?? Axis.vertical, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter/src/material/reorderable_list.dart@ReorderableListView@createState': (m.Scope scope, ReorderableListView target)=>target.createState,

};
}