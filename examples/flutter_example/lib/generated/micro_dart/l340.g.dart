import 'package:flutter/src/widgets/text_selection.dart';
import 'dart:async';
import 'dart:math';
import 'package:characters/characters.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/constants.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/context_menu_controller.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:flutter/src/widgets/magnifier.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:flutter/src/widgets/scrollable.dart';
import 'package:flutter/src/widgets/tap_and_drag_gestures.dart';
import 'package:flutter/src/widgets/tap_region.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:flutter/src/widgets/transitions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/text_selection.dart@@emptyTextSelectionControls': (m.Scope scope)=>emptyTextSelectionControls,
'package:flutter/src/widgets/text_selection.dart@ToolbarItemsParentData@#as': (m.Scope scope, target)=>()=>target as ToolbarItemsParentData,
'package:flutter/src/widgets/text_selection.dart@ToolbarItemsParentData@#is': (m.Scope scope, target)=>()=>target is ToolbarItemsParentData,
'package:flutter/src/widgets/text_selection.dart@ToolbarItemsParentData@shouldPaint': (m.Scope scope, ToolbarItemsParentData target)=>target.shouldPaint,
'package:flutter/src/widgets/text_selection.dart@ToolbarItemsParentData@shouldPaint:set': (m.Scope scope, ToolbarItemsParentData target)=>(other)=>target.shouldPaint=other,
'package:flutter/src/widgets/text_selection.dart@ToolbarItemsParentData@': (m.Scope scope)=>(){
return ToolbarItemsParentData();
},
'package:flutter/src/widgets/text_selection.dart@ToolbarItemsParentData@toString': (m.Scope scope, ToolbarItemsParentData target)=>target.toString,
'package:flutter/src/widgets/text_selection.dart@TextSelectionControls@#as': (m.Scope scope, target)=>()=>target as TextSelectionControls,
'package:flutter/src/widgets/text_selection.dart@TextSelectionControls@#is': (m.Scope scope, target)=>()=>target is TextSelectionControls,
'package:flutter/src/widgets/text_selection.dart@TextSelectionControls@buildHandle': (m.Scope scope, TextSelectionControls target)=>( context,  type,  textLineHeight, [m.FunctionPointer? onTap]){
if(onTap == null){
return target.buildHandle(context, type, textLineHeight);
}
void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return target.buildHandle(context, type, textLineHeight, onTapProxy);
},
'package:flutter/src/widgets/text_selection.dart@TextSelectionControls@getHandleAnchor': (m.Scope scope, TextSelectionControls target)=>target.getHandleAnchor,
'package:flutter/src/widgets/text_selection.dart@TextSelectionControls@getHandleSize': (m.Scope scope, TextSelectionControls target)=>target.getHandleSize,
'package:flutter/src/widgets/text_selection.dart@EmptyTextSelectionControls@#as': (m.Scope scope, target)=>()=>target as EmptyTextSelectionControls,
'package:flutter/src/widgets/text_selection.dart@EmptyTextSelectionControls@#is': (m.Scope scope, target)=>()=>target is EmptyTextSelectionControls,
'package:flutter/src/widgets/text_selection.dart@EmptyTextSelectionControls@': (m.Scope scope)=>(){
return EmptyTextSelectionControls();
},
'package:flutter/src/widgets/text_selection.dart@EmptyTextSelectionControls@getHandleSize': (m.Scope scope, EmptyTextSelectionControls target)=>target.getHandleSize,
'package:flutter/src/widgets/text_selection.dart@EmptyTextSelectionControls@buildToolbar': (m.Scope scope, EmptyTextSelectionControls target)=>target.buildToolbar,
'package:flutter/src/widgets/text_selection.dart@EmptyTextSelectionControls@buildHandle': (m.Scope scope, EmptyTextSelectionControls target)=>( context,  type,  textLineHeight, [m.FunctionPointer? onTap]){
if(onTap == null){
return target.buildHandle(context, type, textLineHeight);
}
void onTapProxy() {
 engine.callFunctionPointer(scope, onTap!,[], {});
}

return target.buildHandle(context, type, textLineHeight, onTapProxy);
},
'package:flutter/src/widgets/text_selection.dart@EmptyTextSelectionControls@getHandleAnchor': (m.Scope scope, EmptyTextSelectionControls target)=>target.getHandleAnchor,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@#as': (m.Scope scope, target)=>()=>target as TextSelectionOverlay,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@#is': (m.Scope scope, target)=>()=>target is TextSelectionOverlay,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@context': (m.Scope scope, TextSelectionOverlay target)=>target.context,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@fadeDuration': (m.Scope scope)=>TextSelectionOverlay.fadeDuration,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@renderObject': (m.Scope scope, TextSelectionOverlay target)=>target.renderObject,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@selectionControls': (m.Scope scope, TextSelectionOverlay target)=>target.selectionControls,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@selectionDelegate': (m.Scope scope, TextSelectionOverlay target)=>target.selectionDelegate,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@contextMenuBuilder': (m.Scope scope, TextSelectionOverlay target)=>target.contextMenuBuilder,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@value': (m.Scope scope, TextSelectionOverlay target)=>target.value,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@handlesVisible': (m.Scope scope, TextSelectionOverlay target)=>target.handlesVisible,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@handlesVisible:set': (m.Scope scope, TextSelectionOverlay target)=>(other)=>target.handlesVisible=other,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@handlesAreVisible': (m.Scope scope, TextSelectionOverlay target)=>target.handlesAreVisible,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@toolbarIsVisible': (m.Scope scope, TextSelectionOverlay target)=>target.toolbarIsVisible,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@magnifierIsVisible': (m.Scope scope, TextSelectionOverlay target)=>target.magnifierIsVisible,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@spellCheckToolbarIsVisible': (m.Scope scope, TextSelectionOverlay target)=>target.spellCheckToolbarIsVisible,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@': (m.Scope scope)=>({ clipboardStatus,  context,  contextMenuBuilder,  debugRequiredFor,  dragStartBehavior,  endHandleLayerLink,  handlesVisible,  magnifierConfiguration,  onSelectionHandleTapped,  renderObject,  selectionControls,  selectionDelegate,  startHandleLayerLink,  toolbarLayerLink,  value}){
Widget contextMenuBuilderProxy( context) {
return  engine.callFunctionPointer(scope, contextMenuBuilder!,[context], {});
}

void onSelectionHandleTappedProxy() {
 engine.callFunctionPointer(scope, onSelectionHandleTapped!,[], {});
}

return TextSelectionOverlay(clipboardStatus:clipboardStatus, context:context, contextMenuBuilder:contextMenuBuilder == null ? null :contextMenuBuilderProxy, debugRequiredFor:debugRequiredFor, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, endHandleLayerLink:endHandleLayerLink, handlesVisible:handlesVisible ?? false, magnifierConfiguration:magnifierConfiguration, onSelectionHandleTapped:onSelectionHandleTapped == null ? null :onSelectionHandleTappedProxy, renderObject:renderObject, selectionControls:selectionControls, selectionDelegate:selectionDelegate, startHandleLayerLink:startHandleLayerLink, toolbarLayerLink:toolbarLayerLink, value:value);
},
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@showHandles': (m.Scope scope, TextSelectionOverlay target)=>target.showHandles,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@hideHandles': (m.Scope scope, TextSelectionOverlay target)=>target.hideHandles,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@showToolbar': (m.Scope scope, TextSelectionOverlay target)=>target.showToolbar,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@showSpellCheckSuggestionsToolbar': (m.Scope scope, TextSelectionOverlay target)=>( spellCheckSuggestionsToolbarBuilder){
Widget spellCheckSuggestionsToolbarBuilderProxy( context) {
return  engine.callFunctionPointer(scope, spellCheckSuggestionsToolbarBuilder!,[context], {});
}

target.showSpellCheckSuggestionsToolbar(spellCheckSuggestionsToolbarBuilderProxy);
},
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@showMagnifier': (m.Scope scope, TextSelectionOverlay target)=>target.showMagnifier,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@updateMagnifier': (m.Scope scope, TextSelectionOverlay target)=>target.updateMagnifier,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@hideMagnifier': (m.Scope scope, TextSelectionOverlay target)=>target.hideMagnifier,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@update': (m.Scope scope, TextSelectionOverlay target)=>target.update,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@updateForScroll': (m.Scope scope, TextSelectionOverlay target)=>target.updateForScroll,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@hide': (m.Scope scope, TextSelectionOverlay target)=>target.hide,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@hideToolbar': (m.Scope scope, TextSelectionOverlay target)=>target.hideToolbar,
'package:flutter/src/widgets/text_selection.dart@TextSelectionOverlay@dispose': (m.Scope scope, TextSelectionOverlay target)=>target.dispose,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@#as': (m.Scope scope, target)=>()=>target as SelectionOverlay,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@#is': (m.Scope scope, target)=>()=>target is SelectionOverlay,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@context': (m.Scope scope, SelectionOverlay target)=>target.context,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@magnifierConfiguration': (m.Scope scope, SelectionOverlay target)=>target.magnifierConfiguration,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@startHandlesVisible': (m.Scope scope, SelectionOverlay target)=>target.startHandlesVisible,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@onStartHandleDragStart': (m.Scope scope, SelectionOverlay target)=>target.onStartHandleDragStart,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@onStartHandleDragUpdate': (m.Scope scope, SelectionOverlay target)=>target.onStartHandleDragUpdate,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@onStartHandleDragEnd': (m.Scope scope, SelectionOverlay target)=>target.onStartHandleDragEnd,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@endHandlesVisible': (m.Scope scope, SelectionOverlay target)=>target.endHandlesVisible,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@onEndHandleDragStart': (m.Scope scope, SelectionOverlay target)=>target.onEndHandleDragStart,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@onEndHandleDragUpdate': (m.Scope scope, SelectionOverlay target)=>target.onEndHandleDragUpdate,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@onEndHandleDragEnd': (m.Scope scope, SelectionOverlay target)=>target.onEndHandleDragEnd,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@toolbarVisible': (m.Scope scope, SelectionOverlay target)=>target.toolbarVisible,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@debugRequiredFor': (m.Scope scope, SelectionOverlay target)=>target.debugRequiredFor,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@toolbarLayerLink': (m.Scope scope, SelectionOverlay target)=>target.toolbarLayerLink,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@startHandleLayerLink': (m.Scope scope, SelectionOverlay target)=>target.startHandleLayerLink,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@endHandleLayerLink': (m.Scope scope, SelectionOverlay target)=>target.endHandleLayerLink,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@selectionControls': (m.Scope scope, SelectionOverlay target)=>target.selectionControls,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@selectionDelegate': (m.Scope scope, SelectionOverlay target)=>target.selectionDelegate,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@dragStartBehavior': (m.Scope scope, SelectionOverlay target)=>target.dragStartBehavior,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@onSelectionHandleTapped': (m.Scope scope, SelectionOverlay target)=>target.onSelectionHandleTapped,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@clipboardStatus': (m.Scope scope, SelectionOverlay target)=>target.clipboardStatus,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@fadeDuration': (m.Scope scope)=>SelectionOverlay.fadeDuration,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@startHandleType': (m.Scope scope, SelectionOverlay target)=>target.startHandleType,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@startHandleType:set': (m.Scope scope, SelectionOverlay target)=>(other)=>target.startHandleType=other,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@lineHeightAtStart': (m.Scope scope, SelectionOverlay target)=>target.lineHeightAtStart,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@lineHeightAtStart:set': (m.Scope scope, SelectionOverlay target)=>(other)=>target.lineHeightAtStart=other,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@endHandleType': (m.Scope scope, SelectionOverlay target)=>target.endHandleType,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@endHandleType:set': (m.Scope scope, SelectionOverlay target)=>(other)=>target.endHandleType=other,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@lineHeightAtEnd': (m.Scope scope, SelectionOverlay target)=>target.lineHeightAtEnd,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@lineHeightAtEnd:set': (m.Scope scope, SelectionOverlay target)=>(other)=>target.lineHeightAtEnd=other,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@selectionEndpoints': (m.Scope scope, SelectionOverlay target)=>target.selectionEndpoints,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@selectionEndpoints:set': (m.Scope scope, SelectionOverlay target)=>(other)=>target.selectionEndpoints=other,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@toolbarLocation:set': (m.Scope scope, SelectionOverlay target)=>(other)=>target.toolbarLocation=other,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@': (m.Scope scope)=>({ clipboardStatus,  context,  debugRequiredFor,  dragStartBehavior,  endHandleLayerLink,  endHandleType,  endHandlesVisible,  lineHeightAtEnd,  lineHeightAtStart,  magnifierConfiguration,  onEndHandleDragEnd,  onEndHandleDragStart,  onEndHandleDragUpdate,  onSelectionHandleTapped,  onStartHandleDragEnd,  onStartHandleDragStart,  onStartHandleDragUpdate,  selectionControls,  selectionDelegate,  selectionEndpoints,  startHandleLayerLink,  startHandleType,  startHandlesVisible,  toolbarLayerLink,  toolbarLocation,  toolbarVisible}){
void onEndHandleDragEndProxy( value) {
 engine.callFunctionPointer(scope, onEndHandleDragEnd!,[value], {});
}

void onEndHandleDragStartProxy( value) {
 engine.callFunctionPointer(scope, onEndHandleDragStart!,[value], {});
}

void onEndHandleDragUpdateProxy( value) {
 engine.callFunctionPointer(scope, onEndHandleDragUpdate!,[value], {});
}

void onSelectionHandleTappedProxy() {
 engine.callFunctionPointer(scope, onSelectionHandleTapped!,[], {});
}

void onStartHandleDragEndProxy( value) {
 engine.callFunctionPointer(scope, onStartHandleDragEnd!,[value], {});
}

void onStartHandleDragStartProxy( value) {
 engine.callFunctionPointer(scope, onStartHandleDragStart!,[value], {});
}

void onStartHandleDragUpdateProxy( value) {
 engine.callFunctionPointer(scope, onStartHandleDragUpdate!,[value], {});
}

return SelectionOverlay(clipboardStatus:clipboardStatus, context:context, debugRequiredFor:debugRequiredFor, dragStartBehavior:dragStartBehavior ?? DragStartBehavior.start, endHandleLayerLink:endHandleLayerLink, endHandleType:endHandleType, endHandlesVisible:endHandlesVisible, lineHeightAtEnd:lineHeightAtEnd, lineHeightAtStart:lineHeightAtStart, magnifierConfiguration:magnifierConfiguration ?? TextMagnifierConfiguration.disabled, onEndHandleDragEnd:onEndHandleDragEnd == null ? null :onEndHandleDragEndProxy, onEndHandleDragStart:onEndHandleDragStart == null ? null :onEndHandleDragStartProxy, onEndHandleDragUpdate:onEndHandleDragUpdate == null ? null :onEndHandleDragUpdateProxy, onSelectionHandleTapped:onSelectionHandleTapped == null ? null :onSelectionHandleTappedProxy, onStartHandleDragEnd:onStartHandleDragEnd == null ? null :onStartHandleDragEndProxy, onStartHandleDragStart:onStartHandleDragStart == null ? null :onStartHandleDragStartProxy, onStartHandleDragUpdate:onStartHandleDragUpdate == null ? null :onStartHandleDragUpdateProxy, selectionControls:selectionControls, selectionDelegate:selectionDelegate, selectionEndpoints:selectionEndpoints, startHandleLayerLink:startHandleLayerLink, startHandleType:startHandleType, startHandlesVisible:startHandlesVisible, toolbarLayerLink:toolbarLayerLink, toolbarLocation:toolbarLocation, toolbarVisible:toolbarVisible);
},
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@showMagnifier': (m.Scope scope, SelectionOverlay target)=>target.showMagnifier,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@hideMagnifier': (m.Scope scope, SelectionOverlay target)=>target.hideMagnifier,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@showHandles': (m.Scope scope, SelectionOverlay target)=>target.showHandles,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@hideHandles': (m.Scope scope, SelectionOverlay target)=>target.hideHandles,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@showToolbar': (m.Scope scope, SelectionOverlay target)=>({ context,  contextMenuBuilder}){
Widget contextMenuBuilderProxy( context) {
return  engine.callFunctionPointer(scope, contextMenuBuilder!,[context], {});
}

target.showToolbar(context:context, contextMenuBuilder:contextMenuBuilder == null ? null :contextMenuBuilderProxy);
},
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@showSpellCheckSuggestionsToolbar': (m.Scope scope, SelectionOverlay target)=>({ builder,  context}){
Widget builderProxy( context) {
return  engine.callFunctionPointer(scope, builder!,[context], {});
}

target.showSpellCheckSuggestionsToolbar(builder:builderProxy, context:context);
},
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@markNeedsBuild': (m.Scope scope, SelectionOverlay target)=>target.markNeedsBuild,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@hide': (m.Scope scope, SelectionOverlay target)=>target.hide,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@hideToolbar': (m.Scope scope, SelectionOverlay target)=>target.hideToolbar,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@dispose': (m.Scope scope, SelectionOverlay target)=>target.dispose,
'package:flutter/src/widgets/text_selection.dart@SelectionOverlay@updateMagnifier': (m.Scope scope, SelectionOverlay target)=>target.updateMagnifier,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilderDelegate@#as': (m.Scope scope, target)=>()=>target as TextSelectionGestureDetectorBuilderDelegate,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilderDelegate@#is': (m.Scope scope, target)=>()=>target is TextSelectionGestureDetectorBuilderDelegate,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilderDelegate@editableTextKey': (m.Scope scope, TextSelectionGestureDetectorBuilderDelegate target)=>target.editableTextKey,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilderDelegate@forcePressEnabled': (m.Scope scope, TextSelectionGestureDetectorBuilderDelegate target)=>target.forcePressEnabled,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilderDelegate@selectionEnabled': (m.Scope scope, TextSelectionGestureDetectorBuilderDelegate target)=>target.selectionEnabled,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@#as': (m.Scope scope, target)=>()=>target as TextSelectionGestureDetectorBuilder,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@#is': (m.Scope scope, target)=>()=>target is TextSelectionGestureDetectorBuilder,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@delegate': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.delegate,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@shouldShowSelectionToolbar': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.shouldShowSelectionToolbar,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@editableText': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.editableText,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@renderEditable': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.renderEditable,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@': (m.Scope scope)=>TextSelectionGestureDetectorBuilder,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onTapDown': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onTapDown,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onForcePressStart': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onForcePressStart,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onForcePressEnd': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onForcePressEnd,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onSingleTapUp': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onSingleTapUp,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onSingleTapCancel': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onSingleTapCancel,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onSingleLongTapStart': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onSingleLongTapStart,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onSingleLongTapMoveUpdate': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onSingleLongTapMoveUpdate,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onSingleLongTapEnd': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onSingleLongTapEnd,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onSecondaryTap': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onSecondaryTap,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onSecondaryTapDown': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onSecondaryTapDown,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onDoubleTapDown': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onDoubleTapDown,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onTripleTapDown': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onTripleTapDown,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onDragSelectionStart': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onDragSelectionStart,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onDragSelectionUpdate': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onDragSelectionUpdate,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@onDragSelectionEnd': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.onDragSelectionEnd,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetectorBuilder@buildGestureDetector': (m.Scope scope, TextSelectionGestureDetectorBuilder target)=>target.buildGestureDetector,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@#as': (m.Scope scope, target)=>()=>target as TextSelectionGestureDetector,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@#is': (m.Scope scope, target)=>()=>target is TextSelectionGestureDetector,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onTapDown': (m.Scope scope, TextSelectionGestureDetector target)=>target.onTapDown,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onForcePressStart': (m.Scope scope, TextSelectionGestureDetector target)=>target.onForcePressStart,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onForcePressEnd': (m.Scope scope, TextSelectionGestureDetector target)=>target.onForcePressEnd,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onSecondaryTap': (m.Scope scope, TextSelectionGestureDetector target)=>target.onSecondaryTap,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onSecondaryTapDown': (m.Scope scope, TextSelectionGestureDetector target)=>target.onSecondaryTapDown,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onSingleTapUp': (m.Scope scope, TextSelectionGestureDetector target)=>target.onSingleTapUp,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onSingleTapCancel': (m.Scope scope, TextSelectionGestureDetector target)=>target.onSingleTapCancel,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onSingleLongTapStart': (m.Scope scope, TextSelectionGestureDetector target)=>target.onSingleLongTapStart,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onSingleLongTapMoveUpdate': (m.Scope scope, TextSelectionGestureDetector target)=>target.onSingleLongTapMoveUpdate,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onSingleLongTapEnd': (m.Scope scope, TextSelectionGestureDetector target)=>target.onSingleLongTapEnd,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onDoubleTapDown': (m.Scope scope, TextSelectionGestureDetector target)=>target.onDoubleTapDown,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onTripleTapDown': (m.Scope scope, TextSelectionGestureDetector target)=>target.onTripleTapDown,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onDragSelectionStart': (m.Scope scope, TextSelectionGestureDetector target)=>target.onDragSelectionStart,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onDragSelectionUpdate': (m.Scope scope, TextSelectionGestureDetector target)=>target.onDragSelectionUpdate,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@onDragSelectionEnd': (m.Scope scope, TextSelectionGestureDetector target)=>target.onDragSelectionEnd,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@behavior': (m.Scope scope, TextSelectionGestureDetector target)=>target.behavior,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@child': (m.Scope scope, TextSelectionGestureDetector target)=>target.child,
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@': (m.Scope scope)=>({ behavior,  child,  key,  onDoubleTapDown,  onDragSelectionEnd,  onDragSelectionStart,  onDragSelectionUpdate,  onForcePressEnd,  onForcePressStart,  onSecondaryTap,  onSecondaryTapDown,  onSingleLongTapEnd,  onSingleLongTapMoveUpdate,  onSingleLongTapStart,  onSingleTapCancel,  onSingleTapUp,  onTapDown,  onTripleTapDown}){
void onDoubleTapDownProxy( details) {
 engine.callFunctionPointer(scope, onDoubleTapDown!,[details], {});
}

void onDragSelectionEndProxy( endDetails) {
 engine.callFunctionPointer(scope, onDragSelectionEnd!,[endDetails], {});
}

void onDragSelectionStartProxy( details) {
 engine.callFunctionPointer(scope, onDragSelectionStart!,[details], {});
}

void onDragSelectionUpdateProxy( details) {
 engine.callFunctionPointer(scope, onDragSelectionUpdate!,[details], {});
}

void onForcePressEndProxy( details) {
 engine.callFunctionPointer(scope, onForcePressEnd!,[details], {});
}

void onForcePressStartProxy( details) {
 engine.callFunctionPointer(scope, onForcePressStart!,[details], {});
}

void onSecondaryTapProxy() {
 engine.callFunctionPointer(scope, onSecondaryTap!,[], {});
}

void onSecondaryTapDownProxy( details) {
 engine.callFunctionPointer(scope, onSecondaryTapDown!,[details], {});
}

void onSingleLongTapEndProxy( details) {
 engine.callFunctionPointer(scope, onSingleLongTapEnd!,[details], {});
}

void onSingleLongTapMoveUpdateProxy( details) {
 engine.callFunctionPointer(scope, onSingleLongTapMoveUpdate!,[details], {});
}

void onSingleLongTapStartProxy( details) {
 engine.callFunctionPointer(scope, onSingleLongTapStart!,[details], {});
}

void onSingleTapCancelProxy() {
 engine.callFunctionPointer(scope, onSingleTapCancel!,[], {});
}

void onSingleTapUpProxy( details) {
 engine.callFunctionPointer(scope, onSingleTapUp!,[details], {});
}

void onTapDownProxy( details) {
 engine.callFunctionPointer(scope, onTapDown!,[details], {});
}

void onTripleTapDownProxy( details) {
 engine.callFunctionPointer(scope, onTripleTapDown!,[details], {});
}

return TextSelectionGestureDetector(behavior:behavior, child:child, key:key, onDoubleTapDown:onDoubleTapDown == null ? null :onDoubleTapDownProxy, onDragSelectionEnd:onDragSelectionEnd == null ? null :onDragSelectionEndProxy, onDragSelectionStart:onDragSelectionStart == null ? null :onDragSelectionStartProxy, onDragSelectionUpdate:onDragSelectionUpdate == null ? null :onDragSelectionUpdateProxy, onForcePressEnd:onForcePressEnd == null ? null :onForcePressEndProxy, onForcePressStart:onForcePressStart == null ? null :onForcePressStartProxy, onSecondaryTap:onSecondaryTap == null ? null :onSecondaryTapProxy, onSecondaryTapDown:onSecondaryTapDown == null ? null :onSecondaryTapDownProxy, onSingleLongTapEnd:onSingleLongTapEnd == null ? null :onSingleLongTapEndProxy, onSingleLongTapMoveUpdate:onSingleLongTapMoveUpdate == null ? null :onSingleLongTapMoveUpdateProxy, onSingleLongTapStart:onSingleLongTapStart == null ? null :onSingleLongTapStartProxy, onSingleTapCancel:onSingleTapCancel == null ? null :onSingleTapCancelProxy, onSingleTapUp:onSingleTapUp == null ? null :onSingleTapUpProxy, onTapDown:onTapDown == null ? null :onTapDownProxy, onTripleTapDown:onTripleTapDown == null ? null :onTripleTapDownProxy);
},
'package:flutter/src/widgets/text_selection.dart@TextSelectionGestureDetector@createState': (m.Scope scope, TextSelectionGestureDetector target)=>target.createState,
'package:flutter/src/widgets/text_selection.dart@ClipboardStatusNotifier@#as': (m.Scope scope, target)=>()=>target as ClipboardStatusNotifier,
'package:flutter/src/widgets/text_selection.dart@ClipboardStatusNotifier@#is': (m.Scope scope, target)=>()=>target is ClipboardStatusNotifier,
'package:flutter/src/widgets/text_selection.dart@ClipboardStatusNotifier@disposed': (m.Scope scope, ClipboardStatusNotifier target)=>target.disposed,
'package:flutter/src/widgets/text_selection.dart@ClipboardStatusNotifier@': (m.Scope scope)=>({ value}){
return ClipboardStatusNotifier(value:value ?? ClipboardStatus.unknown);
},
'package:flutter/src/widgets/text_selection.dart@ClipboardStatusNotifier@update': (m.Scope scope, ClipboardStatusNotifier target)=>target.update,
'package:flutter/src/widgets/text_selection.dart@ClipboardStatusNotifier@addListener': (m.Scope scope, ClipboardStatusNotifier target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.addListener(listenerProxy);
},
'package:flutter/src/widgets/text_selection.dart@ClipboardStatusNotifier@removeListener': (m.Scope scope, ClipboardStatusNotifier target)=>( listener){
void listenerProxy() {
 engine.callFunctionPointer(scope, listener!,[], {});
}

target.removeListener(listenerProxy);
},
'package:flutter/src/widgets/text_selection.dart@ClipboardStatusNotifier@didChangeAppLifecycleState': (m.Scope scope, ClipboardStatusNotifier target)=>target.didChangeAppLifecycleState,
'package:flutter/src/widgets/text_selection.dart@ClipboardStatusNotifier@dispose': (m.Scope scope, ClipboardStatusNotifier target)=>target.dispose,

};
}