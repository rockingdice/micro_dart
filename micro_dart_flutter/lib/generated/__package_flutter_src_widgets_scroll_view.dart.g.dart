import 'package:flutter/src/widgets/scroll_view.dart';
import 'dart:math';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/focus_manager.dart';
import 'package:flutter/src/widgets/focus_scope.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/notification_listener.dart';
import 'package:flutter/src/widgets/primary_scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_delegate.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:flutter/src/widgets/sliver_prototype_extent_list.dart';
import 'package:flutter/src/widgets/viewport.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_view.dart@ScrollView@#as': (m.Scope scope, target)=>()=>target as ScrollView,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@#is': (m.Scope scope, target)=>()=>target is ScrollView,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@scrollDirection': (m.Scope scope, ScrollView target)=>target.scrollDirection,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@reverse': (m.Scope scope, ScrollView target)=>target.reverse,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@controller': (m.Scope scope, ScrollView target)=>target.controller,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@primary': (m.Scope scope, ScrollView target)=>target.primary,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@physics': (m.Scope scope, ScrollView target)=>target.physics,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@scrollBehavior': (m.Scope scope, ScrollView target)=>target.scrollBehavior,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@shrinkWrap': (m.Scope scope, ScrollView target)=>target.shrinkWrap,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@center': (m.Scope scope, ScrollView target)=>target.center,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@anchor': (m.Scope scope, ScrollView target)=>target.anchor,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@cacheExtent': (m.Scope scope, ScrollView target)=>target.cacheExtent,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@semanticChildCount': (m.Scope scope, ScrollView target)=>target.semanticChildCount,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@dragStartBehavior': (m.Scope scope, ScrollView target)=>target.dragStartBehavior,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@keyboardDismissBehavior': (m.Scope scope, ScrollView target)=>target.keyboardDismissBehavior,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@restorationId': (m.Scope scope, ScrollView target)=>target.restorationId,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@clipBehavior': (m.Scope scope, ScrollView target)=>target.clipBehavior,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@getDirection': (m.Scope scope, ScrollView target)=>target.getDirection,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@buildSlivers': (m.Scope scope, ScrollView target)=>target.buildSlivers,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@buildViewport': (m.Scope scope, ScrollView target)=>target.buildViewport,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@build': (m.Scope scope, ScrollView target)=>target.build,
'package:flutter/src/widgets/scroll_view.dart@ScrollView@debugFillProperties': (m.Scope scope, ScrollView target)=>target.debugFillProperties,
'package:flutter/src/widgets/scroll_view.dart@CustomScrollView@#as': (m.Scope scope, target)=>()=>target as CustomScrollView,
'package:flutter/src/widgets/scroll_view.dart@CustomScrollView@#is': (m.Scope scope, target)=>()=>target is CustomScrollView,
'package:flutter/src/widgets/scroll_view.dart@CustomScrollView@slivers': (m.Scope scope, CustomScrollView target)=>target.slivers,
'package:flutter/src/widgets/scroll_view.dart@CustomScrollView@': (m.Scope scope)=>({ anchor,  cacheExtent,  center,  clipBehavior,  controller,  dragStartBehavior,  key,  keyboardDismissBehavior,  physics,  primary,  restorationId,  reverse,  scrollBehavior,  scrollDirection,  semanticChildCount,  shrinkWrap,  slivers}){
return CustomScrollView(anchor:anchor ?? 0.0, cacheExtent:cacheExtent, center:center, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, physics:physics, primary:primary, restorationId:restorationId, reverse:reverse ?? false, scrollBehavior:scrollBehavior, scrollDirection:scrollDirection ?? Axis.vertical, semanticChildCount:semanticChildCount, shrinkWrap:shrinkWrap ?? false, slivers:slivers ?? const <Widget>[]);
},
'package:flutter/src/widgets/scroll_view.dart@CustomScrollView@buildSlivers': (m.Scope scope, CustomScrollView target)=>target.buildSlivers,
'package:flutter/src/widgets/scroll_view.dart@BoxScrollView@#as': (m.Scope scope, target)=>()=>target as BoxScrollView,
'package:flutter/src/widgets/scroll_view.dart@BoxScrollView@#is': (m.Scope scope, target)=>()=>target is BoxScrollView,
'package:flutter/src/widgets/scroll_view.dart@BoxScrollView@padding': (m.Scope scope, BoxScrollView target)=>target.padding,
'package:flutter/src/widgets/scroll_view.dart@BoxScrollView@buildSlivers': (m.Scope scope, BoxScrollView target)=>target.buildSlivers,
'package:flutter/src/widgets/scroll_view.dart@BoxScrollView@buildChildLayout': (m.Scope scope, BoxScrollView target)=>target.buildChildLayout,
'package:flutter/src/widgets/scroll_view.dart@BoxScrollView@debugFillProperties': (m.Scope scope, BoxScrollView target)=>target.debugFillProperties,
'package:flutter/src/widgets/scroll_view.dart@ListView@#as': (m.Scope scope, target)=>()=>target as ListView,
'package:flutter/src/widgets/scroll_view.dart@ListView@#is': (m.Scope scope, target)=>()=>target is ListView,
'package:flutter/src/widgets/scroll_view.dart@ListView@itemExtent': (m.Scope scope, ListView target)=>target.itemExtent,
'package:flutter/src/widgets/scroll_view.dart@ListView@prototypeItem': (m.Scope scope, ListView target)=>target.prototypeItem,
'package:flutter/src/widgets/scroll_view.dart@ListView@childrenDelegate': (m.Scope scope, ListView target)=>target.childrenDelegate,
'package:flutter/src/widgets/scroll_view.dart@ListView@': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  cacheExtent,  children,  clipBehavior,  controller,  dragStartBehavior,  itemExtent,  key,  keyboardDismissBehavior,  padding,  physics,  primary,  prototypeItem,  restorationId,  reverse,  scrollDirection,  semanticChildCount,  shrinkWrap}){
return ListView(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, cacheExtent:cacheExtent, children:children ?? const <Widget>[], clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, itemExtent:itemExtent, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, padding:padding, physics:physics, primary:primary, prototypeItem:prototypeItem, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, semanticChildCount:semanticChildCount, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter/src/widgets/scroll_view.dart@ListView@builder': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  cacheExtent,  clipBehavior,  controller,  dragStartBehavior,  findChildIndexCallback,  itemBuilder,  itemCount,  itemExtent,  key,  keyboardDismissBehavior,  padding,  physics,  primary,  prototypeItem,  restorationId,  reverse,  scrollDirection,  semanticChildCount,  shrinkWrap}){
int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return ListView.builder(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, cacheExtent:cacheExtent, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, itemBuilder:itemBuilderProxy, itemCount:itemCount, itemExtent:itemExtent, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, padding:padding, physics:physics, primary:primary, prototypeItem:prototypeItem, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, semanticChildCount:semanticChildCount, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter/src/widgets/scroll_view.dart@ListView@separated': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  cacheExtent,  clipBehavior,  controller,  dragStartBehavior,  findChildIndexCallback,  itemBuilder,  itemCount,  key,  keyboardDismissBehavior,  padding,  physics,  primary,  restorationId,  reverse,  scrollDirection,  separatorBuilder,  shrinkWrap}){
int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

Widget separatorBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, separatorBuilder!,[context, index], {});
}

return ListView.separated(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, cacheExtent:cacheExtent, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, padding:padding, physics:physics, primary:primary, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, separatorBuilder:separatorBuilderProxy, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter/src/widgets/scroll_view.dart@ListView@custom': (m.Scope scope)=>ListView.custom,
'package:flutter/src/widgets/scroll_view.dart@ListView@buildChildLayout': (m.Scope scope, ListView target)=>target.buildChildLayout,
'package:flutter/src/widgets/scroll_view.dart@ListView@debugFillProperties': (m.Scope scope, ListView target)=>target.debugFillProperties,
'package:flutter/src/widgets/scroll_view.dart@GridView@#as': (m.Scope scope, target)=>()=>target as GridView,
'package:flutter/src/widgets/scroll_view.dart@GridView@#is': (m.Scope scope, target)=>()=>target is GridView,
'package:flutter/src/widgets/scroll_view.dart@GridView@gridDelegate': (m.Scope scope, GridView target)=>target.gridDelegate,
'package:flutter/src/widgets/scroll_view.dart@GridView@childrenDelegate': (m.Scope scope, GridView target)=>target.childrenDelegate,
'package:flutter/src/widgets/scroll_view.dart@GridView@': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  cacheExtent,  children,  clipBehavior,  controller,  dragStartBehavior,  gridDelegate,  key,  keyboardDismissBehavior,  padding,  physics,  primary,  restorationId,  reverse,  scrollDirection,  semanticChildCount,  shrinkWrap}){
return GridView(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, cacheExtent:cacheExtent, children:children ?? const <Widget>[], clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, gridDelegate:gridDelegate, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, padding:padding, physics:physics, primary:primary, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, semanticChildCount:semanticChildCount, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter/src/widgets/scroll_view.dart@GridView@builder': (m.Scope scope)=>({ addAutomaticKeepAlives,  addRepaintBoundaries,  addSemanticIndexes,  cacheExtent,  clipBehavior,  controller,  dragStartBehavior,  findChildIndexCallback,  gridDelegate,  itemBuilder,  itemCount,  key,  keyboardDismissBehavior,  padding,  physics,  primary,  restorationId,  reverse,  scrollDirection,  semanticChildCount,  shrinkWrap}){
int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

Widget itemBuilderProxy( context,  index) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index], {});
}

return GridView.builder(addAutomaticKeepAlives:addAutomaticKeepAlives ?? true, addRepaintBoundaries:addRepaintBoundaries ?? true, addSemanticIndexes:addSemanticIndexes ?? true, cacheExtent:cacheExtent, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, gridDelegate:gridDelegate, itemBuilder:itemBuilderProxy, itemCount:itemCount, key:key, keyboardDismissBehavior:keyboardDismissBehavior ?? ScrollViewKeyboardDismissBehavior.manual, padding:padding, physics:physics, primary:primary, restorationId:restorationId, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, semanticChildCount:semanticChildCount, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter/src/widgets/scroll_view.dart@GridView@custom': (m.Scope scope)=>GridView.custom,
'package:flutter/src/widgets/scroll_view.dart@GridView@count': (m.Scope scope)=>GridView.count,
'package:flutter/src/widgets/scroll_view.dart@GridView@extent': (m.Scope scope)=>GridView.extent,
'package:flutter/src/widgets/scroll_view.dart@GridView@buildChildLayout': (m.Scope scope, GridView target)=>target.buildChildLayout,

};
}