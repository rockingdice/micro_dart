import 'package:flutter/src/rendering/box.dart';
import 'dart:developer' show Timeline;
import 'dart:math';
import 'dart:ui' show lerpDouble;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/box.dart@BoxConstraints@#as': (m.Scope scope, target)=>()=>target as BoxConstraints,
'package:flutter/src/rendering/box.dart@BoxConstraints@#is': (m.Scope scope, target)=>()=>target is BoxConstraints,
'package:flutter/src/rendering/box.dart@BoxConstraints@minWidth': (m.Scope scope, BoxConstraints target)=>target.minWidth,
'package:flutter/src/rendering/box.dart@BoxConstraints@maxWidth': (m.Scope scope, BoxConstraints target)=>target.maxWidth,
'package:flutter/src/rendering/box.dart@BoxConstraints@minHeight': (m.Scope scope, BoxConstraints target)=>target.minHeight,
'package:flutter/src/rendering/box.dart@BoxConstraints@maxHeight': (m.Scope scope, BoxConstraints target)=>target.maxHeight,
'package:flutter/src/rendering/box.dart@BoxConstraints@flipped': (m.Scope scope, BoxConstraints target)=>target.flipped,
'package:flutter/src/rendering/box.dart@BoxConstraints@biggest': (m.Scope scope, BoxConstraints target)=>target.biggest,
'package:flutter/src/rendering/box.dart@BoxConstraints@smallest': (m.Scope scope, BoxConstraints target)=>target.smallest,
'package:flutter/src/rendering/box.dart@BoxConstraints@hasTightWidth': (m.Scope scope, BoxConstraints target)=>target.hasTightWidth,
'package:flutter/src/rendering/box.dart@BoxConstraints@hasTightHeight': (m.Scope scope, BoxConstraints target)=>target.hasTightHeight,
'package:flutter/src/rendering/box.dart@BoxConstraints@isTight': (m.Scope scope, BoxConstraints target)=>target.isTight,
'package:flutter/src/rendering/box.dart@BoxConstraints@hasBoundedWidth': (m.Scope scope, BoxConstraints target)=>target.hasBoundedWidth,
'package:flutter/src/rendering/box.dart@BoxConstraints@hasBoundedHeight': (m.Scope scope, BoxConstraints target)=>target.hasBoundedHeight,
'package:flutter/src/rendering/box.dart@BoxConstraints@hasInfiniteWidth': (m.Scope scope, BoxConstraints target)=>target.hasInfiniteWidth,
'package:flutter/src/rendering/box.dart@BoxConstraints@hasInfiniteHeight': (m.Scope scope, BoxConstraints target)=>target.hasInfiniteHeight,
'package:flutter/src/rendering/box.dart@BoxConstraints@isNormalized': (m.Scope scope, BoxConstraints target)=>target.isNormalized,
'package:flutter/src/rendering/box.dart@BoxConstraints@hashCode': (m.Scope scope, BoxConstraints target)=>target.hashCode,
'package:flutter/src/rendering/box.dart@BoxConstraints@': (m.Scope scope)=>({ maxHeight,  maxWidth,  minHeight,  minWidth}){
return BoxConstraints(maxHeight:maxHeight ?? double.infinity, maxWidth:maxWidth ?? double.infinity, minHeight:minHeight ?? 0.0, minWidth:minWidth ?? 0.0);
},
'package:flutter/src/rendering/box.dart@BoxConstraints@tight': (m.Scope scope)=>BoxConstraints.tight,
'package:flutter/src/rendering/box.dart@BoxConstraints@tightFor': (m.Scope scope)=>BoxConstraints.tightFor,
'package:flutter/src/rendering/box.dart@BoxConstraints@tightForFinite': (m.Scope scope)=>BoxConstraints.tightForFinite,
'package:flutter/src/rendering/box.dart@BoxConstraints@loose': (m.Scope scope)=>BoxConstraints.loose,
'package:flutter/src/rendering/box.dart@BoxConstraints@expand': (m.Scope scope)=>BoxConstraints.expand,
'package:flutter/src/rendering/box.dart@BoxConstraints@copyWith': (m.Scope scope, BoxConstraints target)=>target.copyWith,
'package:flutter/src/rendering/box.dart@BoxConstraints@deflate': (m.Scope scope, BoxConstraints target)=>target.deflate,
'package:flutter/src/rendering/box.dart@BoxConstraints@loosen': (m.Scope scope, BoxConstraints target)=>target.loosen,
'package:flutter/src/rendering/box.dart@BoxConstraints@enforce': (m.Scope scope, BoxConstraints target)=>target.enforce,
'package:flutter/src/rendering/box.dart@BoxConstraints@tighten': (m.Scope scope, BoxConstraints target)=>target.tighten,
'package:flutter/src/rendering/box.dart@BoxConstraints@widthConstraints': (m.Scope scope, BoxConstraints target)=>target.widthConstraints,
'package:flutter/src/rendering/box.dart@BoxConstraints@heightConstraints': (m.Scope scope, BoxConstraints target)=>target.heightConstraints,
'package:flutter/src/rendering/box.dart@BoxConstraints@constrainWidth': (m.Scope scope, BoxConstraints target)=>target.constrainWidth,
'package:flutter/src/rendering/box.dart@BoxConstraints@constrainHeight': (m.Scope scope, BoxConstraints target)=>target.constrainHeight,
'package:flutter/src/rendering/box.dart@BoxConstraints@constrain': (m.Scope scope, BoxConstraints target)=>target.constrain,
'package:flutter/src/rendering/box.dart@BoxConstraints@constrainDimensions': (m.Scope scope, BoxConstraints target)=>target.constrainDimensions,
'package:flutter/src/rendering/box.dart@BoxConstraints@constrainSizeAndAttemptToPreserveAspectRatio': (m.Scope scope, BoxConstraints target)=>target.constrainSizeAndAttemptToPreserveAspectRatio,
'package:flutter/src/rendering/box.dart@BoxConstraints@isSatisfiedBy': (m.Scope scope, BoxConstraints target)=>target.isSatisfiedBy,
'package:flutter/src/rendering/box.dart@BoxConstraints@*': (m.Scope scope, BoxConstraints target)=>(other)=> target * other,
'package:flutter/src/rendering/box.dart@BoxConstraints@/': (m.Scope scope, BoxConstraints target)=>(other)=> target / other,
'package:flutter/src/rendering/box.dart@BoxConstraints@~/': (m.Scope scope, BoxConstraints target)=>(other)=> target ~/ other,
'package:flutter/src/rendering/box.dart@BoxConstraints@%': (m.Scope scope, BoxConstraints target)=>(other)=> target % other,
'package:flutter/src/rendering/box.dart@BoxConstraints@lerp': (m.Scope scope)=>BoxConstraints.lerp,
'package:flutter/src/rendering/box.dart@BoxConstraints@debugAssertIsValid': (m.Scope scope, BoxConstraints target)=>({ informationCollector,  isAppliedConstraint}){
Iterable<DiagnosticsNode> informationCollectorProxy() {
return  engine.callFunctionPointer(scope, informationCollector!,[], {});
}

return target.debugAssertIsValid(informationCollector:informationCollector == null ? null :informationCollectorProxy, isAppliedConstraint:isAppliedConstraint ?? false);
},
'package:flutter/src/rendering/box.dart@BoxConstraints@normalize': (m.Scope scope, BoxConstraints target)=>target.normalize,
'package:flutter/src/rendering/box.dart@BoxConstraints@==': (m.Scope scope, BoxConstraints target)=>(other)=> target == other,
'package:flutter/src/rendering/box.dart@BoxConstraints@toString': (m.Scope scope, BoxConstraints target)=>target.toString,
'package:flutter/src/rendering/box.dart@BoxHitTestResult@#as': (m.Scope scope, target)=>()=>target as BoxHitTestResult,
'package:flutter/src/rendering/box.dart@BoxHitTestResult@#is': (m.Scope scope, target)=>()=>target is BoxHitTestResult,
'package:flutter/src/rendering/box.dart@BoxHitTestResult@': (m.Scope scope)=>(){
return BoxHitTestResult();
},
'package:flutter/src/rendering/box.dart@BoxHitTestResult@wrap': (m.Scope scope)=>BoxHitTestResult.wrap,
'package:flutter/src/rendering/box.dart@BoxHitTestResult@addWithPaintTransform': (m.Scope scope, BoxHitTestResult target)=>({ hitTest,  position,  transform}){
bool hitTestProxy( result,  position) {
return  engine.callFunctionPointer(scope, hitTest!,[result, position], {});
}

return target.addWithPaintTransform(hitTest:hitTestProxy, position:position, transform:transform);
},
'package:flutter/src/rendering/box.dart@BoxHitTestResult@addWithPaintOffset': (m.Scope scope, BoxHitTestResult target)=>({ hitTest,  offset,  position}){
bool hitTestProxy( result,  position) {
return  engine.callFunctionPointer(scope, hitTest!,[result, position], {});
}

return target.addWithPaintOffset(hitTest:hitTestProxy, offset:offset, position:position);
},
'package:flutter/src/rendering/box.dart@BoxHitTestResult@addWithRawTransform': (m.Scope scope, BoxHitTestResult target)=>({ hitTest,  position,  transform}){
bool hitTestProxy( result,  position) {
return  engine.callFunctionPointer(scope, hitTest!,[result, position], {});
}

return target.addWithRawTransform(hitTest:hitTestProxy, position:position, transform:transform);
},
'package:flutter/src/rendering/box.dart@BoxHitTestResult@addWithOutOfBandPosition': (m.Scope scope, BoxHitTestResult target)=>({ hitTest,  paintOffset,  paintTransform,  rawTransform}){
bool hitTestProxy( result) {
return  engine.callFunctionPointer(scope, hitTest!,[result], {});
}

return target.addWithOutOfBandPosition(hitTest:hitTestProxy, paintOffset:paintOffset, paintTransform:paintTransform, rawTransform:rawTransform);
},
'package:flutter/src/rendering/box.dart@BoxHitTestEntry@#as': (m.Scope scope, target)=>()=>target as BoxHitTestEntry,
'package:flutter/src/rendering/box.dart@BoxHitTestEntry@#is': (m.Scope scope, target)=>()=>target is BoxHitTestEntry,
'package:flutter/src/rendering/box.dart@BoxHitTestEntry@localPosition': (m.Scope scope, BoxHitTestEntry target)=>target.localPosition,
'package:flutter/src/rendering/box.dart@BoxHitTestEntry@': (m.Scope scope)=>BoxHitTestEntry,
'package:flutter/src/rendering/box.dart@BoxHitTestEntry@toString': (m.Scope scope, BoxHitTestEntry target)=>target.toString,
'package:flutter/src/rendering/box.dart@BoxParentData@#as': (m.Scope scope, target)=>()=>target as BoxParentData,
'package:flutter/src/rendering/box.dart@BoxParentData@#is': (m.Scope scope, target)=>()=>target is BoxParentData,
'package:flutter/src/rendering/box.dart@BoxParentData@offset': (m.Scope scope, BoxParentData target)=>target.offset,
'package:flutter/src/rendering/box.dart@BoxParentData@offset:set': (m.Scope scope, BoxParentData target)=>(other)=>target.offset=other,
'package:flutter/src/rendering/box.dart@BoxParentData@': (m.Scope scope)=>(){
return BoxParentData();
},
'package:flutter/src/rendering/box.dart@BoxParentData@toString': (m.Scope scope, BoxParentData target)=>target.toString,
'package:flutter/src/rendering/box.dart@ContainerBoxParentData@#as': (m.Scope scope, target)=>()=>target as ContainerBoxParentData,
'package:flutter/src/rendering/box.dart@ContainerBoxParentData@#is': (m.Scope scope, target)=>()=>target is ContainerBoxParentData,
'package:flutter/src/rendering/box.dart@RenderBox@#as': (m.Scope scope, target)=>()=>target as RenderBox,
'package:flutter/src/rendering/box.dart@RenderBox@#is': (m.Scope scope, target)=>()=>target is RenderBox,
'package:flutter/src/rendering/box.dart@RenderBox@hasSize': (m.Scope scope, RenderBox target)=>target.hasSize,
'package:flutter/src/rendering/box.dart@RenderBox@size': (m.Scope scope, RenderBox target)=>target.size,
'package:flutter/src/rendering/box.dart@RenderBox@size:set': (m.Scope scope, RenderBox target)=>(other)=>target.size=other,
'package:flutter/src/rendering/box.dart@RenderBox@semanticBounds': (m.Scope scope, RenderBox target)=>target.semanticBounds,
'package:flutter/src/rendering/box.dart@RenderBox@constraints': (m.Scope scope, RenderBox target)=>target.constraints,
'package:flutter/src/rendering/box.dart@RenderBox@paintBounds': (m.Scope scope, RenderBox target)=>target.paintBounds,
'package:flutter/src/rendering/box.dart@RenderBox@setupParentData': (m.Scope scope, RenderBox target)=>target.setupParentData,
'package:flutter/src/rendering/box.dart@RenderBox@getMinIntrinsicWidth': (m.Scope scope, RenderBox target)=>target.getMinIntrinsicWidth,
'package:flutter/src/rendering/box.dart@RenderBox@computeMinIntrinsicWidth': (m.Scope scope, RenderBox target)=>target.computeMinIntrinsicWidth,
'package:flutter/src/rendering/box.dart@RenderBox@getMaxIntrinsicWidth': (m.Scope scope, RenderBox target)=>target.getMaxIntrinsicWidth,
'package:flutter/src/rendering/box.dart@RenderBox@computeMaxIntrinsicWidth': (m.Scope scope, RenderBox target)=>target.computeMaxIntrinsicWidth,
'package:flutter/src/rendering/box.dart@RenderBox@getMinIntrinsicHeight': (m.Scope scope, RenderBox target)=>target.getMinIntrinsicHeight,
'package:flutter/src/rendering/box.dart@RenderBox@computeMinIntrinsicHeight': (m.Scope scope, RenderBox target)=>target.computeMinIntrinsicHeight,
'package:flutter/src/rendering/box.dart@RenderBox@getMaxIntrinsicHeight': (m.Scope scope, RenderBox target)=>target.getMaxIntrinsicHeight,
'package:flutter/src/rendering/box.dart@RenderBox@computeMaxIntrinsicHeight': (m.Scope scope, RenderBox target)=>target.computeMaxIntrinsicHeight,
'package:flutter/src/rendering/box.dart@RenderBox@getDryLayout': (m.Scope scope, RenderBox target)=>target.getDryLayout,
'package:flutter/src/rendering/box.dart@RenderBox@computeDryLayout': (m.Scope scope, RenderBox target)=>target.computeDryLayout,
'package:flutter/src/rendering/box.dart@RenderBox@debugCannotComputeDryLayout': (m.Scope scope, RenderBox target)=>target.debugCannotComputeDryLayout,
'package:flutter/src/rendering/box.dart@RenderBox@debugAdoptSize': (m.Scope scope, RenderBox target)=>target.debugAdoptSize,
'package:flutter/src/rendering/box.dart@RenderBox@debugResetSize': (m.Scope scope, RenderBox target)=>target.debugResetSize,
'package:flutter/src/rendering/box.dart@RenderBox@getDistanceToBaseline': (m.Scope scope, RenderBox target)=>target.getDistanceToBaseline,
'package:flutter/src/rendering/box.dart@RenderBox@getDistanceToActualBaseline': (m.Scope scope, RenderBox target)=>target.getDistanceToActualBaseline,
'package:flutter/src/rendering/box.dart@RenderBox@computeDistanceToActualBaseline': (m.Scope scope, RenderBox target)=>target.computeDistanceToActualBaseline,
'package:flutter/src/rendering/box.dart@RenderBox@debugAssertDoesMeetConstraints': (m.Scope scope, RenderBox target)=>target.debugAssertDoesMeetConstraints,
'package:flutter/src/rendering/box.dart@RenderBox@markNeedsLayout': (m.Scope scope, RenderBox target)=>target.markNeedsLayout,
'package:flutter/src/rendering/box.dart@RenderBox@layout': (m.Scope scope, RenderBox target)=>target.layout,
'package:flutter/src/rendering/box.dart@RenderBox@performResize': (m.Scope scope, RenderBox target)=>target.performResize,
'package:flutter/src/rendering/box.dart@RenderBox@performLayout': (m.Scope scope, RenderBox target)=>target.performLayout,
'package:flutter/src/rendering/box.dart@RenderBox@hitTest': (m.Scope scope, RenderBox target)=>target.hitTest,
'package:flutter/src/rendering/box.dart@RenderBox@hitTestSelf': (m.Scope scope, RenderBox target)=>target.hitTestSelf,
'package:flutter/src/rendering/box.dart@RenderBox@hitTestChildren': (m.Scope scope, RenderBox target)=>target.hitTestChildren,
'package:flutter/src/rendering/box.dart@RenderBox@applyPaintTransform': (m.Scope scope, RenderBox target)=>target.applyPaintTransform,
'package:flutter/src/rendering/box.dart@RenderBox@globalToLocal': (m.Scope scope, RenderBox target)=>target.globalToLocal,
'package:flutter/src/rendering/box.dart@RenderBox@localToGlobal': (m.Scope scope, RenderBox target)=>target.localToGlobal,
'package:flutter/src/rendering/box.dart@RenderBox@handleEvent': (m.Scope scope, RenderBox target)=>target.handleEvent,
'package:flutter/src/rendering/box.dart@RenderBox@debugHandleEvent': (m.Scope scope, RenderBox target)=>target.debugHandleEvent,
'package:flutter/src/rendering/box.dart@RenderBox@debugPaint': (m.Scope scope, RenderBox target)=>target.debugPaint,
'package:flutter/src/rendering/box.dart@RenderBox@debugPaintSize': (m.Scope scope, RenderBox target)=>target.debugPaintSize,
'package:flutter/src/rendering/box.dart@RenderBox@debugPaintBaselines': (m.Scope scope, RenderBox target)=>target.debugPaintBaselines,
'package:flutter/src/rendering/box.dart@RenderBox@debugPaintPointers': (m.Scope scope, RenderBox target)=>target.debugPaintPointers,
'package:flutter/src/rendering/box.dart@RenderBox@debugFillProperties': (m.Scope scope, RenderBox target)=>target.debugFillProperties,

};
}