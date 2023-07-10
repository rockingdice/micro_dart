import 'package:flutter/src/material/ink_well.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/src/material/ink_highlight.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/ink_well.dart@InteractiveInkFeature@#as': (m.Scope scope, target)=>()=>target as InteractiveInkFeature,
'package:flutter/src/material/ink_well.dart@InteractiveInkFeature@#is': (m.Scope scope, target)=>()=>target is InteractiveInkFeature,
'package:flutter/src/material/ink_well.dart@InteractiveInkFeature@color': (m.Scope scope, InteractiveInkFeature target)=>target.color,
'package:flutter/src/material/ink_well.dart@InteractiveInkFeature@color:set': (m.Scope scope, InteractiveInkFeature target)=>(other)=>target.color=other,
'package:flutter/src/material/ink_well.dart@InteractiveInkFeature@customBorder': (m.Scope scope, InteractiveInkFeature target)=>target.customBorder,
'package:flutter/src/material/ink_well.dart@InteractiveInkFeature@customBorder:set': (m.Scope scope, InteractiveInkFeature target)=>(other)=>target.customBorder=other,
'package:flutter/src/material/ink_well.dart@InteractiveInkFeature@confirm': (m.Scope scope, InteractiveInkFeature target)=>target.confirm,
'package:flutter/src/material/ink_well.dart@InteractiveInkFeature@cancel': (m.Scope scope, InteractiveInkFeature target)=>target.cancel,
'package:flutter/src/material/ink_well.dart@InteractiveInkFeature@paintInkCircle': (m.Scope scope, InteractiveInkFeature target)=>({ borderRadius,  canvas,  center,  clipCallback,  customBorder,  paint,  radius,  textDirection,  transform}){
Rect clipCallbackProxy() {
return  engine.callFunctionPointer(scope, clipCallback!,[], {});
}

target.paintInkCircle(borderRadius:borderRadius ?? BorderRadius.zero, canvas:canvas, center:center, clipCallback:clipCallback == null ? null :clipCallbackProxy, customBorder:customBorder, paint:paint, radius:radius, textDirection:textDirection, transform:transform);
},
'package:flutter/src/material/ink_well.dart@InteractiveInkFeatureFactory@#as': (m.Scope scope, target)=>()=>target as InteractiveInkFeatureFactory,
'package:flutter/src/material/ink_well.dart@InteractiveInkFeatureFactory@#is': (m.Scope scope, target)=>()=>target is InteractiveInkFeatureFactory,
'package:flutter/src/material/ink_well.dart@InteractiveInkFeatureFactory@create': (m.Scope scope, InteractiveInkFeatureFactory target)=>({ borderRadius,  color,  containedInkWell,  controller,  customBorder,  onRemoved,  position,  radius,  rectCallback,  referenceBox,  textDirection}){
void onRemovedProxy() {
 engine.callFunctionPointer(scope, onRemoved!,[], {});
}

Rect rectCallbackProxy() {
return  engine.callFunctionPointer(scope, rectCallback!,[], {});
}

return target.create(borderRadius:borderRadius, color:color, containedInkWell:containedInkWell ?? false, controller:controller, customBorder:customBorder, onRemoved:onRemoved == null ? null :onRemovedProxy, position:position, radius:radius, rectCallback:rectCallback == null ? null :rectCallbackProxy, referenceBox:referenceBox, textDirection:textDirection);
},
'package:flutter/src/material/ink_well.dart@InkResponse@#as': (m.Scope scope, target)=>()=>target as InkResponse,
'package:flutter/src/material/ink_well.dart@InkResponse@#is': (m.Scope scope, target)=>()=>target is InkResponse,
'package:flutter/src/material/ink_well.dart@InkResponse@child': (m.Scope scope, InkResponse target)=>target.child,
'package:flutter/src/material/ink_well.dart@InkResponse@onTap': (m.Scope scope, InkResponse target)=>target.onTap,
'package:flutter/src/material/ink_well.dart@InkResponse@onTapDown': (m.Scope scope, InkResponse target)=>target.onTapDown,
'package:flutter/src/material/ink_well.dart@InkResponse@onTapUp': (m.Scope scope, InkResponse target)=>target.onTapUp,
'package:flutter/src/material/ink_well.dart@InkResponse@onTapCancel': (m.Scope scope, InkResponse target)=>target.onTapCancel,
'package:flutter/src/material/ink_well.dart@InkResponse@onDoubleTap': (m.Scope scope, InkResponse target)=>target.onDoubleTap,
'package:flutter/src/material/ink_well.dart@InkResponse@onLongPress': (m.Scope scope, InkResponse target)=>target.onLongPress,
'package:flutter/src/material/ink_well.dart@InkResponse@onSecondaryTap': (m.Scope scope, InkResponse target)=>target.onSecondaryTap,
'package:flutter/src/material/ink_well.dart@InkResponse@onSecondaryTapDown': (m.Scope scope, InkResponse target)=>target.onSecondaryTapDown,
'package:flutter/src/material/ink_well.dart@InkResponse@onSecondaryTapUp': (m.Scope scope, InkResponse target)=>target.onSecondaryTapUp,
'package:flutter/src/material/ink_well.dart@InkResponse@onSecondaryTapCancel': (m.Scope scope, InkResponse target)=>target.onSecondaryTapCancel,
'package:flutter/src/material/ink_well.dart@InkResponse@onHighlightChanged': (m.Scope scope, InkResponse target)=>target.onHighlightChanged,
'package:flutter/src/material/ink_well.dart@InkResponse@onHover': (m.Scope scope, InkResponse target)=>target.onHover,
'package:flutter/src/material/ink_well.dart@InkResponse@mouseCursor': (m.Scope scope, InkResponse target)=>target.mouseCursor,
'package:flutter/src/material/ink_well.dart@InkResponse@containedInkWell': (m.Scope scope, InkResponse target)=>target.containedInkWell,
'package:flutter/src/material/ink_well.dart@InkResponse@highlightShape': (m.Scope scope, InkResponse target)=>target.highlightShape,
'package:flutter/src/material/ink_well.dart@InkResponse@radius': (m.Scope scope, InkResponse target)=>target.radius,
'package:flutter/src/material/ink_well.dart@InkResponse@borderRadius': (m.Scope scope, InkResponse target)=>target.borderRadius,
'package:flutter/src/material/ink_well.dart@InkResponse@customBorder': (m.Scope scope, InkResponse target)=>target.customBorder,
'package:flutter/src/material/ink_well.dart@InkResponse@focusColor': (m.Scope scope, InkResponse target)=>target.focusColor,
'package:flutter/src/material/ink_well.dart@InkResponse@hoverColor': (m.Scope scope, InkResponse target)=>target.hoverColor,
'package:flutter/src/material/ink_well.dart@InkResponse@highlightColor': (m.Scope scope, InkResponse target)=>target.highlightColor,
'package:flutter/src/material/ink_well.dart@InkResponse@overlayColor': (m.Scope scope, InkResponse target)=>target.overlayColor,
'package:flutter/src/material/ink_well.dart@InkResponse@splashColor': (m.Scope scope, InkResponse target)=>target.splashColor,
'package:flutter/src/material/ink_well.dart@InkResponse@splashFactory': (m.Scope scope, InkResponse target)=>target.splashFactory,
'package:flutter/src/material/ink_well.dart@InkResponse@enableFeedback': (m.Scope scope, InkResponse target)=>target.enableFeedback,
'package:flutter/src/material/ink_well.dart@InkResponse@excludeFromSemantics': (m.Scope scope, InkResponse target)=>target.excludeFromSemantics,
'package:flutter/src/material/ink_well.dart@InkResponse@onFocusChange': (m.Scope scope, InkResponse target)=>target.onFocusChange,
'package:flutter/src/material/ink_well.dart@InkResponse@autofocus': (m.Scope scope, InkResponse target)=>target.autofocus,
'package:flutter/src/material/ink_well.dart@InkResponse@focusNode': (m.Scope scope, InkResponse target)=>target.focusNode,
'package:flutter/src/material/ink_well.dart@InkResponse@canRequestFocus': (m.Scope scope, InkResponse target)=>target.canRequestFocus,
'package:flutter/src/material/ink_well.dart@InkResponse@statesController': (m.Scope scope, InkResponse target)=>target.statesController,
'package:flutter/src/material/ink_well.dart@InkResponse@': (m.Scope scope)=>({ autofocus,  borderRadius,  canRequestFocus,  child,  containedInkWell,  customBorder,  enableFeedback,  excludeFromSemantics,  focusColor,  focusNode,  highlightColor,  highlightShape,  hoverColor,  key,  mouseCursor,  onDoubleTap,  onFocusChange,  onHighlightChanged,  onHover,  onLongPress,  onSecondaryTap,  onSecondaryTapCancel,  onSecondaryTapDown,  onSecondaryTapUp,  onTap,  onTapCancel,  onTapDown,  onTapUp,  overlayColor,  radius,  splashColor,  splashFactory,  statesController}){
void onDoubleTapProxy() {
 engine.callFunctionPointer(scope, onDoubleTap!,[], {});
}

void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

void onHighlightChangedProxy( value) {
 engine.callFunctionPointer(scope, onHighlightChanged!,[value], {});
}

void onHoverProxy( value) {
 engine.callFunctionPointer(scope, onHover!,[value], {});
}

void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onSecondaryTapProxy() {
 engine.callFunctionPointer(scope, onSecondaryTap!,[], {});
}

void onSecondaryTapCancelProxy() {
 engine.callFunctionPointer(scope, onSecondaryTapCancel!,[], {});
}

void onSecondaryTapDownProxy( details) {
 engine.callFunctionPointer(scope, onSecondaryTapDown!,[details], {});
}

void onSecondaryTapUpProxy( details) {
 engine.callFunctionPointer(scope, onSecondaryTapUp!,[details], {});
}

void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

void onTapCancelProxy() {
 engine.callFunctionPointer(scope, onTapCancel!,[], {});
}

void onTapDownProxy( details) {
 engine.callFunctionPointer(scope, onTapDown!,[details], {});
}

void onTapUpProxy( details) {
 engine.callFunctionPointer(scope, onTapUp!,[details], {});
}

return InkResponse(autofocus:autofocus ?? false, borderRadius:borderRadius, canRequestFocus:canRequestFocus ?? true, child:child, containedInkWell:containedInkWell ?? false, customBorder:customBorder, enableFeedback:enableFeedback ?? true, excludeFromSemantics:excludeFromSemantics ?? false, focusColor:focusColor, focusNode:focusNode, highlightColor:highlightColor, highlightShape:highlightShape ?? BoxShape.circle, hoverColor:hoverColor, key:key, mouseCursor:mouseCursor, onDoubleTap:onDoubleTap == null ? null :onDoubleTapProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onHighlightChanged:onHighlightChanged == null ? null :onHighlightChangedProxy, onHover:onHover == null ? null :onHoverProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onSecondaryTap:onSecondaryTap == null ? null :onSecondaryTapProxy, onSecondaryTapCancel:onSecondaryTapCancel == null ? null :onSecondaryTapCancelProxy, onSecondaryTapDown:onSecondaryTapDown == null ? null :onSecondaryTapDownProxy, onSecondaryTapUp:onSecondaryTapUp == null ? null :onSecondaryTapUpProxy, onTap:onTap == null ? null :onTapProxy, onTapCancel:onTapCancel == null ? null :onTapCancelProxy, onTapDown:onTapDown == null ? null :onTapDownProxy, onTapUp:onTapUp == null ? null :onTapUpProxy, overlayColor:overlayColor, radius:radius, splashColor:splashColor, splashFactory:splashFactory, statesController:statesController);
},
'package:flutter/src/material/ink_well.dart@InkResponse@getRectCallback': (m.Scope scope, InkResponse target)=>target.getRectCallback,
'package:flutter/src/material/ink_well.dart@InkResponse@build': (m.Scope scope, InkResponse target)=>target.build,
'package:flutter/src/material/ink_well.dart@InkResponse@debugCheckContext': (m.Scope scope, InkResponse target)=>target.debugCheckContext,
'package:flutter/src/material/ink_well.dart@InkWell@#as': (m.Scope scope, target)=>()=>target as InkWell,
'package:flutter/src/material/ink_well.dart@InkWell@#is': (m.Scope scope, target)=>()=>target is InkWell,
'package:flutter/src/material/ink_well.dart@InkWell@': (m.Scope scope)=>({ autofocus,  borderRadius,  canRequestFocus,  child,  customBorder,  enableFeedback,  excludeFromSemantics,  focusColor,  focusNode,  highlightColor,  hoverColor,  key,  mouseCursor,  onDoubleTap,  onFocusChange,  onHighlightChanged,  onHover,  onLongPress,  onSecondaryTap,  onSecondaryTapCancel,  onSecondaryTapDown,  onSecondaryTapUp,  onTap,  onTapCancel,  onTapDown,  onTapUp,  overlayColor,  radius,  splashColor,  splashFactory,  statesController}){
void onDoubleTapProxy() {
 engine.callFunctionPointer(scope, onDoubleTap!,[], {});
}

void onFocusChangeProxy( value) {
 engine.callFunctionPointer(scope, onFocusChange!,[value], {});
}

void onHighlightChangedProxy( value) {
 engine.callFunctionPointer(scope, onHighlightChanged!,[value], {});
}

void onHoverProxy( value) {
 engine.callFunctionPointer(scope, onHover!,[value], {});
}

void onLongPressProxy() {
 engine.callFunctionPointer(scope, onLongPress!,[], {});
}

void onSecondaryTapProxy() {
 engine.callFunctionPointer(scope, onSecondaryTap!,[], {});
}

void onSecondaryTapCancelProxy() {
 engine.callFunctionPointer(scope, onSecondaryTapCancel!,[], {});
}

void onSecondaryTapDownProxy( details) {
 engine.callFunctionPointer(scope, onSecondaryTapDown!,[details], {});
}

void onSecondaryTapUpProxy( details) {
 engine.callFunctionPointer(scope, onSecondaryTapUp!,[details], {});
}

void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

void onTapCancelProxy() {
 engine.callFunctionPointer(scope, onTapCancel!,[], {});
}

void onTapDownProxy( details) {
 engine.callFunctionPointer(scope, onTapDown!,[details], {});
}

void onTapUpProxy( details) {
 engine.callFunctionPointer(scope, onTapUp!,[details], {});
}

return InkWell(autofocus:autofocus ?? false, borderRadius:borderRadius, canRequestFocus:canRequestFocus ?? true, child:child, customBorder:customBorder, enableFeedback:enableFeedback ?? true, excludeFromSemantics:excludeFromSemantics ?? false, focusColor:focusColor, focusNode:focusNode, highlightColor:highlightColor, hoverColor:hoverColor, key:key, mouseCursor:mouseCursor, onDoubleTap:onDoubleTap == null ? null :onDoubleTapProxy, onFocusChange:onFocusChange == null ? null :onFocusChangeProxy, onHighlightChanged:onHighlightChanged == null ? null :onHighlightChangedProxy, onHover:onHover == null ? null :onHoverProxy, onLongPress:onLongPress == null ? null :onLongPressProxy, onSecondaryTap:onSecondaryTap == null ? null :onSecondaryTapProxy, onSecondaryTapCancel:onSecondaryTapCancel == null ? null :onSecondaryTapCancelProxy, onSecondaryTapDown:onSecondaryTapDown == null ? null :onSecondaryTapDownProxy, onSecondaryTapUp:onSecondaryTapUp == null ? null :onSecondaryTapUpProxy, onTap:onTap == null ? null :onTapProxy, onTapCancel:onTapCancel == null ? null :onTapCancelProxy, onTapDown:onTapDown == null ? null :onTapDownProxy, onTapUp:onTapUp == null ? null :onTapUpProxy, overlayColor:overlayColor, radius:radius, splashColor:splashColor, splashFactory:splashFactory, statesController:statesController);
},

};
}