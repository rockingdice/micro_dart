import 'package:flutter/src/rendering/viewport.dart';
import 'dart:math';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/sliver.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/viewport.dart@RenderAbstractViewport@#as': (m.Scope scope, target)=>()=>target as RenderAbstractViewport,
'package:flutter/src/rendering/viewport.dart@RenderAbstractViewport@#is': (m.Scope scope, target)=>()=>target is RenderAbstractViewport,
'package:flutter/src/rendering/viewport.dart@RenderAbstractViewport@defaultCacheExtent': (m.Scope scope)=>RenderAbstractViewport.defaultCacheExtent,
'package:flutter/src/rendering/viewport.dart@RenderAbstractViewport@maybeOf': (m.Scope scope)=>RenderAbstractViewport.maybeOf,
'package:flutter/src/rendering/viewport.dart@RenderAbstractViewport@of': (m.Scope scope)=>RenderAbstractViewport.of,
'package:flutter/src/rendering/viewport.dart@RenderAbstractViewport@getOffsetToReveal': (m.Scope scope, RenderAbstractViewport target)=>target.getOffsetToReveal,
'package:flutter/src/rendering/viewport.dart@RevealedOffset@#as': (m.Scope scope, target)=>()=>target as RevealedOffset,
'package:flutter/src/rendering/viewport.dart@RevealedOffset@#is': (m.Scope scope, target)=>()=>target is RevealedOffset,
'package:flutter/src/rendering/viewport.dart@RevealedOffset@offset': (m.Scope scope, RevealedOffset target)=>target.offset,
'package:flutter/src/rendering/viewport.dart@RevealedOffset@rect': (m.Scope scope, RevealedOffset target)=>target.rect,
'package:flutter/src/rendering/viewport.dart@RevealedOffset@': (m.Scope scope)=>RevealedOffset,
'package:flutter/src/rendering/viewport.dart@RevealedOffset@toString': (m.Scope scope, RevealedOffset target)=>target.toString,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@#as': (m.Scope scope, target)=>()=>target as RenderViewportBase,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@#is': (m.Scope scope, target)=>()=>target is RenderViewportBase,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@axisDirection': (m.Scope scope, RenderViewportBase target)=>target.axisDirection,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@axisDirection:set': (m.Scope scope, RenderViewportBase target)=>(other)=>target.axisDirection=other,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@crossAxisDirection': (m.Scope scope, RenderViewportBase target)=>target.crossAxisDirection,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@crossAxisDirection:set': (m.Scope scope, RenderViewportBase target)=>(other)=>target.crossAxisDirection=other,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@axis': (m.Scope scope, RenderViewportBase target)=>target.axis,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@offset': (m.Scope scope, RenderViewportBase target)=>target.offset,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@offset:set': (m.Scope scope, RenderViewportBase target)=>(other)=>target.offset=other,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@cacheExtent': (m.Scope scope, RenderViewportBase target)=>target.cacheExtent,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@cacheExtent:set': (m.Scope scope, RenderViewportBase target)=>(other)=>target.cacheExtent=other,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@cacheExtentStyle': (m.Scope scope, RenderViewportBase target)=>target.cacheExtentStyle,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@cacheExtentStyle:set': (m.Scope scope, RenderViewportBase target)=>(other)=>target.cacheExtentStyle=other,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@clipBehavior': (m.Scope scope, RenderViewportBase target)=>target.clipBehavior,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@clipBehavior:set': (m.Scope scope, RenderViewportBase target)=>(other)=>target.clipBehavior=other,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@isRepaintBoundary': (m.Scope scope, RenderViewportBase target)=>target.isRepaintBoundary,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@hasVisualOverflow': (m.Scope scope, RenderViewportBase target)=>target.hasVisualOverflow,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@indexOfFirstChild': (m.Scope scope, RenderViewportBase target)=>target.indexOfFirstChild,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@childrenInPaintOrder': (m.Scope scope, RenderViewportBase target)=>target.childrenInPaintOrder,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@childrenInHitTestOrder': (m.Scope scope, RenderViewportBase target)=>target.childrenInHitTestOrder,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@describeSemanticsConfiguration': (m.Scope scope, RenderViewportBase target)=>target.describeSemanticsConfiguration,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@visitChildrenForSemantics': (m.Scope scope, RenderViewportBase target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildrenForSemantics(visitorProxy);
},
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@attach': (m.Scope scope, RenderViewportBase target)=>target.attach,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@detach': (m.Scope scope, RenderViewportBase target)=>target.detach,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@debugThrowIfNotCheckingIntrinsics': (m.Scope scope, RenderViewportBase target)=>target.debugThrowIfNotCheckingIntrinsics,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@computeMinIntrinsicWidth': (m.Scope scope, RenderViewportBase target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@computeMaxIntrinsicWidth': (m.Scope scope, RenderViewportBase target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@computeMinIntrinsicHeight': (m.Scope scope, RenderViewportBase target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@computeMaxIntrinsicHeight': (m.Scope scope, RenderViewportBase target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@layoutChildSequence': (m.Scope scope, RenderViewportBase target)=>({ advance,  cacheOrigin,  child,  crossAxisExtent,  growthDirection,  layoutOffset,  mainAxisExtent,  overlap,  remainingCacheExtent,  remainingPaintExtent,  scrollOffset}){
RenderSliver advanceProxy( child) {
return  engine.callFunctionPointer(scope, advance!,[child], {});
}

return target.layoutChildSequence(advance:advanceProxy, cacheOrigin:cacheOrigin, child:child, crossAxisExtent:crossAxisExtent, growthDirection:growthDirection, layoutOffset:layoutOffset, mainAxisExtent:mainAxisExtent, overlap:overlap, remainingCacheExtent:remainingCacheExtent, remainingPaintExtent:remainingPaintExtent, scrollOffset:scrollOffset);
},
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@describeApproximatePaintClip': (m.Scope scope, RenderViewportBase target)=>target.describeApproximatePaintClip,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@describeSemanticsClip': (m.Scope scope, RenderViewportBase target)=>target.describeSemanticsClip,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@paint': (m.Scope scope, RenderViewportBase target)=>target.paint,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@dispose': (m.Scope scope, RenderViewportBase target)=>target.dispose,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@debugPaintSize': (m.Scope scope, RenderViewportBase target)=>target.debugPaintSize,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@hitTestChildren': (m.Scope scope, RenderViewportBase target)=>target.hitTestChildren,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@getOffsetToReveal': (m.Scope scope, RenderViewportBase target)=>target.getOffsetToReveal,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@computeAbsolutePaintOffset': (m.Scope scope, RenderViewportBase target)=>target.computeAbsolutePaintOffset,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@debugFillProperties': (m.Scope scope, RenderViewportBase target)=>target.debugFillProperties,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@debugDescribeChildren': (m.Scope scope, RenderViewportBase target)=>target.debugDescribeChildren,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@updateOutOfBandData': (m.Scope scope, RenderViewportBase target)=>target.updateOutOfBandData,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@updateChildLayoutOffset': (m.Scope scope, RenderViewportBase target)=>target.updateChildLayoutOffset,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@paintOffsetOf': (m.Scope scope, RenderViewportBase target)=>target.paintOffsetOf,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@scrollOffsetOf': (m.Scope scope, RenderViewportBase target)=>target.scrollOffsetOf,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@maxScrollObstructionExtentBefore': (m.Scope scope, RenderViewportBase target)=>target.maxScrollObstructionExtentBefore,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@computeChildMainAxisPosition': (m.Scope scope, RenderViewportBase target)=>target.computeChildMainAxisPosition,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@labelForChild': (m.Scope scope, RenderViewportBase target)=>target.labelForChild,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@showOnScreen': (m.Scope scope, RenderViewportBase target)=>target.showOnScreen,
'package:flutter/src/rendering/viewport.dart@RenderViewportBase@showInViewport': (m.Scope scope)=>RenderViewportBase.showInViewport,
'package:flutter/src/rendering/viewport.dart@RenderViewport@#as': (m.Scope scope, target)=>()=>target as RenderViewport,
'package:flutter/src/rendering/viewport.dart@RenderViewport@#is': (m.Scope scope, target)=>()=>target is RenderViewport,
'package:flutter/src/rendering/viewport.dart@RenderViewport@useTwoPaneSemantics': (m.Scope scope)=>RenderViewport.useTwoPaneSemantics,
'package:flutter/src/rendering/viewport.dart@RenderViewport@excludeFromScrolling': (m.Scope scope)=>RenderViewport.excludeFromScrolling,
'package:flutter/src/rendering/viewport.dart@RenderViewport@anchor': (m.Scope scope, RenderViewport target)=>target.anchor,
'package:flutter/src/rendering/viewport.dart@RenderViewport@anchor:set': (m.Scope scope, RenderViewport target)=>(other)=>target.anchor=other,
'package:flutter/src/rendering/viewport.dart@RenderViewport@center': (m.Scope scope, RenderViewport target)=>target.center,
'package:flutter/src/rendering/viewport.dart@RenderViewport@center:set': (m.Scope scope, RenderViewport target)=>(other)=>target.center=other,
'package:flutter/src/rendering/viewport.dart@RenderViewport@sizedByParent': (m.Scope scope, RenderViewport target)=>target.sizedByParent,
'package:flutter/src/rendering/viewport.dart@RenderViewport@hasVisualOverflow': (m.Scope scope, RenderViewport target)=>target.hasVisualOverflow,
'package:flutter/src/rendering/viewport.dart@RenderViewport@indexOfFirstChild': (m.Scope scope, RenderViewport target)=>target.indexOfFirstChild,
'package:flutter/src/rendering/viewport.dart@RenderViewport@childrenInPaintOrder': (m.Scope scope, RenderViewport target)=>target.childrenInPaintOrder,
'package:flutter/src/rendering/viewport.dart@RenderViewport@childrenInHitTestOrder': (m.Scope scope, RenderViewport target)=>target.childrenInHitTestOrder,
'package:flutter/src/rendering/viewport.dart@RenderViewport@': (m.Scope scope)=>RenderViewport,
'package:flutter/src/rendering/viewport.dart@RenderViewport@setupParentData': (m.Scope scope, RenderViewport target)=>target.setupParentData,
'package:flutter/src/rendering/viewport.dart@RenderViewport@computeDryLayout': (m.Scope scope, RenderViewport target)=>target.computeDryLayout,
'package:flutter/src/rendering/viewport.dart@RenderViewport@performLayout': (m.Scope scope, RenderViewport target)=>target.performLayout,
'package:flutter/src/rendering/viewport.dart@RenderViewport@updateOutOfBandData': (m.Scope scope, RenderViewport target)=>target.updateOutOfBandData,
'package:flutter/src/rendering/viewport.dart@RenderViewport@updateChildLayoutOffset': (m.Scope scope, RenderViewport target)=>target.updateChildLayoutOffset,
'package:flutter/src/rendering/viewport.dart@RenderViewport@paintOffsetOf': (m.Scope scope, RenderViewport target)=>target.paintOffsetOf,
'package:flutter/src/rendering/viewport.dart@RenderViewport@scrollOffsetOf': (m.Scope scope, RenderViewport target)=>target.scrollOffsetOf,
'package:flutter/src/rendering/viewport.dart@RenderViewport@maxScrollObstructionExtentBefore': (m.Scope scope, RenderViewport target)=>target.maxScrollObstructionExtentBefore,
'package:flutter/src/rendering/viewport.dart@RenderViewport@applyPaintTransform': (m.Scope scope, RenderViewport target)=>target.applyPaintTransform,
'package:flutter/src/rendering/viewport.dart@RenderViewport@computeChildMainAxisPosition': (m.Scope scope, RenderViewport target)=>target.computeChildMainAxisPosition,
'package:flutter/src/rendering/viewport.dart@RenderViewport@labelForChild': (m.Scope scope, RenderViewport target)=>target.labelForChild,
'package:flutter/src/rendering/viewport.dart@RenderViewport@debugFillProperties': (m.Scope scope, RenderViewport target)=>target.debugFillProperties,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@#as': (m.Scope scope, target)=>()=>target as RenderShrinkWrappingViewport,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@#is': (m.Scope scope, target)=>()=>target is RenderShrinkWrappingViewport,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@hasVisualOverflow': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.hasVisualOverflow,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@indexOfFirstChild': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.indexOfFirstChild,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@childrenInPaintOrder': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.childrenInPaintOrder,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@childrenInHitTestOrder': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.childrenInHitTestOrder,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@': (m.Scope scope)=>RenderShrinkWrappingViewport,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@setupParentData': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.setupParentData,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@debugThrowIfNotCheckingIntrinsics': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.debugThrowIfNotCheckingIntrinsics,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@performLayout': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.performLayout,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@updateOutOfBandData': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.updateOutOfBandData,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@updateChildLayoutOffset': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.updateChildLayoutOffset,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@paintOffsetOf': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.paintOffsetOf,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@scrollOffsetOf': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.scrollOffsetOf,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@maxScrollObstructionExtentBefore': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.maxScrollObstructionExtentBefore,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@applyPaintTransform': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.applyPaintTransform,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@computeChildMainAxisPosition': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.computeChildMainAxisPosition,
'package:flutter/src/rendering/viewport.dart@RenderShrinkWrappingViewport@labelForChild': (m.Scope scope, RenderShrinkWrappingViewport target)=>target.labelForChild,

};
}