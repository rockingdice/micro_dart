import 'package:flutter/src/widgets/scroll_activity.dart';
import 'dart:async';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scroll_metrics.dart';
import 'package:flutter/src/widgets/scroll_notification.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivityDelegate@#as': (m.Scope scope, target)=>()=>target as ScrollActivityDelegate,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivityDelegate@#is': (m.Scope scope, target)=>()=>target is ScrollActivityDelegate,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivityDelegate@axisDirection': (m.Scope scope, ScrollActivityDelegate target)=>target.axisDirection,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivityDelegate@setPixels': (m.Scope scope, ScrollActivityDelegate target)=>target.setPixels,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivityDelegate@applyUserOffset': (m.Scope scope, ScrollActivityDelegate target)=>target.applyUserOffset,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivityDelegate@goIdle': (m.Scope scope, ScrollActivityDelegate target)=>target.goIdle,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivityDelegate@goBallistic': (m.Scope scope, ScrollActivityDelegate target)=>target.goBallistic,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@#as': (m.Scope scope, target)=>()=>target as ScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@#is': (m.Scope scope, target)=>()=>target is ScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@delegate': (m.Scope scope, ScrollActivity target)=>target.delegate,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@shouldIgnorePointer': (m.Scope scope, ScrollActivity target)=>target.shouldIgnorePointer,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@isScrolling': (m.Scope scope, ScrollActivity target)=>target.isScrolling,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@velocity': (m.Scope scope, ScrollActivity target)=>target.velocity,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@updateDelegate': (m.Scope scope, ScrollActivity target)=>target.updateDelegate,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@resetActivity': (m.Scope scope, ScrollActivity target)=>target.resetActivity,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@dispatchScrollStartNotification': (m.Scope scope, ScrollActivity target)=>target.dispatchScrollStartNotification,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@dispatchScrollUpdateNotification': (m.Scope scope, ScrollActivity target)=>target.dispatchScrollUpdateNotification,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@dispatchOverscrollNotification': (m.Scope scope, ScrollActivity target)=>target.dispatchOverscrollNotification,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@dispatchScrollEndNotification': (m.Scope scope, ScrollActivity target)=>target.dispatchScrollEndNotification,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@applyNewDimensions': (m.Scope scope, ScrollActivity target)=>target.applyNewDimensions,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@dispose': (m.Scope scope, ScrollActivity target)=>target.dispose,
'package:flutter/src/widgets/scroll_activity.dart@ScrollActivity@toString': (m.Scope scope, ScrollActivity target)=>target.toString,
'package:flutter/src/widgets/scroll_activity.dart@IdleScrollActivity@#as': (m.Scope scope, target)=>()=>target as IdleScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@IdleScrollActivity@#is': (m.Scope scope, target)=>()=>target is IdleScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@IdleScrollActivity@shouldIgnorePointer': (m.Scope scope, IdleScrollActivity target)=>target.shouldIgnorePointer,
'package:flutter/src/widgets/scroll_activity.dart@IdleScrollActivity@isScrolling': (m.Scope scope, IdleScrollActivity target)=>target.isScrolling,
'package:flutter/src/widgets/scroll_activity.dart@IdleScrollActivity@velocity': (m.Scope scope, IdleScrollActivity target)=>target.velocity,
'package:flutter/src/widgets/scroll_activity.dart@IdleScrollActivity@': (m.Scope scope)=>IdleScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@IdleScrollActivity@applyNewDimensions': (m.Scope scope, IdleScrollActivity target)=>target.applyNewDimensions,
'package:flutter/src/widgets/scroll_activity.dart@ScrollHoldController@#as': (m.Scope scope, target)=>()=>target as ScrollHoldController,
'package:flutter/src/widgets/scroll_activity.dart@ScrollHoldController@#is': (m.Scope scope, target)=>()=>target is ScrollHoldController,
'package:flutter/src/widgets/scroll_activity.dart@ScrollHoldController@cancel': (m.Scope scope, ScrollHoldController target)=>target.cancel,
'package:flutter/src/widgets/scroll_activity.dart@HoldScrollActivity@#as': (m.Scope scope, target)=>()=>target as HoldScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@HoldScrollActivity@#is': (m.Scope scope, target)=>()=>target is HoldScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@HoldScrollActivity@onHoldCanceled': (m.Scope scope, HoldScrollActivity target)=>target.onHoldCanceled,
'package:flutter/src/widgets/scroll_activity.dart@HoldScrollActivity@shouldIgnorePointer': (m.Scope scope, HoldScrollActivity target)=>target.shouldIgnorePointer,
'package:flutter/src/widgets/scroll_activity.dart@HoldScrollActivity@isScrolling': (m.Scope scope, HoldScrollActivity target)=>target.isScrolling,
'package:flutter/src/widgets/scroll_activity.dart@HoldScrollActivity@velocity': (m.Scope scope, HoldScrollActivity target)=>target.velocity,
'package:flutter/src/widgets/scroll_activity.dart@HoldScrollActivity@': (m.Scope scope)=>({ delegate,  onHoldCanceled}){
void onHoldCanceledProxy() {
 engine.callFunctionPointer(scope, onHoldCanceled!,[], {});
}

return HoldScrollActivity(delegate:delegate, onHoldCanceled:onHoldCanceled == null ? null :onHoldCanceledProxy);
},
'package:flutter/src/widgets/scroll_activity.dart@HoldScrollActivity@cancel': (m.Scope scope, HoldScrollActivity target)=>target.cancel,
'package:flutter/src/widgets/scroll_activity.dart@HoldScrollActivity@dispose': (m.Scope scope, HoldScrollActivity target)=>target.dispose,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@#as': (m.Scope scope, target)=>()=>target as ScrollDragController,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@#is': (m.Scope scope, target)=>()=>target is ScrollDragController,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@onDragCanceled': (m.Scope scope, ScrollDragController target)=>target.onDragCanceled,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@carriedVelocity': (m.Scope scope, ScrollDragController target)=>target.carriedVelocity,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@motionStartDistanceThreshold': (m.Scope scope, ScrollDragController target)=>target.motionStartDistanceThreshold,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@momentumRetainStationaryDurationThreshold': (m.Scope scope)=>ScrollDragController.momentumRetainStationaryDurationThreshold,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@momentumRetainVelocityThresholdFactor': (m.Scope scope)=>ScrollDragController.momentumRetainVelocityThresholdFactor,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@motionStoppedDurationThreshold': (m.Scope scope)=>ScrollDragController.motionStoppedDurationThreshold,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@delegate': (m.Scope scope, ScrollDragController target)=>target.delegate,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@lastDetails': (m.Scope scope, ScrollDragController target)=>target.lastDetails,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@': (m.Scope scope)=>({ carriedVelocity,  delegate,  details,  motionStartDistanceThreshold,  onDragCanceled}){
void onDragCanceledProxy() {
 engine.callFunctionPointer(scope, onDragCanceled!,[], {});
}

return ScrollDragController(carriedVelocity:carriedVelocity, delegate:delegate, details:details, motionStartDistanceThreshold:motionStartDistanceThreshold, onDragCanceled:onDragCanceled == null ? null :onDragCanceledProxy);
},
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@updateDelegate': (m.Scope scope, ScrollDragController target)=>target.updateDelegate,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@update': (m.Scope scope, ScrollDragController target)=>target.update,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@end': (m.Scope scope, ScrollDragController target)=>target.end,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@cancel': (m.Scope scope, ScrollDragController target)=>target.cancel,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@dispose': (m.Scope scope, ScrollDragController target)=>target.dispose,
'package:flutter/src/widgets/scroll_activity.dart@ScrollDragController@toString': (m.Scope scope, ScrollDragController target)=>target.toString,
'package:flutter/src/widgets/scroll_activity.dart@DragScrollActivity@#as': (m.Scope scope, target)=>()=>target as DragScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@DragScrollActivity@#is': (m.Scope scope, target)=>()=>target is DragScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@DragScrollActivity@shouldIgnorePointer': (m.Scope scope, DragScrollActivity target)=>target.shouldIgnorePointer,
'package:flutter/src/widgets/scroll_activity.dart@DragScrollActivity@isScrolling': (m.Scope scope, DragScrollActivity target)=>target.isScrolling,
'package:flutter/src/widgets/scroll_activity.dart@DragScrollActivity@velocity': (m.Scope scope, DragScrollActivity target)=>target.velocity,
'package:flutter/src/widgets/scroll_activity.dart@DragScrollActivity@': (m.Scope scope)=>DragScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@DragScrollActivity@dispatchScrollStartNotification': (m.Scope scope, DragScrollActivity target)=>target.dispatchScrollStartNotification,
'package:flutter/src/widgets/scroll_activity.dart@DragScrollActivity@dispatchScrollUpdateNotification': (m.Scope scope, DragScrollActivity target)=>target.dispatchScrollUpdateNotification,
'package:flutter/src/widgets/scroll_activity.dart@DragScrollActivity@dispatchOverscrollNotification': (m.Scope scope, DragScrollActivity target)=>target.dispatchOverscrollNotification,
'package:flutter/src/widgets/scroll_activity.dart@DragScrollActivity@dispatchScrollEndNotification': (m.Scope scope, DragScrollActivity target)=>target.dispatchScrollEndNotification,
'package:flutter/src/widgets/scroll_activity.dart@DragScrollActivity@dispose': (m.Scope scope, DragScrollActivity target)=>target.dispose,
'package:flutter/src/widgets/scroll_activity.dart@DragScrollActivity@toString': (m.Scope scope, DragScrollActivity target)=>target.toString,
'package:flutter/src/widgets/scroll_activity.dart@BallisticScrollActivity@#as': (m.Scope scope, target)=>()=>target as BallisticScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@BallisticScrollActivity@#is': (m.Scope scope, target)=>()=>target is BallisticScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@BallisticScrollActivity@shouldIgnorePointer': (m.Scope scope, BallisticScrollActivity target)=>target.shouldIgnorePointer,
'package:flutter/src/widgets/scroll_activity.dart@BallisticScrollActivity@isScrolling': (m.Scope scope, BallisticScrollActivity target)=>target.isScrolling,
'package:flutter/src/widgets/scroll_activity.dart@BallisticScrollActivity@velocity': (m.Scope scope, BallisticScrollActivity target)=>target.velocity,
'package:flutter/src/widgets/scroll_activity.dart@BallisticScrollActivity@': (m.Scope scope)=>BallisticScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@BallisticScrollActivity@resetActivity': (m.Scope scope, BallisticScrollActivity target)=>target.resetActivity,
'package:flutter/src/widgets/scroll_activity.dart@BallisticScrollActivity@applyNewDimensions': (m.Scope scope, BallisticScrollActivity target)=>target.applyNewDimensions,
'package:flutter/src/widgets/scroll_activity.dart@BallisticScrollActivity@applyMoveTo': (m.Scope scope, BallisticScrollActivity target)=>target.applyMoveTo,
'package:flutter/src/widgets/scroll_activity.dart@BallisticScrollActivity@dispatchOverscrollNotification': (m.Scope scope, BallisticScrollActivity target)=>target.dispatchOverscrollNotification,
'package:flutter/src/widgets/scroll_activity.dart@BallisticScrollActivity@dispose': (m.Scope scope, BallisticScrollActivity target)=>target.dispose,
'package:flutter/src/widgets/scroll_activity.dart@BallisticScrollActivity@toString': (m.Scope scope, BallisticScrollActivity target)=>target.toString,
'package:flutter/src/widgets/scroll_activity.dart@DrivenScrollActivity@#as': (m.Scope scope, target)=>()=>target as DrivenScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@DrivenScrollActivity@#is': (m.Scope scope, target)=>()=>target is DrivenScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@DrivenScrollActivity@done': (m.Scope scope, DrivenScrollActivity target)=>target.done,
'package:flutter/src/widgets/scroll_activity.dart@DrivenScrollActivity@shouldIgnorePointer': (m.Scope scope, DrivenScrollActivity target)=>target.shouldIgnorePointer,
'package:flutter/src/widgets/scroll_activity.dart@DrivenScrollActivity@isScrolling': (m.Scope scope, DrivenScrollActivity target)=>target.isScrolling,
'package:flutter/src/widgets/scroll_activity.dart@DrivenScrollActivity@velocity': (m.Scope scope, DrivenScrollActivity target)=>target.velocity,
'package:flutter/src/widgets/scroll_activity.dart@DrivenScrollActivity@': (m.Scope scope)=>DrivenScrollActivity,
'package:flutter/src/widgets/scroll_activity.dart@DrivenScrollActivity@dispatchOverscrollNotification': (m.Scope scope, DrivenScrollActivity target)=>target.dispatchOverscrollNotification,
'package:flutter/src/widgets/scroll_activity.dart@DrivenScrollActivity@dispose': (m.Scope scope, DrivenScrollActivity target)=>target.dispose,
'package:flutter/src/widgets/scroll_activity.dart@DrivenScrollActivity@toString': (m.Scope scope, DrivenScrollActivity target)=>target.toString,

};
}