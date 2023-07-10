import 'package:flutter/src/widgets/animated_scroll_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_delegate.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:flutter/src/widgets/sliver.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedList@#as': (m.Scope scope, target)=>()=>target as AnimatedList,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedList@#is': (m.Scope scope, target)=>()=>target is AnimatedList,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedList@': (m.Scope scope)=>({ clipBehavior,  controller,  initialItemCount,  itemBuilder,  key,  padding,  physics,  primary,  reverse,  scrollDirection,  shrinkWrap}){
Widget itemBuilderProxy( context,  index,  animation) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index, animation], {});
}

return AnimatedList(clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, initialItemCount:initialItemCount ?? 0, itemBuilder:itemBuilderProxy, key:key, padding:padding, physics:physics, primary:primary, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical, shrinkWrap:shrinkWrap ?? false);
},
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedList@of': (m.Scope scope)=>AnimatedList.of,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedList@maybeOf': (m.Scope scope)=>AnimatedList.maybeOf,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedList@createState': (m.Scope scope, AnimatedList target)=>target.createState,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedListState@#as': (m.Scope scope, target)=>()=>target as AnimatedListState,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedListState@#is': (m.Scope scope, target)=>()=>target is AnimatedListState,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedListState@': (m.Scope scope)=>(){
return AnimatedListState();
},
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedListState@build': (m.Scope scope, AnimatedListState target)=>target.build,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedGrid@#as': (m.Scope scope, target)=>()=>target as AnimatedGrid,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedGrid@#is': (m.Scope scope, target)=>()=>target is AnimatedGrid,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedGrid@gridDelegate': (m.Scope scope, AnimatedGrid target)=>target.gridDelegate,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedGrid@': (m.Scope scope)=>({ clipBehavior,  controller,  gridDelegate,  initialItemCount,  itemBuilder,  key,  padding,  physics,  primary,  reverse,  scrollDirection}){
Widget itemBuilderProxy( context,  index,  animation) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index, animation], {});
}

return AnimatedGrid(clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, gridDelegate:gridDelegate, initialItemCount:initialItemCount ?? 0, itemBuilder:itemBuilderProxy, key:key, padding:padding, physics:physics, primary:primary, reverse:reverse ?? false, scrollDirection:scrollDirection ?? Axis.vertical);
},
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedGrid@of': (m.Scope scope)=>AnimatedGrid.of,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedGrid@maybeOf': (m.Scope scope)=>AnimatedGrid.maybeOf,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedGrid@createState': (m.Scope scope, AnimatedGrid target)=>target.createState,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedGridState@#as': (m.Scope scope, target)=>()=>target as AnimatedGridState,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedGridState@#is': (m.Scope scope, target)=>()=>target is AnimatedGridState,
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedGridState@': (m.Scope scope)=>(){
return AnimatedGridState();
},
'package:flutter/src/widgets/animated_scroll_view.dart@AnimatedGridState@build': (m.Scope scope, AnimatedGridState target)=>target.build,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedList@#as': (m.Scope scope, target)=>()=>target as SliverAnimatedList,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedList@#is': (m.Scope scope, target)=>()=>target is SliverAnimatedList,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedList@': (m.Scope scope)=>({ findChildIndexCallback,  initialItemCount,  itemBuilder,  key}){
int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

Widget itemBuilderProxy( context,  index,  animation) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index, animation], {});
}

return SliverAnimatedList(findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, initialItemCount:initialItemCount ?? 0, itemBuilder:itemBuilderProxy, key:key);
},
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedList@createState': (m.Scope scope, SliverAnimatedList target)=>target.createState,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedList@of': (m.Scope scope)=>SliverAnimatedList.of,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedList@maybeOf': (m.Scope scope)=>SliverAnimatedList.maybeOf,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedListState@#as': (m.Scope scope, target)=>()=>target as SliverAnimatedListState,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedListState@#is': (m.Scope scope, target)=>()=>target is SliverAnimatedListState,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedListState@': (m.Scope scope)=>(){
return SliverAnimatedListState();
},
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedListState@build': (m.Scope scope, SliverAnimatedListState target)=>target.build,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedGrid@#as': (m.Scope scope, target)=>()=>target as SliverAnimatedGrid,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedGrid@#is': (m.Scope scope, target)=>()=>target is SliverAnimatedGrid,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedGrid@gridDelegate': (m.Scope scope, SliverAnimatedGrid target)=>target.gridDelegate,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedGrid@': (m.Scope scope)=>({ findChildIndexCallback,  gridDelegate,  initialItemCount,  itemBuilder,  key}){
int findChildIndexCallbackProxy( key) {
return  engine.callFunctionPointer(scope, findChildIndexCallback!,[key], {});
}

Widget itemBuilderProxy( context,  index,  animation) {
return  engine.callFunctionPointer(scope, itemBuilder!,[context, index, animation], {});
}

return SliverAnimatedGrid(findChildIndexCallback:findChildIndexCallback == null ? null :findChildIndexCallbackProxy, gridDelegate:gridDelegate, initialItemCount:initialItemCount ?? 0, itemBuilder:itemBuilderProxy, key:key);
},
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedGrid@createState': (m.Scope scope, SliverAnimatedGrid target)=>target.createState,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedGrid@of': (m.Scope scope)=>SliverAnimatedGrid.of,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedGrid@maybeOf': (m.Scope scope)=>SliverAnimatedGrid.maybeOf,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedGridState@#as': (m.Scope scope, target)=>()=>target as SliverAnimatedGridState,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedGridState@#is': (m.Scope scope, target)=>()=>target is SliverAnimatedGridState,
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedGridState@': (m.Scope scope)=>(){
return SliverAnimatedGridState();
},
'package:flutter/src/widgets/animated_scroll_view.dart@SliverAnimatedGridState@build': (m.Scope scope, SliverAnimatedGridState target)=>target.build,

};
}