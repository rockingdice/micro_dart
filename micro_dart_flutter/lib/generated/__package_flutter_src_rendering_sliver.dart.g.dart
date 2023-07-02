import 'package:flutter/src/rendering/sliver.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:flutter/src/rendering/viewport.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/sliver.dart@SliverConstraints@#as': (m.Scope scope, target)=>()=>target as SliverConstraints,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@#is': (m.Scope scope, target)=>()=>target is SliverConstraints,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@axisDirection': (m.Scope scope, SliverConstraints target)=>target.axisDirection,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@growthDirection': (m.Scope scope, SliverConstraints target)=>target.growthDirection,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@userScrollDirection': (m.Scope scope, SliverConstraints target)=>target.userScrollDirection,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@scrollOffset': (m.Scope scope, SliverConstraints target)=>target.scrollOffset,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@precedingScrollExtent': (m.Scope scope, SliverConstraints target)=>target.precedingScrollExtent,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@overlap': (m.Scope scope, SliverConstraints target)=>target.overlap,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@remainingPaintExtent': (m.Scope scope, SliverConstraints target)=>target.remainingPaintExtent,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@crossAxisExtent': (m.Scope scope, SliverConstraints target)=>target.crossAxisExtent,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@crossAxisDirection': (m.Scope scope, SliverConstraints target)=>target.crossAxisDirection,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@viewportMainAxisExtent': (m.Scope scope, SliverConstraints target)=>target.viewportMainAxisExtent,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@cacheOrigin': (m.Scope scope, SliverConstraints target)=>target.cacheOrigin,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@remainingCacheExtent': (m.Scope scope, SliverConstraints target)=>target.remainingCacheExtent,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@axis': (m.Scope scope, SliverConstraints target)=>target.axis,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@normalizedGrowthDirection': (m.Scope scope, SliverConstraints target)=>target.normalizedGrowthDirection,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@isTight': (m.Scope scope, SliverConstraints target)=>target.isTight,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@isNormalized': (m.Scope scope, SliverConstraints target)=>target.isNormalized,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@hashCode': (m.Scope scope, SliverConstraints target)=>target.hashCode,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@': (m.Scope scope)=>({ axisDirection,  cacheOrigin,  crossAxisDirection,  crossAxisExtent,  growthDirection,  overlap,  precedingScrollExtent,  remainingCacheExtent,  remainingPaintExtent,  scrollOffset,  userScrollDirection,  viewportMainAxisExtent}){
return SliverConstraints(axisDirection:axisDirection, cacheOrigin:cacheOrigin, crossAxisDirection:crossAxisDirection, crossAxisExtent:crossAxisExtent, growthDirection:growthDirection, overlap:overlap, precedingScrollExtent:precedingScrollExtent, remainingCacheExtent:remainingCacheExtent, remainingPaintExtent:remainingPaintExtent, scrollOffset:scrollOffset, userScrollDirection:userScrollDirection, viewportMainAxisExtent:viewportMainAxisExtent);
},
'package:flutter/src/rendering/sliver.dart@SliverConstraints@copyWith': (m.Scope scope, SliverConstraints target)=>target.copyWith,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@asBoxConstraints': (m.Scope scope, SliverConstraints target)=>target.asBoxConstraints,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@debugAssertIsValid': (m.Scope scope, SliverConstraints target)=>({ informationCollector,  isAppliedConstraint}){
Iterable<DiagnosticsNode> informationCollectorProxy() {
return  engine.callFunctionPointer(scope, informationCollector!,[], {});
}

return target.debugAssertIsValid(informationCollector:informationCollector == null ? null :informationCollectorProxy, isAppliedConstraint:isAppliedConstraint ?? false);
},
'package:flutter/src/rendering/sliver.dart@SliverConstraints@==': (m.Scope scope, SliverConstraints target)=>(other)=> target == other,
'package:flutter/src/rendering/sliver.dart@SliverConstraints@toString': (m.Scope scope, SliverConstraints target)=>target.toString,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@#as': (m.Scope scope, target)=>()=>target as SliverGeometry,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@#is': (m.Scope scope, target)=>()=>target is SliverGeometry,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@zero': (m.Scope scope)=>SliverGeometry.zero,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@scrollExtent': (m.Scope scope, SliverGeometry target)=>target.scrollExtent,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@paintOrigin': (m.Scope scope, SliverGeometry target)=>target.paintOrigin,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@paintExtent': (m.Scope scope, SliverGeometry target)=>target.paintExtent,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@layoutExtent': (m.Scope scope, SliverGeometry target)=>target.layoutExtent,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@maxPaintExtent': (m.Scope scope, SliverGeometry target)=>target.maxPaintExtent,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@maxScrollObstructionExtent': (m.Scope scope, SliverGeometry target)=>target.maxScrollObstructionExtent,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@hitTestExtent': (m.Scope scope, SliverGeometry target)=>target.hitTestExtent,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@visible': (m.Scope scope, SliverGeometry target)=>target.visible,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@hasVisualOverflow': (m.Scope scope, SliverGeometry target)=>target.hasVisualOverflow,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@scrollOffsetCorrection': (m.Scope scope, SliverGeometry target)=>target.scrollOffsetCorrection,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@cacheExtent': (m.Scope scope, SliverGeometry target)=>target.cacheExtent,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@': (m.Scope scope)=>({ cacheExtent,  hasVisualOverflow,  hitTestExtent,  layoutExtent,  maxPaintExtent,  maxScrollObstructionExtent,  paintExtent,  paintOrigin,  scrollExtent,  scrollOffsetCorrection,  visible}){
return SliverGeometry(cacheExtent:cacheExtent, hasVisualOverflow:hasVisualOverflow ?? false, hitTestExtent:hitTestExtent, layoutExtent:layoutExtent, maxPaintExtent:maxPaintExtent ?? 0.0, maxScrollObstructionExtent:maxScrollObstructionExtent ?? 0.0, paintExtent:paintExtent ?? 0.0, paintOrigin:paintOrigin ?? 0.0, scrollExtent:scrollExtent ?? 0.0, scrollOffsetCorrection:scrollOffsetCorrection, visible:visible);
},
'package:flutter/src/rendering/sliver.dart@SliverGeometry@debugAssertIsValid': (m.Scope scope, SliverGeometry target)=>({ informationCollector}){
Iterable<DiagnosticsNode> informationCollectorProxy() {
return  engine.callFunctionPointer(scope, informationCollector!,[], {});
}

return target.debugAssertIsValid(informationCollector:informationCollector == null ? null :informationCollectorProxy);
},
'package:flutter/src/rendering/sliver.dart@SliverGeometry@toStringShort': (m.Scope scope, SliverGeometry target)=>target.toStringShort,
'package:flutter/src/rendering/sliver.dart@SliverGeometry@debugFillProperties': (m.Scope scope, SliverGeometry target)=>target.debugFillProperties,
'package:flutter/src/rendering/sliver.dart@SliverHitTestResult@#as': (m.Scope scope, target)=>()=>target as SliverHitTestResult,
'package:flutter/src/rendering/sliver.dart@SliverHitTestResult@#is': (m.Scope scope, target)=>()=>target is SliverHitTestResult,
'package:flutter/src/rendering/sliver.dart@SliverHitTestResult@': (m.Scope scope)=>(){
return SliverHitTestResult();
},
'package:flutter/src/rendering/sliver.dart@SliverHitTestResult@wrap': (m.Scope scope)=>SliverHitTestResult.wrap,
'package:flutter/src/rendering/sliver.dart@SliverHitTestResult@addWithAxisOffset': (m.Scope scope, SliverHitTestResult target)=>({ crossAxisOffset,  crossAxisPosition,  hitTest,  mainAxisOffset,  mainAxisPosition,  paintOffset}){
bool hitTestProxy( result, { crossAxisPosition,  mainAxisPosition}) {
return  engine.callFunctionPointer(scope, hitTest!,[result], {'crossAxisPosition':crossAxisPosition, 'mainAxisPosition':mainAxisPosition});
}

return target.addWithAxisOffset(crossAxisOffset:crossAxisOffset, crossAxisPosition:crossAxisPosition, hitTest:hitTestProxy, mainAxisOffset:mainAxisOffset, mainAxisPosition:mainAxisPosition, paintOffset:paintOffset);
},
'package:flutter/src/rendering/sliver.dart@SliverHitTestEntry@#as': (m.Scope scope, target)=>()=>target as SliverHitTestEntry,
'package:flutter/src/rendering/sliver.dart@SliverHitTestEntry@#is': (m.Scope scope, target)=>()=>target is SliverHitTestEntry,
'package:flutter/src/rendering/sliver.dart@SliverHitTestEntry@mainAxisPosition': (m.Scope scope, SliverHitTestEntry target)=>target.mainAxisPosition,
'package:flutter/src/rendering/sliver.dart@SliverHitTestEntry@crossAxisPosition': (m.Scope scope, SliverHitTestEntry target)=>target.crossAxisPosition,
'package:flutter/src/rendering/sliver.dart@SliverHitTestEntry@': (m.Scope scope)=>( target, { crossAxisPosition,  mainAxisPosition}){
return SliverHitTestEntry(target, crossAxisPosition:crossAxisPosition, mainAxisPosition:mainAxisPosition);
},
'package:flutter/src/rendering/sliver.dart@SliverHitTestEntry@toString': (m.Scope scope, SliverHitTestEntry target)=>target.toString,
'package:flutter/src/rendering/sliver.dart@SliverLogicalParentData@#as': (m.Scope scope, target)=>()=>target as SliverLogicalParentData,
'package:flutter/src/rendering/sliver.dart@SliverLogicalParentData@#is': (m.Scope scope, target)=>()=>target is SliverLogicalParentData,
'package:flutter/src/rendering/sliver.dart@SliverLogicalParentData@layoutOffset': (m.Scope scope, SliverLogicalParentData target)=>target.layoutOffset,
'package:flutter/src/rendering/sliver.dart@SliverLogicalParentData@layoutOffset:set': (m.Scope scope, SliverLogicalParentData target)=>(other)=>target.layoutOffset=other,
'package:flutter/src/rendering/sliver.dart@SliverLogicalParentData@': (m.Scope scope)=>(){
return SliverLogicalParentData();
},
'package:flutter/src/rendering/sliver.dart@SliverLogicalParentData@toString': (m.Scope scope, SliverLogicalParentData target)=>target.toString,
'package:flutter/src/rendering/sliver.dart@SliverLogicalContainerParentData@#as': (m.Scope scope, target)=>()=>target as SliverLogicalContainerParentData,
'package:flutter/src/rendering/sliver.dart@SliverLogicalContainerParentData@#is': (m.Scope scope, target)=>()=>target is SliverLogicalContainerParentData,
'package:flutter/src/rendering/sliver.dart@SliverLogicalContainerParentData@': (m.Scope scope)=>(){
return SliverLogicalContainerParentData();
},
'package:flutter/src/rendering/sliver.dart@SliverPhysicalParentData@#as': (m.Scope scope, target)=>()=>target as SliverPhysicalParentData,
'package:flutter/src/rendering/sliver.dart@SliverPhysicalParentData@#is': (m.Scope scope, target)=>()=>target is SliverPhysicalParentData,
'package:flutter/src/rendering/sliver.dart@SliverPhysicalParentData@paintOffset': (m.Scope scope, SliverPhysicalParentData target)=>target.paintOffset,
'package:flutter/src/rendering/sliver.dart@SliverPhysicalParentData@paintOffset:set': (m.Scope scope, SliverPhysicalParentData target)=>(other)=>target.paintOffset=other,
'package:flutter/src/rendering/sliver.dart@SliverPhysicalParentData@': (m.Scope scope)=>(){
return SliverPhysicalParentData();
},
'package:flutter/src/rendering/sliver.dart@SliverPhysicalParentData@applyPaintTransform': (m.Scope scope, SliverPhysicalParentData target)=>target.applyPaintTransform,
'package:flutter/src/rendering/sliver.dart@SliverPhysicalParentData@toString': (m.Scope scope, SliverPhysicalParentData target)=>target.toString,
'package:flutter/src/rendering/sliver.dart@SliverPhysicalContainerParentData@#as': (m.Scope scope, target)=>()=>target as SliverPhysicalContainerParentData,
'package:flutter/src/rendering/sliver.dart@SliverPhysicalContainerParentData@#is': (m.Scope scope, target)=>()=>target is SliverPhysicalContainerParentData,
'package:flutter/src/rendering/sliver.dart@SliverPhysicalContainerParentData@': (m.Scope scope)=>(){
return SliverPhysicalContainerParentData();
},
'package:flutter/src/rendering/sliver.dart@RenderSliver@#as': (m.Scope scope, target)=>()=>target as RenderSliver,
'package:flutter/src/rendering/sliver.dart@RenderSliver@#is': (m.Scope scope, target)=>()=>target is RenderSliver,
'package:flutter/src/rendering/sliver.dart@RenderSliver@constraints': (m.Scope scope, RenderSliver target)=>target.constraints,
'package:flutter/src/rendering/sliver.dart@RenderSliver@geometry': (m.Scope scope, RenderSliver target)=>target.geometry,
'package:flutter/src/rendering/sliver.dart@RenderSliver@geometry:set': (m.Scope scope, RenderSliver target)=>(other)=>target.geometry=other,
'package:flutter/src/rendering/sliver.dart@RenderSliver@semanticBounds': (m.Scope scope, RenderSliver target)=>target.semanticBounds,
'package:flutter/src/rendering/sliver.dart@RenderSliver@paintBounds': (m.Scope scope, RenderSliver target)=>target.paintBounds,
'package:flutter/src/rendering/sliver.dart@RenderSliver@centerOffsetAdjustment': (m.Scope scope, RenderSliver target)=>target.centerOffsetAdjustment,
'package:flutter/src/rendering/sliver.dart@RenderSliver@debugResetSize': (m.Scope scope, RenderSliver target)=>target.debugResetSize,
'package:flutter/src/rendering/sliver.dart@RenderSliver@debugAssertDoesMeetConstraints': (m.Scope scope, RenderSliver target)=>target.debugAssertDoesMeetConstraints,
'package:flutter/src/rendering/sliver.dart@RenderSliver@performResize': (m.Scope scope, RenderSliver target)=>target.performResize,
'package:flutter/src/rendering/sliver.dart@RenderSliver@hitTest': (m.Scope scope, RenderSliver target)=>target.hitTest,
'package:flutter/src/rendering/sliver.dart@RenderSliver@hitTestSelf': (m.Scope scope, RenderSliver target)=>target.hitTestSelf,
'package:flutter/src/rendering/sliver.dart@RenderSliver@hitTestChildren': (m.Scope scope, RenderSliver target)=>target.hitTestChildren,
'package:flutter/src/rendering/sliver.dart@RenderSliver@calculatePaintOffset': (m.Scope scope, RenderSliver target)=>target.calculatePaintOffset,
'package:flutter/src/rendering/sliver.dart@RenderSliver@calculateCacheOffset': (m.Scope scope, RenderSliver target)=>target.calculateCacheOffset,
'package:flutter/src/rendering/sliver.dart@RenderSliver@childMainAxisPosition': (m.Scope scope, RenderSliver target)=>target.childMainAxisPosition,
'package:flutter/src/rendering/sliver.dart@RenderSliver@childCrossAxisPosition': (m.Scope scope, RenderSliver target)=>target.childCrossAxisPosition,
'package:flutter/src/rendering/sliver.dart@RenderSliver@childScrollOffset': (m.Scope scope, RenderSliver target)=>target.childScrollOffset,
'package:flutter/src/rendering/sliver.dart@RenderSliver@applyPaintTransform': (m.Scope scope, RenderSliver target)=>target.applyPaintTransform,
'package:flutter/src/rendering/sliver.dart@RenderSliver@getAbsoluteSizeRelativeToOrigin': (m.Scope scope, RenderSliver target)=>target.getAbsoluteSizeRelativeToOrigin,
'package:flutter/src/rendering/sliver.dart@RenderSliver@getAbsoluteSize': (m.Scope scope, RenderSliver target)=>target.getAbsoluteSize,
'package:flutter/src/rendering/sliver.dart@RenderSliver@debugPaint': (m.Scope scope, RenderSliver target)=>target.debugPaint,
'package:flutter/src/rendering/sliver.dart@RenderSliver@handleEvent': (m.Scope scope, RenderSliver target)=>target.handleEvent,
'package:flutter/src/rendering/sliver.dart@RenderSliver@debugFillProperties': (m.Scope scope, RenderSliver target)=>target.debugFillProperties,
'package:flutter/src/rendering/sliver.dart@RenderSliverSingleBoxAdapter@#as': (m.Scope scope, target)=>()=>target as RenderSliverSingleBoxAdapter,
'package:flutter/src/rendering/sliver.dart@RenderSliverSingleBoxAdapter@#is': (m.Scope scope, target)=>()=>target is RenderSliverSingleBoxAdapter,
'package:flutter/src/rendering/sliver.dart@RenderSliverSingleBoxAdapter@setupParentData': (m.Scope scope, RenderSliverSingleBoxAdapter target)=>target.setupParentData,
'package:flutter/src/rendering/sliver.dart@RenderSliverSingleBoxAdapter@setChildParentData': (m.Scope scope, RenderSliverSingleBoxAdapter target)=>target.setChildParentData,
'package:flutter/src/rendering/sliver.dart@RenderSliverSingleBoxAdapter@hitTestChildren': (m.Scope scope, RenderSliverSingleBoxAdapter target)=>target.hitTestChildren,
'package:flutter/src/rendering/sliver.dart@RenderSliverSingleBoxAdapter@childMainAxisPosition': (m.Scope scope, RenderSliverSingleBoxAdapter target)=>target.childMainAxisPosition,
'package:flutter/src/rendering/sliver.dart@RenderSliverSingleBoxAdapter@applyPaintTransform': (m.Scope scope, RenderSliverSingleBoxAdapter target)=>target.applyPaintTransform,
'package:flutter/src/rendering/sliver.dart@RenderSliverSingleBoxAdapter@paint': (m.Scope scope, RenderSliverSingleBoxAdapter target)=>target.paint,
'package:flutter/src/rendering/sliver.dart@RenderSliverToBoxAdapter@#as': (m.Scope scope, target)=>()=>target as RenderSliverToBoxAdapter,
'package:flutter/src/rendering/sliver.dart@RenderSliverToBoxAdapter@#is': (m.Scope scope, target)=>()=>target is RenderSliverToBoxAdapter,
'package:flutter/src/rendering/sliver.dart@RenderSliverToBoxAdapter@': (m.Scope scope)=>({ child}){
return RenderSliverToBoxAdapter(child:child);
},
'package:flutter/src/rendering/sliver.dart@RenderSliverToBoxAdapter@performLayout': (m.Scope scope, RenderSliverToBoxAdapter target)=>target.performLayout,
'package:flutter/src/rendering/sliver.dart@@applyGrowthDirectionToAxisDirection': (m.Scope scope)=>applyGrowthDirectionToAxisDirection,
'package:flutter/src/rendering/sliver.dart@@applyGrowthDirectionToScrollDirection': (m.Scope scope)=>applyGrowthDirectionToScrollDirection,

};
}