import 'package:flutter/src/rendering/object.dart';
import 'dart:developer';
import 'dart:ui' show PictureRecorder;
import 'dart:ui';
import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/src/rendering/debug.dart';
import 'package:flutter/src/rendering/layer.dart';
import 'package:flutter/src/rendering/proxy_box.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/object.dart@ParentData@#as': (m.Scope scope, target)=>()=>target as ParentData,
'package:flutter/src/rendering/object.dart@ParentData@#is': (m.Scope scope, target)=>()=>target is ParentData,
'package:flutter/src/rendering/object.dart@ParentData@': (m.Scope scope)=>(){
return ParentData();
},
'package:flutter/src/rendering/object.dart@ParentData@detach': (m.Scope scope, ParentData target)=>target.detach,
'package:flutter/src/rendering/object.dart@ParentData@toString': (m.Scope scope, ParentData target)=>target.toString,
'package:flutter/src/rendering/object.dart@PaintingContext@#as': (m.Scope scope, target)=>()=>target as PaintingContext,
'package:flutter/src/rendering/object.dart@PaintingContext@#is': (m.Scope scope, target)=>()=>target is PaintingContext,
'package:flutter/src/rendering/object.dart@PaintingContext@estimatedBounds': (m.Scope scope, PaintingContext target)=>target.estimatedBounds,
'package:flutter/src/rendering/object.dart@PaintingContext@canvas': (m.Scope scope, PaintingContext target)=>target.canvas,
'package:flutter/src/rendering/object.dart@PaintingContext@': (m.Scope scope)=>( _containerLayer,  estimatedBounds){
return PaintingContext(_containerLayer, estimatedBounds);
},
'package:flutter/src/rendering/object.dart@PaintingContext@repaintCompositedChild': (m.Scope scope)=>PaintingContext.repaintCompositedChild,
'package:flutter/src/rendering/object.dart@PaintingContext@updateLayerProperties': (m.Scope scope)=>PaintingContext.updateLayerProperties,
'package:flutter/src/rendering/object.dart@PaintingContext@debugInstrumentRepaintCompositedChild': (m.Scope scope)=>PaintingContext.debugInstrumentRepaintCompositedChild,
'package:flutter/src/rendering/object.dart@PaintingContext@paintChild': (m.Scope scope, PaintingContext target)=>target.paintChild,
'package:flutter/src/rendering/object.dart@PaintingContext@appendLayer': (m.Scope scope, PaintingContext target)=>target.appendLayer,
'package:flutter/src/rendering/object.dart@PaintingContext@addCompositionCallback': (m.Scope scope, PaintingContext target)=>( callback){
void callbackProxy( $p0) {
 engine.callFunctionPointer(scope, callback!,[$p0], {});
}

return target.addCompositionCallback(callbackProxy);
},
'package:flutter/src/rendering/object.dart@PaintingContext@stopRecordingIfNeeded': (m.Scope scope, PaintingContext target)=>target.stopRecordingIfNeeded,
'package:flutter/src/rendering/object.dart@PaintingContext@setIsComplexHint': (m.Scope scope, PaintingContext target)=>target.setIsComplexHint,
'package:flutter/src/rendering/object.dart@PaintingContext@setWillChangeHint': (m.Scope scope, PaintingContext target)=>target.setWillChangeHint,
'package:flutter/src/rendering/object.dart@PaintingContext@addLayer': (m.Scope scope, PaintingContext target)=>target.addLayer,
'package:flutter/src/rendering/object.dart@PaintingContext@pushLayer': (m.Scope scope, PaintingContext target)=>( childLayer,  painter,  offset, { childPaintBounds}){
void painterProxy( context,  offset) {
 engine.callFunctionPointer(scope, painter!,[context, offset], {});
}

target.pushLayer(childLayer, painterProxy, offset, childPaintBounds:childPaintBounds);
},
'package:flutter/src/rendering/object.dart@PaintingContext@createChildContext': (m.Scope scope, PaintingContext target)=>target.createChildContext,
'package:flutter/src/rendering/object.dart@PaintingContext@pushClipRect': (m.Scope scope, PaintingContext target)=>( needsCompositing,  offset,  clipRect,  painter, { clipBehavior,  oldLayer}){
void painterProxy( context,  offset) {
 engine.callFunctionPointer(scope, painter!,[context, offset], {});
}

return target.pushClipRect(needsCompositing, offset, clipRect, painterProxy, clipBehavior:clipBehavior ?? Clip.hardEdge, oldLayer:oldLayer);
},
'package:flutter/src/rendering/object.dart@PaintingContext@pushClipRRect': (m.Scope scope, PaintingContext target)=>( needsCompositing,  offset,  bounds,  clipRRect,  painter, { clipBehavior,  oldLayer}){
void painterProxy( context,  offset) {
 engine.callFunctionPointer(scope, painter!,[context, offset], {});
}

return target.pushClipRRect(needsCompositing, offset, bounds, clipRRect, painterProxy, clipBehavior:clipBehavior ?? Clip.antiAlias, oldLayer:oldLayer);
},
'package:flutter/src/rendering/object.dart@PaintingContext@pushClipPath': (m.Scope scope, PaintingContext target)=>( needsCompositing,  offset,  bounds,  clipPath,  painter, { clipBehavior,  oldLayer}){
void painterProxy( context,  offset) {
 engine.callFunctionPointer(scope, painter!,[context, offset], {});
}

return target.pushClipPath(needsCompositing, offset, bounds, clipPath, painterProxy, clipBehavior:clipBehavior ?? Clip.antiAlias, oldLayer:oldLayer);
},
'package:flutter/src/rendering/object.dart@PaintingContext@pushColorFilter': (m.Scope scope, PaintingContext target)=>( offset,  colorFilter,  painter, { oldLayer}){
void painterProxy( context,  offset) {
 engine.callFunctionPointer(scope, painter!,[context, offset], {});
}

return target.pushColorFilter(offset, colorFilter, painterProxy, oldLayer:oldLayer);
},
'package:flutter/src/rendering/object.dart@PaintingContext@pushTransform': (m.Scope scope, PaintingContext target)=>( needsCompositing,  offset,  transform,  painter, { oldLayer}){
void painterProxy( context,  offset) {
 engine.callFunctionPointer(scope, painter!,[context, offset], {});
}

return target.pushTransform(needsCompositing, offset, transform, painterProxy, oldLayer:oldLayer);
},
'package:flutter/src/rendering/object.dart@PaintingContext@pushOpacity': (m.Scope scope, PaintingContext target)=>( offset,  alpha,  painter, { oldLayer}){
void painterProxy( context,  offset) {
 engine.callFunctionPointer(scope, painter!,[context, offset], {});
}

return target.pushOpacity(offset, alpha, painterProxy, oldLayer:oldLayer);
},
'package:flutter/src/rendering/object.dart@PaintingContext@toString': (m.Scope scope, PaintingContext target)=>target.toString,
'package:flutter/src/rendering/object.dart@Constraints@#as': (m.Scope scope, target)=>()=>target as Constraints,
'package:flutter/src/rendering/object.dart@Constraints@#is': (m.Scope scope, target)=>()=>target is Constraints,
'package:flutter/src/rendering/object.dart@Constraints@isTight': (m.Scope scope, Constraints target)=>target.isTight,
'package:flutter/src/rendering/object.dart@Constraints@isNormalized': (m.Scope scope, Constraints target)=>target.isNormalized,
'package:flutter/src/rendering/object.dart@Constraints@debugAssertIsValid': (m.Scope scope, Constraints target)=>({ informationCollector,  isAppliedConstraint}){
Iterable<DiagnosticsNode> informationCollectorProxy() {
return  engine.callFunctionPointer(scope, informationCollector!,[], {});
}

return target.debugAssertIsValid(informationCollector:informationCollector == null ? null :informationCollectorProxy, isAppliedConstraint:isAppliedConstraint ?? false);
},
'package:flutter/src/rendering/object.dart@PipelineOwner@#as': (m.Scope scope, target)=>()=>target as PipelineOwner,
'package:flutter/src/rendering/object.dart@PipelineOwner@#is': (m.Scope scope, target)=>()=>target is PipelineOwner,
'package:flutter/src/rendering/object.dart@PipelineOwner@onNeedVisualUpdate': (m.Scope scope, PipelineOwner target)=>target.onNeedVisualUpdate,
'package:flutter/src/rendering/object.dart@PipelineOwner@onSemanticsOwnerCreated': (m.Scope scope, PipelineOwner target)=>target.onSemanticsOwnerCreated,
'package:flutter/src/rendering/object.dart@PipelineOwner@onSemanticsUpdate': (m.Scope scope, PipelineOwner target)=>target.onSemanticsUpdate,
'package:flutter/src/rendering/object.dart@PipelineOwner@onSemanticsOwnerDisposed': (m.Scope scope, PipelineOwner target)=>target.onSemanticsOwnerDisposed,
'package:flutter/src/rendering/object.dart@PipelineOwner@rootNode': (m.Scope scope, PipelineOwner target)=>target.rootNode,
'package:flutter/src/rendering/object.dart@PipelineOwner@rootNode:set': (m.Scope scope, PipelineOwner target)=>(other)=>target.rootNode=other,
'package:flutter/src/rendering/object.dart@PipelineOwner@debugDoingLayout': (m.Scope scope, PipelineOwner target)=>target.debugDoingLayout,
'package:flutter/src/rendering/object.dart@PipelineOwner@debugDoingPaint': (m.Scope scope, PipelineOwner target)=>target.debugDoingPaint,
'package:flutter/src/rendering/object.dart@PipelineOwner@semanticsOwner': (m.Scope scope, PipelineOwner target)=>target.semanticsOwner,
'package:flutter/src/rendering/object.dart@PipelineOwner@debugOutstandingSemanticsHandles': (m.Scope scope, PipelineOwner target)=>target.debugOutstandingSemanticsHandles,
'package:flutter/src/rendering/object.dart@PipelineOwner@': (m.Scope scope)=>({ onNeedVisualUpdate,  onSemanticsOwnerCreated,  onSemanticsOwnerDisposed,  onSemanticsUpdate}){
void onNeedVisualUpdateProxy() {
 engine.callFunctionPointer(scope, onNeedVisualUpdate!,[], {});
}

void onSemanticsOwnerCreatedProxy() {
 engine.callFunctionPointer(scope, onSemanticsOwnerCreated!,[], {});
}

void onSemanticsOwnerDisposedProxy() {
 engine.callFunctionPointer(scope, onSemanticsOwnerDisposed!,[], {});
}

void onSemanticsUpdateProxy( update) {
 engine.callFunctionPointer(scope, onSemanticsUpdate!,[update], {});
}

return PipelineOwner(onNeedVisualUpdate:onNeedVisualUpdate == null ? null :onNeedVisualUpdateProxy, onSemanticsOwnerCreated:onSemanticsOwnerCreated == null ? null :onSemanticsOwnerCreatedProxy, onSemanticsOwnerDisposed:onSemanticsOwnerDisposed == null ? null :onSemanticsOwnerDisposedProxy, onSemanticsUpdate:onSemanticsUpdate == null ? null :onSemanticsUpdateProxy);
},
'package:flutter/src/rendering/object.dart@PipelineOwner@requestVisualUpdate': (m.Scope scope, PipelineOwner target)=>target.requestVisualUpdate,
'package:flutter/src/rendering/object.dart@PipelineOwner@flushLayout': (m.Scope scope, PipelineOwner target)=>target.flushLayout,
'package:flutter/src/rendering/object.dart@PipelineOwner@flushCompositingBits': (m.Scope scope, PipelineOwner target)=>target.flushCompositingBits,
'package:flutter/src/rendering/object.dart@PipelineOwner@flushPaint': (m.Scope scope, PipelineOwner target)=>target.flushPaint,
'package:flutter/src/rendering/object.dart@PipelineOwner@ensureSemantics': (m.Scope scope, PipelineOwner target)=>({ listener}){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

return target.ensureSemantics(listener:listener == null ? null :listenerProxy);
},
'package:flutter/src/rendering/object.dart@PipelineOwner@flushSemantics': (m.Scope scope, PipelineOwner target)=>target.flushSemantics,
'package:flutter/src/rendering/object.dart@PipelineOwner@attach': (m.Scope scope, PipelineOwner target)=>target.attach,
'package:flutter/src/rendering/object.dart@PipelineOwner@detach': (m.Scope scope, PipelineOwner target)=>target.detach,
'package:flutter/src/rendering/object.dart@PipelineOwner@adoptChild': (m.Scope scope, PipelineOwner target)=>target.adoptChild,
'package:flutter/src/rendering/object.dart@PipelineOwner@dropChild': (m.Scope scope, PipelineOwner target)=>target.dropChild,
'package:flutter/src/rendering/object.dart@PipelineOwner@visitChildren': (m.Scope scope, PipelineOwner target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildren(visitorProxy);
},
'package:flutter/src/rendering/object.dart@PipelineManifold@#as': (m.Scope scope, target)=>()=>target as PipelineManifold,
'package:flutter/src/rendering/object.dart@PipelineManifold@#is': (m.Scope scope, target)=>()=>target is PipelineManifold,
'package:flutter/src/rendering/object.dart@PipelineManifold@semanticsEnabled': (m.Scope scope, PipelineManifold target)=>target.semanticsEnabled,
'package:flutter/src/rendering/object.dart@PipelineManifold@requestVisualUpdate': (m.Scope scope, PipelineManifold target)=>target.requestVisualUpdate,
'package:flutter/src/rendering/object.dart@RenderObject@#as': (m.Scope scope, target)=>()=>target as RenderObject,
'package:flutter/src/rendering/object.dart@RenderObject@#is': (m.Scope scope, target)=>()=>target is RenderObject,
'package:flutter/src/rendering/object.dart@RenderObject@parentData': (m.Scope scope, RenderObject target)=>target.parentData,
'package:flutter/src/rendering/object.dart@RenderObject@parentData:set': (m.Scope scope, RenderObject target)=>(other)=>target.parentData=other,
'package:flutter/src/rendering/object.dart@RenderObject@debugCreator': (m.Scope scope, RenderObject target)=>target.debugCreator,
'package:flutter/src/rendering/object.dart@RenderObject@debugCreator:set': (m.Scope scope, RenderObject target)=>(other)=>target.debugCreator=other,
'package:flutter/src/rendering/object.dart@RenderObject@debugCheckingIntrinsics': (m.Scope scope)=>RenderObject.debugCheckingIntrinsics,
'package:flutter/src/rendering/object.dart@RenderObject@debugCheckingIntrinsics:set': (m.Scope scope)=>(other)=>RenderObject.debugCheckingIntrinsics=other,
'package:flutter/src/rendering/object.dart@RenderObject@debugDisposed': (m.Scope scope, RenderObject target)=>target.debugDisposed,
'package:flutter/src/rendering/object.dart@RenderObject@debugDoingThisResize': (m.Scope scope, RenderObject target)=>target.debugDoingThisResize,
'package:flutter/src/rendering/object.dart@RenderObject@debugDoingThisLayout': (m.Scope scope, RenderObject target)=>target.debugDoingThisLayout,
'package:flutter/src/rendering/object.dart@RenderObject@debugActiveLayout': (m.Scope scope)=>RenderObject.debugActiveLayout,
'package:flutter/src/rendering/object.dart@RenderObject@debugCanParentUseSize': (m.Scope scope, RenderObject target)=>target.debugCanParentUseSize,
'package:flutter/src/rendering/object.dart@RenderObject@debugLayoutParent': (m.Scope scope, RenderObject target)=>target.debugLayoutParent,
'package:flutter/src/rendering/object.dart@RenderObject@owner': (m.Scope scope, RenderObject target)=>target.owner,
'package:flutter/src/rendering/object.dart@RenderObject@debugNeedsLayout': (m.Scope scope, RenderObject target)=>target.debugNeedsLayout,
'package:flutter/src/rendering/object.dart@RenderObject@debugDoingThisLayoutWithCallback': (m.Scope scope, RenderObject target)=>target.debugDoingThisLayoutWithCallback,
'package:flutter/src/rendering/object.dart@RenderObject@constraints': (m.Scope scope, RenderObject target)=>target.constraints,
'package:flutter/src/rendering/object.dart@RenderObject@sizedByParent': (m.Scope scope, RenderObject target)=>target.sizedByParent,
'package:flutter/src/rendering/object.dart@RenderObject@debugDoingThisPaint': (m.Scope scope, RenderObject target)=>target.debugDoingThisPaint,
'package:flutter/src/rendering/object.dart@RenderObject@debugActivePaint': (m.Scope scope)=>RenderObject.debugActivePaint,
'package:flutter/src/rendering/object.dart@RenderObject@isRepaintBoundary': (m.Scope scope, RenderObject target)=>target.isRepaintBoundary,
'package:flutter/src/rendering/object.dart@RenderObject@alwaysNeedsCompositing': (m.Scope scope, RenderObject target)=>target.alwaysNeedsCompositing,
'package:flutter/src/rendering/object.dart@RenderObject@layer': (m.Scope scope, RenderObject target)=>target.layer,
'package:flutter/src/rendering/object.dart@RenderObject@layer:set': (m.Scope scope, RenderObject target)=>(other)=>target.layer=other,
'package:flutter/src/rendering/object.dart@RenderObject@debugLayer': (m.Scope scope, RenderObject target)=>target.debugLayer,
'package:flutter/src/rendering/object.dart@RenderObject@needsCompositing': (m.Scope scope, RenderObject target)=>target.needsCompositing,
'package:flutter/src/rendering/object.dart@RenderObject@debugNeedsPaint': (m.Scope scope, RenderObject target)=>target.debugNeedsPaint,
'package:flutter/src/rendering/object.dart@RenderObject@debugNeedsCompositedLayerUpdate': (m.Scope scope, RenderObject target)=>target.debugNeedsCompositedLayerUpdate,
'package:flutter/src/rendering/object.dart@RenderObject@paintBounds': (m.Scope scope, RenderObject target)=>target.paintBounds,
'package:flutter/src/rendering/object.dart@RenderObject@semanticBounds': (m.Scope scope, RenderObject target)=>target.semanticBounds,
'package:flutter/src/rendering/object.dart@RenderObject@debugSemantics': (m.Scope scope, RenderObject target)=>target.debugSemantics,
'package:flutter/src/rendering/object.dart@RenderObject@reassemble': (m.Scope scope, RenderObject target)=>target.reassemble,
'package:flutter/src/rendering/object.dart@RenderObject@dispose': (m.Scope scope, RenderObject target)=>target.dispose,
'package:flutter/src/rendering/object.dart@RenderObject@setupParentData': (m.Scope scope, RenderObject target)=>target.setupParentData,
'package:flutter/src/rendering/object.dart@RenderObject@adoptChild': (m.Scope scope, RenderObject target)=>target.adoptChild,
'package:flutter/src/rendering/object.dart@RenderObject@dropChild': (m.Scope scope, RenderObject target)=>target.dropChild,
'package:flutter/src/rendering/object.dart@RenderObject@visitChildren': (m.Scope scope, RenderObject target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildren(visitorProxy);
},
'package:flutter/src/rendering/object.dart@RenderObject@attach': (m.Scope scope, RenderObject target)=>target.attach,
'package:flutter/src/rendering/object.dart@RenderObject@debugAssertDoesMeetConstraints': (m.Scope scope, RenderObject target)=>target.debugAssertDoesMeetConstraints,
'package:flutter/src/rendering/object.dart@RenderObject@markNeedsLayout': (m.Scope scope, RenderObject target)=>target.markNeedsLayout,
'package:flutter/src/rendering/object.dart@RenderObject@markParentNeedsLayout': (m.Scope scope, RenderObject target)=>target.markParentNeedsLayout,
'package:flutter/src/rendering/object.dart@RenderObject@markNeedsLayoutForSizedByParentChange': (m.Scope scope, RenderObject target)=>target.markNeedsLayoutForSizedByParentChange,
'package:flutter/src/rendering/object.dart@RenderObject@scheduleInitialLayout': (m.Scope scope, RenderObject target)=>target.scheduleInitialLayout,
'package:flutter/src/rendering/object.dart@RenderObject@layout': (m.Scope scope, RenderObject target)=>target.layout,
'package:flutter/src/rendering/object.dart@RenderObject@debugResetSize': (m.Scope scope, RenderObject target)=>target.debugResetSize,
'package:flutter/src/rendering/object.dart@RenderObject@performResize': (m.Scope scope, RenderObject target)=>target.performResize,
'package:flutter/src/rendering/object.dart@RenderObject@performLayout': (m.Scope scope, RenderObject target)=>target.performLayout,
'package:flutter/src/rendering/object.dart@RenderObject@invokeLayoutCallback': (m.Scope scope, RenderObject target)=>( callback){
void callbackProxy<T>( constraints) {
 engine.callFunctionPointer(scope, callback!,[constraints], {});
}

target.invokeLayoutCallback<Constraints>(callbackProxy);
},
'package:flutter/src/rendering/object.dart@RenderObject@debugRegisterRepaintBoundaryPaint': (m.Scope scope, RenderObject target)=>target.debugRegisterRepaintBoundaryPaint,
'package:flutter/src/rendering/object.dart@RenderObject@updateCompositedLayer': (m.Scope scope, RenderObject target)=>target.updateCompositedLayer,
'package:flutter/src/rendering/object.dart@RenderObject@markNeedsCompositingBitsUpdate': (m.Scope scope, RenderObject target)=>target.markNeedsCompositingBitsUpdate,
'package:flutter/src/rendering/object.dart@RenderObject@markNeedsPaint': (m.Scope scope, RenderObject target)=>target.markNeedsPaint,
'package:flutter/src/rendering/object.dart@RenderObject@markNeedsCompositedLayerUpdate': (m.Scope scope, RenderObject target)=>target.markNeedsCompositedLayerUpdate,
'package:flutter/src/rendering/object.dart@RenderObject@scheduleInitialPaint': (m.Scope scope, RenderObject target)=>target.scheduleInitialPaint,
'package:flutter/src/rendering/object.dart@RenderObject@replaceRootLayer': (m.Scope scope, RenderObject target)=>target.replaceRootLayer,
'package:flutter/src/rendering/object.dart@RenderObject@debugPaint': (m.Scope scope, RenderObject target)=>target.debugPaint,
'package:flutter/src/rendering/object.dart@RenderObject@paint': (m.Scope scope, RenderObject target)=>target.paint,
'package:flutter/src/rendering/object.dart@RenderObject@applyPaintTransform': (m.Scope scope, RenderObject target)=>target.applyPaintTransform,
'package:flutter/src/rendering/object.dart@RenderObject@paintsChild': (m.Scope scope, RenderObject target)=>target.paintsChild,
'package:flutter/src/rendering/object.dart@RenderObject@getTransformTo': (m.Scope scope, RenderObject target)=>target.getTransformTo,
'package:flutter/src/rendering/object.dart@RenderObject@describeApproximatePaintClip': (m.Scope scope, RenderObject target)=>target.describeApproximatePaintClip,
'package:flutter/src/rendering/object.dart@RenderObject@describeSemanticsClip': (m.Scope scope, RenderObject target)=>target.describeSemanticsClip,
'package:flutter/src/rendering/object.dart@RenderObject@scheduleInitialSemantics': (m.Scope scope, RenderObject target)=>target.scheduleInitialSemantics,
'package:flutter/src/rendering/object.dart@RenderObject@describeSemanticsConfiguration': (m.Scope scope, RenderObject target)=>target.describeSemanticsConfiguration,
'package:flutter/src/rendering/object.dart@RenderObject@sendSemanticsEvent': (m.Scope scope, RenderObject target)=>target.sendSemanticsEvent,
'package:flutter/src/rendering/object.dart@RenderObject@clearSemantics': (m.Scope scope, RenderObject target)=>target.clearSemantics,
'package:flutter/src/rendering/object.dart@RenderObject@markNeedsSemanticsUpdate': (m.Scope scope, RenderObject target)=>target.markNeedsSemanticsUpdate,
'package:flutter/src/rendering/object.dart@RenderObject@visitChildrenForSemantics': (m.Scope scope, RenderObject target)=>( visitor){
void visitorProxy( child) {
 engine.callFunctionPointer(scope, visitor!,[child], {});
}

target.visitChildrenForSemantics(visitorProxy);
},
'package:flutter/src/rendering/object.dart@RenderObject@assembleSemanticsNode': (m.Scope scope, RenderObject target)=>target.assembleSemanticsNode,
'package:flutter/src/rendering/object.dart@RenderObject@handleEvent': (m.Scope scope, RenderObject target)=>target.handleEvent,
'package:flutter/src/rendering/object.dart@RenderObject@toStringShort': (m.Scope scope, RenderObject target)=>target.toStringShort,
'package:flutter/src/rendering/object.dart@RenderObject@toString': (m.Scope scope, RenderObject target)=>target.toString,
'package:flutter/src/rendering/object.dart@RenderObject@toStringDeep': (m.Scope scope, RenderObject target)=>target.toStringDeep,
'package:flutter/src/rendering/object.dart@RenderObject@toStringShallow': (m.Scope scope, RenderObject target)=>target.toStringShallow,
'package:flutter/src/rendering/object.dart@RenderObject@debugFillProperties': (m.Scope scope, RenderObject target)=>target.debugFillProperties,
'package:flutter/src/rendering/object.dart@RenderObject@debugDescribeChildren': (m.Scope scope, RenderObject target)=>target.debugDescribeChildren,
'package:flutter/src/rendering/object.dart@RenderObject@showOnScreen': (m.Scope scope, RenderObject target)=>target.showOnScreen,
'package:flutter/src/rendering/object.dart@RenderObject@describeForError': (m.Scope scope, RenderObject target)=>target.describeForError,
'package:flutter/src/rendering/object.dart@DiagnosticsDebugCreator@#as': (m.Scope scope, target)=>()=>target as DiagnosticsDebugCreator,
'package:flutter/src/rendering/object.dart@DiagnosticsDebugCreator@#is': (m.Scope scope, target)=>()=>target is DiagnosticsDebugCreator,
'package:flutter/src/rendering/object.dart@DiagnosticsDebugCreator@': (m.Scope scope)=>( value){
return DiagnosticsDebugCreator(value);
},

};
}