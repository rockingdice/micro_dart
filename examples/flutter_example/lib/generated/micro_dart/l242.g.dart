import 'package:flutter/src/widgets/drag_target.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/binding.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/media_query.dart';
import 'package:flutter/src/widgets/overlay.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/drag_target.dart@Draggable@#as': (m.Scope scope, target)=>()=>target as Draggable,
'package:flutter/src/widgets/drag_target.dart@Draggable@#is': (m.Scope scope, target)=>()=>target is Draggable,
'package:flutter/src/widgets/drag_target.dart@Draggable@data': (m.Scope scope, Draggable target)=>target.data,
'package:flutter/src/widgets/drag_target.dart@Draggable@axis': (m.Scope scope, Draggable target)=>target.axis,
'package:flutter/src/widgets/drag_target.dart@Draggable@child': (m.Scope scope, Draggable target)=>target.child,
'package:flutter/src/widgets/drag_target.dart@Draggable@childWhenDragging': (m.Scope scope, Draggable target)=>target.childWhenDragging,
'package:flutter/src/widgets/drag_target.dart@Draggable@feedback': (m.Scope scope, Draggable target)=>target.feedback,
'package:flutter/src/widgets/drag_target.dart@Draggable@feedbackOffset': (m.Scope scope, Draggable target)=>target.feedbackOffset,
'package:flutter/src/widgets/drag_target.dart@Draggable@dragAnchorStrategy': (m.Scope scope, Draggable target)=>target.dragAnchorStrategy,
'package:flutter/src/widgets/drag_target.dart@Draggable@ignoringFeedbackSemantics': (m.Scope scope, Draggable target)=>target.ignoringFeedbackSemantics,
'package:flutter/src/widgets/drag_target.dart@Draggable@ignoringFeedbackPointer': (m.Scope scope, Draggable target)=>target.ignoringFeedbackPointer,
'package:flutter/src/widgets/drag_target.dart@Draggable@affinity': (m.Scope scope, Draggable target)=>target.affinity,
'package:flutter/src/widgets/drag_target.dart@Draggable@maxSimultaneousDrags': (m.Scope scope, Draggable target)=>target.maxSimultaneousDrags,
'package:flutter/src/widgets/drag_target.dart@Draggable@onDragStarted': (m.Scope scope, Draggable target)=>target.onDragStarted,
'package:flutter/src/widgets/drag_target.dart@Draggable@onDragUpdate': (m.Scope scope, Draggable target)=>target.onDragUpdate,
'package:flutter/src/widgets/drag_target.dart@Draggable@onDraggableCanceled': (m.Scope scope, Draggable target)=>target.onDraggableCanceled,
'package:flutter/src/widgets/drag_target.dart@Draggable@onDragCompleted': (m.Scope scope, Draggable target)=>target.onDragCompleted,
'package:flutter/src/widgets/drag_target.dart@Draggable@onDragEnd': (m.Scope scope, Draggable target)=>target.onDragEnd,
'package:flutter/src/widgets/drag_target.dart@Draggable@rootOverlay': (m.Scope scope, Draggable target)=>target.rootOverlay,
'package:flutter/src/widgets/drag_target.dart@Draggable@hitTestBehavior': (m.Scope scope, Draggable target)=>target.hitTestBehavior,
'package:flutter/src/widgets/drag_target.dart@Draggable@allowedButtonsFilter': (m.Scope scope, Draggable target)=>target.allowedButtonsFilter,
'package:flutter/src/widgets/drag_target.dart@Draggable@': (m.Scope scope)=>({ affinity,  allowedButtonsFilter,  axis,  child,  childWhenDragging,  data,  dragAnchorStrategy,  feedback,  feedbackOffset,  hitTestBehavior,  ignoringFeedbackPointer,  ignoringFeedbackSemantics,  key,  maxSimultaneousDrags,  onDragCompleted,  onDragEnd,  onDragStarted,  onDragUpdate,  onDraggableCanceled,  rootOverlay}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

Offset dragAnchorStrategyProxy( draggable,  context,  position) {
return  engine.callFunctionPointer(scope, dragAnchorStrategy!,[draggable, context, position], {});
}

void onDragCompletedProxy() {
 engine.callFunctionPointer(scope, onDragCompleted!,[], {});
}

void onDragEndProxy( details) {
 engine.callFunctionPointer(scope, onDragEnd!,[details], {});
}

void onDragStartedProxy() {
 engine.callFunctionPointer(scope, onDragStarted!,[], {});
}

void onDragUpdateProxy( details) {
 engine.callFunctionPointer(scope, onDragUpdate!,[details], {});
}

void onDraggableCanceledProxy( velocity,  offset) {
 engine.callFunctionPointer(scope, onDraggableCanceled!,[velocity, offset], {});
}

return Draggable(affinity:affinity, allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, axis:axis, child:child, childWhenDragging:childWhenDragging, data:data, dragAnchorStrategy:dragAnchorStrategy == null ? childDragAnchorStrategy :dragAnchorStrategyProxy, feedback:feedback, feedbackOffset:feedbackOffset ?? Offset.zero, hitTestBehavior:hitTestBehavior ?? HitTestBehavior.deferToChild, ignoringFeedbackPointer:ignoringFeedbackPointer ?? true, ignoringFeedbackSemantics:ignoringFeedbackSemantics ?? true, key:key, maxSimultaneousDrags:maxSimultaneousDrags, onDragCompleted:onDragCompleted == null ? null :onDragCompletedProxy, onDragEnd:onDragEnd == null ? null :onDragEndProxy, onDragStarted:onDragStarted == null ? null :onDragStartedProxy, onDragUpdate:onDragUpdate == null ? null :onDragUpdateProxy, onDraggableCanceled:onDraggableCanceled == null ? null :onDraggableCanceledProxy, rootOverlay:rootOverlay ?? false);
},
'package:flutter/src/widgets/drag_target.dart@Draggable@createRecognizer': (m.Scope scope, Draggable target)=>( onStart){
Drag onStartProxy( position) {
return  engine.callFunctionPointer(scope, onStart!,[position], {});
}

return target.createRecognizer(onStartProxy);
},
'package:flutter/src/widgets/drag_target.dart@Draggable@createState': (m.Scope scope, Draggable target)=>target.createState,
'package:flutter/src/widgets/drag_target.dart@LongPressDraggable@#as': (m.Scope scope, target)=>()=>target as LongPressDraggable,
'package:flutter/src/widgets/drag_target.dart@LongPressDraggable@#is': (m.Scope scope, target)=>()=>target is LongPressDraggable,
'package:flutter/src/widgets/drag_target.dart@LongPressDraggable@hapticFeedbackOnStart': (m.Scope scope, LongPressDraggable target)=>target.hapticFeedbackOnStart,
'package:flutter/src/widgets/drag_target.dart@LongPressDraggable@delay': (m.Scope scope, LongPressDraggable target)=>target.delay,
'package:flutter/src/widgets/drag_target.dart@LongPressDraggable@': (m.Scope scope)=>({ allowedButtonsFilter,  axis,  child,  childWhenDragging,  data,  delay,  dragAnchorStrategy,  feedback,  feedbackOffset,  hapticFeedbackOnStart,  ignoringFeedbackPointer,  ignoringFeedbackSemantics,  key,  maxSimultaneousDrags,  onDragCompleted,  onDragEnd,  onDragStarted,  onDragUpdate,  onDraggableCanceled}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

Offset dragAnchorStrategyProxy( draggable,  context,  position) {
return  engine.callFunctionPointer(scope, dragAnchorStrategy!,[draggable, context, position], {});
}

void onDragCompletedProxy() {
 engine.callFunctionPointer(scope, onDragCompleted!,[], {});
}

void onDragEndProxy( details) {
 engine.callFunctionPointer(scope, onDragEnd!,[details], {});
}

void onDragStartedProxy() {
 engine.callFunctionPointer(scope, onDragStarted!,[], {});
}

void onDragUpdateProxy( details) {
 engine.callFunctionPointer(scope, onDragUpdate!,[details], {});
}

void onDraggableCanceledProxy( velocity,  offset) {
 engine.callFunctionPointer(scope, onDraggableCanceled!,[velocity, offset], {});
}

return LongPressDraggable(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, axis:axis, child:child, childWhenDragging:childWhenDragging, data:data, delay:delay ?? kLongPressTimeout, dragAnchorStrategy:dragAnchorStrategy == null ? childDragAnchorStrategy :dragAnchorStrategyProxy, feedback:feedback, feedbackOffset:feedbackOffset ?? Offset.zero, hapticFeedbackOnStart:hapticFeedbackOnStart ?? true, ignoringFeedbackPointer:ignoringFeedbackPointer ?? true, ignoringFeedbackSemantics:ignoringFeedbackSemantics ?? true, key:key, maxSimultaneousDrags:maxSimultaneousDrags, onDragCompleted:onDragCompleted == null ? null :onDragCompletedProxy, onDragEnd:onDragEnd == null ? null :onDragEndProxy, onDragStarted:onDragStarted == null ? null :onDragStartedProxy, onDragUpdate:onDragUpdate == null ? null :onDragUpdateProxy, onDraggableCanceled:onDraggableCanceled == null ? null :onDraggableCanceledProxy);
},
'package:flutter/src/widgets/drag_target.dart@LongPressDraggable@createRecognizer': (m.Scope scope, LongPressDraggable target)=>( onStart){
Drag onStartProxy( position) {
return  engine.callFunctionPointer(scope, onStart!,[position], {});
}

return target.createRecognizer(onStartProxy);
},
'package:flutter/src/widgets/drag_target.dart@DraggableDetails@#as': (m.Scope scope, target)=>()=>target as DraggableDetails,
'package:flutter/src/widgets/drag_target.dart@DraggableDetails@#is': (m.Scope scope, target)=>()=>target is DraggableDetails,
'package:flutter/src/widgets/drag_target.dart@DraggableDetails@wasAccepted': (m.Scope scope, DraggableDetails target)=>target.wasAccepted,
'package:flutter/src/widgets/drag_target.dart@DraggableDetails@velocity': (m.Scope scope, DraggableDetails target)=>target.velocity,
'package:flutter/src/widgets/drag_target.dart@DraggableDetails@offset': (m.Scope scope, DraggableDetails target)=>target.offset,
'package:flutter/src/widgets/drag_target.dart@DraggableDetails@': (m.Scope scope)=>DraggableDetails,
'package:flutter/src/widgets/drag_target.dart@DragTargetDetails@#as': (m.Scope scope, target)=>()=>target as DragTargetDetails,
'package:flutter/src/widgets/drag_target.dart@DragTargetDetails@#is': (m.Scope scope, target)=>()=>target is DragTargetDetails,
'package:flutter/src/widgets/drag_target.dart@DragTargetDetails@data': (m.Scope scope, DragTargetDetails target)=>target.data,
'package:flutter/src/widgets/drag_target.dart@DragTargetDetails@offset': (m.Scope scope, DragTargetDetails target)=>target.offset,
'package:flutter/src/widgets/drag_target.dart@DragTargetDetails@': (m.Scope scope)=>DragTargetDetails,
'package:flutter/src/widgets/drag_target.dart@DragTarget@#as': (m.Scope scope, target)=>()=>target as DragTarget,
'package:flutter/src/widgets/drag_target.dart@DragTarget@#is': (m.Scope scope, target)=>()=>target is DragTarget,
'package:flutter/src/widgets/drag_target.dart@DragTarget@builder': (m.Scope scope, DragTarget target)=>target.builder,
'package:flutter/src/widgets/drag_target.dart@DragTarget@onWillAccept': (m.Scope scope, DragTarget target)=>target.onWillAccept,
'package:flutter/src/widgets/drag_target.dart@DragTarget@onAccept': (m.Scope scope, DragTarget target)=>target.onAccept,
'package:flutter/src/widgets/drag_target.dart@DragTarget@onAcceptWithDetails': (m.Scope scope, DragTarget target)=>target.onAcceptWithDetails,
'package:flutter/src/widgets/drag_target.dart@DragTarget@onLeave': (m.Scope scope, DragTarget target)=>target.onLeave,
'package:flutter/src/widgets/drag_target.dart@DragTarget@onMove': (m.Scope scope, DragTarget target)=>target.onMove,
'package:flutter/src/widgets/drag_target.dart@DragTarget@hitTestBehavior': (m.Scope scope, DragTarget target)=>target.hitTestBehavior,
'package:flutter/src/widgets/drag_target.dart@DragTarget@': (m.Scope scope)=>({ builder,  hitTestBehavior,  key,  onAccept,  onAcceptWithDetails,  onLeave,  onMove,  onWillAccept}){
Widget builderProxy( context,  candidateData,  rejectedData) {
return  engine.callFunctionPointer(scope, builder!,[context, candidateData, rejectedData], {});
}

void onAcceptProxy<T>( data) {
 engine.callFunctionPointer(scope, onAccept!,[data], {});
}

void onAcceptWithDetailsProxy( details) {
 engine.callFunctionPointer(scope, onAcceptWithDetails!,[details], {});
}

void onLeaveProxy<T>( data) {
 engine.callFunctionPointer(scope, onLeave!,[data], {});
}

void onMoveProxy( details) {
 engine.callFunctionPointer(scope, onMove!,[details], {});
}

bool onWillAcceptProxy<T>( data) {
return  engine.callFunctionPointer(scope, onWillAccept!,[data], {});
}

return DragTarget(builder:builderProxy, hitTestBehavior:hitTestBehavior ?? HitTestBehavior.translucent, key:key, onAccept:onAccept == null ? null :onAcceptProxy, onAcceptWithDetails:onAcceptWithDetails == null ? null :onAcceptWithDetailsProxy, onLeave:onLeave == null ? null :onLeaveProxy, onMove:onMove == null ? null :onMoveProxy, onWillAccept:onWillAccept == null ? null :onWillAcceptProxy);
},
'package:flutter/src/widgets/drag_target.dart@DragTarget@createState': (m.Scope scope, DragTarget target)=>target.createState,
'package:flutter/src/widgets/drag_target.dart@@childDragAnchorStrategy': (m.Scope scope)=>childDragAnchorStrategy,
'package:flutter/src/widgets/drag_target.dart@@pointerDragAnchorStrategy': (m.Scope scope)=>pointerDragAnchorStrategy,

};
}