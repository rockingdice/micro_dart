import 'package:flutter/src/rendering/sliver_persistent_header.dart';
import 'dart:math';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/viewport.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/sliver_persistent_header.dart@OverScrollHeaderStretchConfiguration@#as': (m.Scope scope, target)=>()=>target as OverScrollHeaderStretchConfiguration,
'package:flutter/src/rendering/sliver_persistent_header.dart@OverScrollHeaderStretchConfiguration@#is': (m.Scope scope, target)=>()=>target is OverScrollHeaderStretchConfiguration,
'package:flutter/src/rendering/sliver_persistent_header.dart@OverScrollHeaderStretchConfiguration@stretchTriggerOffset': (m.Scope scope, OverScrollHeaderStretchConfiguration target)=>target.stretchTriggerOffset,
'package:flutter/src/rendering/sliver_persistent_header.dart@OverScrollHeaderStretchConfiguration@onStretchTrigger': (m.Scope scope, OverScrollHeaderStretchConfiguration target)=>target.onStretchTrigger,
'package:flutter/src/rendering/sliver_persistent_header.dart@OverScrollHeaderStretchConfiguration@': (m.Scope scope)=>({ onStretchTrigger,  stretchTriggerOffset}){
Future onStretchTriggerProxy() async{
return await engine.callFunctionPointerAsync(scope, onStretchTrigger!,[], {});
}

return OverScrollHeaderStretchConfiguration(onStretchTrigger:onStretchTrigger == null ? null :onStretchTriggerProxy, stretchTriggerOffset:stretchTriggerOffset ?? 100.0);
},
'package:flutter/src/rendering/sliver_persistent_header.dart@PersistentHeaderShowOnScreenConfiguration@#as': (m.Scope scope, target)=>()=>target as PersistentHeaderShowOnScreenConfiguration,
'package:flutter/src/rendering/sliver_persistent_header.dart@PersistentHeaderShowOnScreenConfiguration@#is': (m.Scope scope, target)=>()=>target is PersistentHeaderShowOnScreenConfiguration,
'package:flutter/src/rendering/sliver_persistent_header.dart@PersistentHeaderShowOnScreenConfiguration@minShowOnScreenExtent': (m.Scope scope, PersistentHeaderShowOnScreenConfiguration target)=>target.minShowOnScreenExtent,
'package:flutter/src/rendering/sliver_persistent_header.dart@PersistentHeaderShowOnScreenConfiguration@maxShowOnScreenExtent': (m.Scope scope, PersistentHeaderShowOnScreenConfiguration target)=>target.maxShowOnScreenExtent,
'package:flutter/src/rendering/sliver_persistent_header.dart@PersistentHeaderShowOnScreenConfiguration@': (m.Scope scope)=>({ maxShowOnScreenExtent,  minShowOnScreenExtent}){
return PersistentHeaderShowOnScreenConfiguration(maxShowOnScreenExtent:maxShowOnScreenExtent ?? double.infinity, minShowOnScreenExtent:minShowOnScreenExtent ?? double.negativeInfinity);
},
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@#as': (m.Scope scope, target)=>()=>target as RenderSliverPersistentHeader,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@#is': (m.Scope scope, target)=>()=>target is RenderSliverPersistentHeader,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@stretchConfiguration': (m.Scope scope, RenderSliverPersistentHeader target)=>target.stretchConfiguration,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@stretchConfiguration:set': (m.Scope scope, RenderSliverPersistentHeader target)=>(other)=>target.stretchConfiguration=other,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@maxExtent': (m.Scope scope, RenderSliverPersistentHeader target)=>target.maxExtent,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@minExtent': (m.Scope scope, RenderSliverPersistentHeader target)=>target.minExtent,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@childExtent': (m.Scope scope, RenderSliverPersistentHeader target)=>target.childExtent,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@updateChild': (m.Scope scope, RenderSliverPersistentHeader target)=>target.updateChild,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@markNeedsLayout': (m.Scope scope, RenderSliverPersistentHeader target)=>target.markNeedsLayout,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@layoutChild': (m.Scope scope, RenderSliverPersistentHeader target)=>target.layoutChild,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@childMainAxisPosition': (m.Scope scope, RenderSliverPersistentHeader target)=>target.childMainAxisPosition,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@hitTestChildren': (m.Scope scope, RenderSliverPersistentHeader target)=>target.hitTestChildren,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@applyPaintTransform': (m.Scope scope, RenderSliverPersistentHeader target)=>target.applyPaintTransform,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@paint': (m.Scope scope, RenderSliverPersistentHeader target)=>target.paint,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@describeSemanticsConfiguration': (m.Scope scope, RenderSliverPersistentHeader target)=>target.describeSemanticsConfiguration,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPersistentHeader@debugFillProperties': (m.Scope scope, RenderSliverPersistentHeader target)=>target.debugFillProperties,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverScrollingPersistentHeader@#as': (m.Scope scope, target)=>()=>target as RenderSliverScrollingPersistentHeader,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverScrollingPersistentHeader@#is': (m.Scope scope, target)=>()=>target is RenderSliverScrollingPersistentHeader,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverScrollingPersistentHeader@updateGeometry': (m.Scope scope, RenderSliverScrollingPersistentHeader target)=>target.updateGeometry,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverScrollingPersistentHeader@performLayout': (m.Scope scope, RenderSliverScrollingPersistentHeader target)=>target.performLayout,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverScrollingPersistentHeader@childMainAxisPosition': (m.Scope scope, RenderSliverScrollingPersistentHeader target)=>target.childMainAxisPosition,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPinnedPersistentHeader@#as': (m.Scope scope, target)=>()=>target as RenderSliverPinnedPersistentHeader,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPinnedPersistentHeader@#is': (m.Scope scope, target)=>()=>target is RenderSliverPinnedPersistentHeader,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPinnedPersistentHeader@showOnScreenConfiguration': (m.Scope scope, RenderSliverPinnedPersistentHeader target)=>target.showOnScreenConfiguration,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPinnedPersistentHeader@showOnScreenConfiguration:set': (m.Scope scope, RenderSliverPinnedPersistentHeader target)=>(other)=>target.showOnScreenConfiguration=other,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPinnedPersistentHeader@performLayout': (m.Scope scope, RenderSliverPinnedPersistentHeader target)=>target.performLayout,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPinnedPersistentHeader@childMainAxisPosition': (m.Scope scope, RenderSliverPinnedPersistentHeader target)=>target.childMainAxisPosition,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverPinnedPersistentHeader@showOnScreen': (m.Scope scope, RenderSliverPinnedPersistentHeader target)=>target.showOnScreen,
'package:flutter/src/rendering/sliver_persistent_header.dart@FloatingHeaderSnapConfiguration@#as': (m.Scope scope, target)=>()=>target as FloatingHeaderSnapConfiguration,
'package:flutter/src/rendering/sliver_persistent_header.dart@FloatingHeaderSnapConfiguration@#is': (m.Scope scope, target)=>()=>target is FloatingHeaderSnapConfiguration,
'package:flutter/src/rendering/sliver_persistent_header.dart@FloatingHeaderSnapConfiguration@curve': (m.Scope scope, FloatingHeaderSnapConfiguration target)=>target.curve,
'package:flutter/src/rendering/sliver_persistent_header.dart@FloatingHeaderSnapConfiguration@duration': (m.Scope scope, FloatingHeaderSnapConfiguration target)=>target.duration,
'package:flutter/src/rendering/sliver_persistent_header.dart@FloatingHeaderSnapConfiguration@': (m.Scope scope)=>({ curve,  duration}){
return FloatingHeaderSnapConfiguration(curve:curve ?? Curves.ease, duration:duration ?? const Duration(milliseconds: 300));
},
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@#as': (m.Scope scope, target)=>()=>target as RenderSliverFloatingPersistentHeader,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@#is': (m.Scope scope, target)=>()=>target is RenderSliverFloatingPersistentHeader,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@snapConfiguration': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>target.snapConfiguration,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@snapConfiguration:set': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>(other)=>target.snapConfiguration=other,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@showOnScreenConfiguration': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>target.showOnScreenConfiguration,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@showOnScreenConfiguration:set': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>(other)=>target.showOnScreenConfiguration=other,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@vsync': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>target.vsync,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@vsync:set': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>(other)=>target.vsync=other,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@detach': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>target.detach,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@updateGeometry': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>target.updateGeometry,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@updateScrollStartDirection': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>target.updateScrollStartDirection,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@maybeStartSnapAnimation': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>target.maybeStartSnapAnimation,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@maybeStopSnapAnimation': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>target.maybeStopSnapAnimation,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@performLayout': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>target.performLayout,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@showOnScreen': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>target.showOnScreen,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@childMainAxisPosition': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>target.childMainAxisPosition,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPersistentHeader@debugFillProperties': (m.Scope scope, RenderSliverFloatingPersistentHeader target)=>target.debugFillProperties,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPinnedPersistentHeader@#as': (m.Scope scope, target)=>()=>target as RenderSliverFloatingPinnedPersistentHeader,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPinnedPersistentHeader@#is': (m.Scope scope, target)=>()=>target is RenderSliverFloatingPinnedPersistentHeader,
'package:flutter/src/rendering/sliver_persistent_header.dart@RenderSliverFloatingPinnedPersistentHeader@updateGeometry': (m.Scope scope, RenderSliverFloatingPinnedPersistentHeader target)=>target.updateGeometry,

};
}