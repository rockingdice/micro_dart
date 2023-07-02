import 'package:flutter/src/widgets/tap_and_drag_gestures.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart' show HardwareKeyboard,LogicalKeyboardKey;
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/gesture_detector.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragDownDetails@#as': (m.Scope scope, target)=>()=>target as TapDragDownDetails,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragDownDetails@#is': (m.Scope scope, target)=>()=>target is TapDragDownDetails,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragDownDetails@globalPosition': (m.Scope scope, TapDragDownDetails target)=>target.globalPosition,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragDownDetails@localPosition': (m.Scope scope, TapDragDownDetails target)=>target.localPosition,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragDownDetails@kind': (m.Scope scope, TapDragDownDetails target)=>target.kind,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragDownDetails@consecutiveTapCount': (m.Scope scope, TapDragDownDetails target)=>target.consecutiveTapCount,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragDownDetails@keysPressedOnDown': (m.Scope scope, TapDragDownDetails target)=>target.keysPressedOnDown,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragDownDetails@': (m.Scope scope)=>({ consecutiveTapCount,  globalPosition,  keysPressedOnDown,  kind,  localPosition}){
return TapDragDownDetails(consecutiveTapCount:consecutiveTapCount, globalPosition:globalPosition, keysPressedOnDown:keysPressedOnDown, kind:kind, localPosition:localPosition);
},
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragDownDetails@debugFillProperties': (m.Scope scope, TapDragDownDetails target)=>target.debugFillProperties,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpDetails@#as': (m.Scope scope, target)=>()=>target as TapDragUpDetails,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpDetails@#is': (m.Scope scope, target)=>()=>target is TapDragUpDetails,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpDetails@globalPosition': (m.Scope scope, TapDragUpDetails target)=>target.globalPosition,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpDetails@localPosition': (m.Scope scope, TapDragUpDetails target)=>target.localPosition,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpDetails@kind': (m.Scope scope, TapDragUpDetails target)=>target.kind,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpDetails@consecutiveTapCount': (m.Scope scope, TapDragUpDetails target)=>target.consecutiveTapCount,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpDetails@keysPressedOnDown': (m.Scope scope, TapDragUpDetails target)=>target.keysPressedOnDown,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpDetails@': (m.Scope scope)=>({ consecutiveTapCount,  globalPosition,  keysPressedOnDown,  kind,  localPosition}){
return TapDragUpDetails(consecutiveTapCount:consecutiveTapCount, globalPosition:globalPosition, keysPressedOnDown:keysPressedOnDown, kind:kind, localPosition:localPosition);
},
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpDetails@debugFillProperties': (m.Scope scope, TapDragUpDetails target)=>target.debugFillProperties,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragStartDetails@#as': (m.Scope scope, target)=>()=>target as TapDragStartDetails,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragStartDetails@#is': (m.Scope scope, target)=>()=>target is TapDragStartDetails,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragStartDetails@sourceTimeStamp': (m.Scope scope, TapDragStartDetails target)=>target.sourceTimeStamp,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragStartDetails@globalPosition': (m.Scope scope, TapDragStartDetails target)=>target.globalPosition,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragStartDetails@localPosition': (m.Scope scope, TapDragStartDetails target)=>target.localPosition,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragStartDetails@kind': (m.Scope scope, TapDragStartDetails target)=>target.kind,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragStartDetails@consecutiveTapCount': (m.Scope scope, TapDragStartDetails target)=>target.consecutiveTapCount,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragStartDetails@keysPressedOnDown': (m.Scope scope, TapDragStartDetails target)=>target.keysPressedOnDown,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragStartDetails@': (m.Scope scope)=>({ consecutiveTapCount,  globalPosition,  keysPressedOnDown,  kind,  localPosition,  sourceTimeStamp}){
return TapDragStartDetails(consecutiveTapCount:consecutiveTapCount, globalPosition:globalPosition, keysPressedOnDown:keysPressedOnDown, kind:kind, localPosition:localPosition, sourceTimeStamp:sourceTimeStamp);
},
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragStartDetails@debugFillProperties': (m.Scope scope, TapDragStartDetails target)=>target.debugFillProperties,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@#as': (m.Scope scope, target)=>()=>target as TapDragUpdateDetails,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@#is': (m.Scope scope, target)=>()=>target is TapDragUpdateDetails,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@sourceTimeStamp': (m.Scope scope, TapDragUpdateDetails target)=>target.sourceTimeStamp,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@delta': (m.Scope scope, TapDragUpdateDetails target)=>target.delta,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@primaryDelta': (m.Scope scope, TapDragUpdateDetails target)=>target.primaryDelta,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@globalPosition': (m.Scope scope, TapDragUpdateDetails target)=>target.globalPosition,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@localPosition': (m.Scope scope, TapDragUpdateDetails target)=>target.localPosition,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@kind': (m.Scope scope, TapDragUpdateDetails target)=>target.kind,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@offsetFromOrigin': (m.Scope scope, TapDragUpdateDetails target)=>target.offsetFromOrigin,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@localOffsetFromOrigin': (m.Scope scope, TapDragUpdateDetails target)=>target.localOffsetFromOrigin,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@consecutiveTapCount': (m.Scope scope, TapDragUpdateDetails target)=>target.consecutiveTapCount,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@keysPressedOnDown': (m.Scope scope, TapDragUpdateDetails target)=>target.keysPressedOnDown,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@': (m.Scope scope)=>({ consecutiveTapCount,  delta,  globalPosition,  keysPressedOnDown,  kind,  localOffsetFromOrigin,  localPosition,  offsetFromOrigin,  primaryDelta,  sourceTimeStamp}){
return TapDragUpdateDetails(consecutiveTapCount:consecutiveTapCount, delta:delta ?? Offset.zero, globalPosition:globalPosition, keysPressedOnDown:keysPressedOnDown, kind:kind, localOffsetFromOrigin:localOffsetFromOrigin, localPosition:localPosition, offsetFromOrigin:offsetFromOrigin, primaryDelta:primaryDelta, sourceTimeStamp:sourceTimeStamp);
},
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragUpdateDetails@debugFillProperties': (m.Scope scope, TapDragUpdateDetails target)=>target.debugFillProperties,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragEndDetails@#as': (m.Scope scope, target)=>()=>target as TapDragEndDetails,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragEndDetails@#is': (m.Scope scope, target)=>()=>target is TapDragEndDetails,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragEndDetails@velocity': (m.Scope scope, TapDragEndDetails target)=>target.velocity,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragEndDetails@primaryVelocity': (m.Scope scope, TapDragEndDetails target)=>target.primaryVelocity,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragEndDetails@consecutiveTapCount': (m.Scope scope, TapDragEndDetails target)=>target.consecutiveTapCount,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragEndDetails@keysPressedOnDown': (m.Scope scope, TapDragEndDetails target)=>target.keysPressedOnDown,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragEndDetails@': (m.Scope scope)=>({ consecutiveTapCount,  keysPressedOnDown,  primaryVelocity,  velocity}){
return TapDragEndDetails(consecutiveTapCount:consecutiveTapCount, keysPressedOnDown:keysPressedOnDown, primaryVelocity:primaryVelocity, velocity:velocity ?? Velocity.zero);
},
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapDragEndDetails@debugFillProperties': (m.Scope scope, TapDragEndDetails target)=>target.debugFillProperties,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as BaseTapAndDragGestureRecognizer,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is BaseTapAndDragGestureRecognizer,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@dragStartBehavior': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.dragStartBehavior,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@dragStartBehavior:set': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>(other)=>target.dragStartBehavior=other,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@dragUpdateThrottleFrequency': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.dragUpdateThrottleFrequency,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@dragUpdateThrottleFrequency:set': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>(other)=>target.dragUpdateThrottleFrequency=other,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@maxConsecutiveTap': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.maxConsecutiveTap,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@maxConsecutiveTap:set': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>(other)=>target.maxConsecutiveTap=other,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@onTapDown': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.onTapDown,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@onTapDown:set': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>(other)=>target.onTapDown=other,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@onTapUp': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.onTapUp,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@onTapUp:set': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>(other)=>target.onTapUp=other,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@onDragStart': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.onDragStart,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@onDragStart:set': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>(other)=>target.onDragStart=other,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@onDragUpdate': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.onDragUpdate,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@onDragUpdate:set': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>(other)=>target.onDragUpdate=other,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@onDragEnd': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.onDragEnd,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@onDragEnd:set': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>(other)=>target.onDragEnd=other,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@onCancel': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.onCancel,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@onCancel:set': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>(other)=>target.onCancel=other,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@debugDescription': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@isPointerAllowed': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.isPointerAllowed,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@addAllowedPointer': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@handleNonAllowedPointer': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.handleNonAllowedPointer,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@acceptGesture': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.acceptGesture,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@didStopTrackingLastPointer': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.didStopTrackingLastPointer,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@handleEvent': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.handleEvent,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@rejectGesture': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.rejectGesture,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@BaseTapAndDragGestureRecognizer@dispose': (m.Scope scope, BaseTapAndDragGestureRecognizer target)=>target.dispose,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapAndHorizontalDragGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as TapAndHorizontalDragGestureRecognizer,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapAndHorizontalDragGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is TapAndHorizontalDragGestureRecognizer,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapAndHorizontalDragGestureRecognizer@debugDescription': (m.Scope scope, TapAndHorizontalDragGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapAndHorizontalDragGestureRecognizer@': (m.Scope scope)=>({ debugOwner,  supportedDevices}){
return TapAndHorizontalDragGestureRecognizer(debugOwner:debugOwner, supportedDevices:supportedDevices);
},
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapAndPanGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as TapAndPanGestureRecognizer,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapAndPanGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is TapAndPanGestureRecognizer,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapAndPanGestureRecognizer@debugDescription': (m.Scope scope, TapAndPanGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapAndPanGestureRecognizer@': (m.Scope scope)=>({ debugOwner,  supportedDevices}){
return TapAndPanGestureRecognizer(debugOwner:debugOwner, supportedDevices:supportedDevices);
},
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapAndDragGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as TapAndDragGestureRecognizer,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapAndDragGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is TapAndDragGestureRecognizer,
'package:flutter/src/widgets/tap_and_drag_gestures.dart@TapAndDragGestureRecognizer@debugDescription': (m.Scope scope, TapAndDragGestureRecognizer target)=>target.debugDescription,

};
}