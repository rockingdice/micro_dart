import 'package:flutter/src/widgets/nested_scroll_view.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/primary_scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_activity.dart';
import 'package:flutter/src/widgets/scroll_configuration.dart';
import 'package:flutter/src/widgets/scroll_context.dart';
import 'package:flutter/src/widgets/scroll_controller.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_physics.dart';
import 'package:flutter/src/widgets/scroll_position.dart';
import 'package:flutter/src/widgets/scroll_view.dart';
import 'package:flutter/src/widgets/sliver_fill.dart';
import 'package:flutter/src/widgets/viewport.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@#as': (m.Scope scope, target)=>()=>target as NestedScrollView,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@#is': (m.Scope scope, target)=>()=>target is NestedScrollView,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@controller': (m.Scope scope, NestedScrollView target)=>target.controller,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@scrollDirection': (m.Scope scope, NestedScrollView target)=>target.scrollDirection,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@reverse': (m.Scope scope, NestedScrollView target)=>target.reverse,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@physics': (m.Scope scope, NestedScrollView target)=>target.physics,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@headerSliverBuilder': (m.Scope scope, NestedScrollView target)=>target.headerSliverBuilder,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@body': (m.Scope scope, NestedScrollView target)=>target.body,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@dragStartBehavior': (m.Scope scope, NestedScrollView target)=>target.dragStartBehavior,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@floatHeaderSlivers': (m.Scope scope, NestedScrollView target)=>target.floatHeaderSlivers,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@clipBehavior': (m.Scope scope, NestedScrollView target)=>target.clipBehavior,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@restorationId': (m.Scope scope, NestedScrollView target)=>target.restorationId,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@scrollBehavior': (m.Scope scope, NestedScrollView target)=>target.scrollBehavior,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@': (m.Scope scope)=>({ body,  clipBehavior,  controller,  dragStartBehavior,  floatHeaderSlivers,  headerSliverBuilder,  key,  physics,  restorationId,  reverse,  scrollBehavior,  scrollDirection}){
List<Widget> headerSliverBuilderProxy( context,  innerBoxIsScrolled) {
return  engine.callFunctionPointer(scope, headerSliverBuilder!,[context, innerBoxIsScrolled], {});
}

return NestedScrollView(body:body, clipBehavior:clipBehavior ?? Clip.hardEdge, controller:controller, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, floatHeaderSlivers:floatHeaderSlivers ?? false, headerSliverBuilder:headerSliverBuilderProxy, key:key, physics:physics, restorationId:restorationId, reverse:reverse ?? false, scrollBehavior:scrollBehavior, scrollDirection:scrollDirection ?? Axis.vertical);
},
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@sliverOverlapAbsorberHandleFor': (m.Scope scope)=>NestedScrollView.sliverOverlapAbsorberHandleFor,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollView@createState': (m.Scope scope, NestedScrollView target)=>target.createState,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewState@#as': (m.Scope scope, target)=>()=>target as NestedScrollViewState,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewState@#is': (m.Scope scope, target)=>()=>target is NestedScrollViewState,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewState@innerController': (m.Scope scope, NestedScrollViewState target)=>target.innerController,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewState@outerController': (m.Scope scope, NestedScrollViewState target)=>target.outerController,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewState@': (m.Scope scope)=>(){
return NestedScrollViewState();
},
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewState@initState': (m.Scope scope, NestedScrollViewState target)=>target.initState,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewState@didChangeDependencies': (m.Scope scope, NestedScrollViewState target)=>target.didChangeDependencies,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewState@didUpdateWidget': (m.Scope scope, NestedScrollViewState target)=>target.didUpdateWidget,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewState@dispose': (m.Scope scope, NestedScrollViewState target)=>target.dispose,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewState@build': (m.Scope scope, NestedScrollViewState target)=>target.build,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorberHandle@#as': (m.Scope scope, target)=>()=>target as SliverOverlapAbsorberHandle,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorberHandle@#is': (m.Scope scope, target)=>()=>target is SliverOverlapAbsorberHandle,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorberHandle@layoutExtent': (m.Scope scope, SliverOverlapAbsorberHandle target)=>target.layoutExtent,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorberHandle@scrollExtent': (m.Scope scope, SliverOverlapAbsorberHandle target)=>target.scrollExtent,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorberHandle@': (m.Scope scope)=>(){
return SliverOverlapAbsorberHandle();
},
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorberHandle@toString': (m.Scope scope, SliverOverlapAbsorberHandle target)=>target.toString,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorber@#as': (m.Scope scope, target)=>()=>target as SliverOverlapAbsorber,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorber@#is': (m.Scope scope, target)=>()=>target is SliverOverlapAbsorber,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorber@handle': (m.Scope scope, SliverOverlapAbsorber target)=>target.handle,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorber@': (m.Scope scope)=>SliverOverlapAbsorber,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorber@createRenderObject': (m.Scope scope, SliverOverlapAbsorber target)=>target.createRenderObject,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorber@updateRenderObject': (m.Scope scope, SliverOverlapAbsorber target)=>target.updateRenderObject,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapAbsorber@debugFillProperties': (m.Scope scope, SliverOverlapAbsorber target)=>target.debugFillProperties,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapAbsorber@#as': (m.Scope scope, target)=>()=>target as RenderSliverOverlapAbsorber,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapAbsorber@#is': (m.Scope scope, target)=>()=>target is RenderSliverOverlapAbsorber,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapAbsorber@handle': (m.Scope scope, RenderSliverOverlapAbsorber target)=>target.handle,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapAbsorber@handle:set': (m.Scope scope, RenderSliverOverlapAbsorber target)=>(other)=>target.handle=other,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapAbsorber@': (m.Scope scope)=>RenderSliverOverlapAbsorber,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapAbsorber@attach': (m.Scope scope, RenderSliverOverlapAbsorber target)=>target.attach,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapAbsorber@detach': (m.Scope scope, RenderSliverOverlapAbsorber target)=>target.detach,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapAbsorber@performLayout': (m.Scope scope, RenderSliverOverlapAbsorber target)=>target.performLayout,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapAbsorber@applyPaintTransform': (m.Scope scope, RenderSliverOverlapAbsorber target)=>target.applyPaintTransform,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapAbsorber@hitTestChildren': (m.Scope scope, RenderSliverOverlapAbsorber target)=>target.hitTestChildren,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapAbsorber@paint': (m.Scope scope, RenderSliverOverlapAbsorber target)=>target.paint,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapAbsorber@debugFillProperties': (m.Scope scope, RenderSliverOverlapAbsorber target)=>target.debugFillProperties,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapInjector@#as': (m.Scope scope, target)=>()=>target as SliverOverlapInjector,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapInjector@#is': (m.Scope scope, target)=>()=>target is SliverOverlapInjector,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapInjector@handle': (m.Scope scope, SliverOverlapInjector target)=>target.handle,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapInjector@': (m.Scope scope)=>SliverOverlapInjector,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapInjector@createRenderObject': (m.Scope scope, SliverOverlapInjector target)=>target.createRenderObject,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapInjector@updateRenderObject': (m.Scope scope, SliverOverlapInjector target)=>target.updateRenderObject,
'package:flutter/src/widgets/nested_scroll_view.dart@SliverOverlapInjector@debugFillProperties': (m.Scope scope, SliverOverlapInjector target)=>target.debugFillProperties,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapInjector@#as': (m.Scope scope, target)=>()=>target as RenderSliverOverlapInjector,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapInjector@#is': (m.Scope scope, target)=>()=>target is RenderSliverOverlapInjector,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapInjector@handle': (m.Scope scope, RenderSliverOverlapInjector target)=>target.handle,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapInjector@handle:set': (m.Scope scope, RenderSliverOverlapInjector target)=>(other)=>target.handle=other,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapInjector@': (m.Scope scope)=>RenderSliverOverlapInjector,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapInjector@attach': (m.Scope scope, RenderSliverOverlapInjector target)=>target.attach,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapInjector@detach': (m.Scope scope, RenderSliverOverlapInjector target)=>target.detach,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapInjector@performLayout': (m.Scope scope, RenderSliverOverlapInjector target)=>target.performLayout,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapInjector@debugPaint': (m.Scope scope, RenderSliverOverlapInjector target)=>target.debugPaint,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderSliverOverlapInjector@debugFillProperties': (m.Scope scope, RenderSliverOverlapInjector target)=>target.debugFillProperties,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewViewport@#as': (m.Scope scope, target)=>()=>target as NestedScrollViewViewport,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewViewport@#is': (m.Scope scope, target)=>()=>target is NestedScrollViewViewport,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewViewport@handle': (m.Scope scope, NestedScrollViewViewport target)=>target.handle,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewViewport@': (m.Scope scope)=>NestedScrollViewViewport,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewViewport@createRenderObject': (m.Scope scope, NestedScrollViewViewport target)=>target.createRenderObject,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewViewport@updateRenderObject': (m.Scope scope, NestedScrollViewViewport target)=>target.updateRenderObject,
'package:flutter/src/widgets/nested_scroll_view.dart@NestedScrollViewViewport@debugFillProperties': (m.Scope scope, NestedScrollViewViewport target)=>target.debugFillProperties,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderNestedScrollViewViewport@#as': (m.Scope scope, target)=>()=>target as RenderNestedScrollViewViewport,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderNestedScrollViewViewport@#is': (m.Scope scope, target)=>()=>target is RenderNestedScrollViewViewport,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderNestedScrollViewViewport@handle': (m.Scope scope, RenderNestedScrollViewViewport target)=>target.handle,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderNestedScrollViewViewport@handle:set': (m.Scope scope, RenderNestedScrollViewViewport target)=>(other)=>target.handle=other,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderNestedScrollViewViewport@': (m.Scope scope)=>RenderNestedScrollViewViewport,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderNestedScrollViewViewport@markNeedsLayout': (m.Scope scope, RenderNestedScrollViewViewport target)=>target.markNeedsLayout,
'package:flutter/src/widgets/nested_scroll_view.dart@RenderNestedScrollViewViewport@debugFillProperties': (m.Scope scope, RenderNestedScrollViewViewport target)=>target.debugFillProperties,

};
}