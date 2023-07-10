import 'package:flutter/src/gestures/long_press.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:flutter/src/gestures/velocity_tracker.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/long_press.dart@LongPressDownDetails@#as': (m.Scope scope, target)=>()=>target as LongPressDownDetails,
'package:flutter/src/gestures/long_press.dart@LongPressDownDetails@#is': (m.Scope scope, target)=>()=>target is LongPressDownDetails,
'package:flutter/src/gestures/long_press.dart@LongPressDownDetails@globalPosition': (m.Scope scope, LongPressDownDetails target)=>target.globalPosition,
'package:flutter/src/gestures/long_press.dart@LongPressDownDetails@kind': (m.Scope scope, LongPressDownDetails target)=>target.kind,
'package:flutter/src/gestures/long_press.dart@LongPressDownDetails@localPosition': (m.Scope scope, LongPressDownDetails target)=>target.localPosition,
'package:flutter/src/gestures/long_press.dart@LongPressDownDetails@': (m.Scope scope)=>({ globalPosition,  kind,  localPosition}){
return LongPressDownDetails(globalPosition:globalPosition ?? Offset.zero, kind:kind, localPosition:localPosition);
},
'package:flutter/src/gestures/long_press.dart@LongPressStartDetails@#as': (m.Scope scope, target)=>()=>target as LongPressStartDetails,
'package:flutter/src/gestures/long_press.dart@LongPressStartDetails@#is': (m.Scope scope, target)=>()=>target is LongPressStartDetails,
'package:flutter/src/gestures/long_press.dart@LongPressStartDetails@globalPosition': (m.Scope scope, LongPressStartDetails target)=>target.globalPosition,
'package:flutter/src/gestures/long_press.dart@LongPressStartDetails@localPosition': (m.Scope scope, LongPressStartDetails target)=>target.localPosition,
'package:flutter/src/gestures/long_press.dart@LongPressStartDetails@': (m.Scope scope)=>({ globalPosition,  localPosition}){
return LongPressStartDetails(globalPosition:globalPosition ?? Offset.zero, localPosition:localPosition);
},
'package:flutter/src/gestures/long_press.dart@LongPressMoveUpdateDetails@#as': (m.Scope scope, target)=>()=>target as LongPressMoveUpdateDetails,
'package:flutter/src/gestures/long_press.dart@LongPressMoveUpdateDetails@#is': (m.Scope scope, target)=>()=>target is LongPressMoveUpdateDetails,
'package:flutter/src/gestures/long_press.dart@LongPressMoveUpdateDetails@globalPosition': (m.Scope scope, LongPressMoveUpdateDetails target)=>target.globalPosition,
'package:flutter/src/gestures/long_press.dart@LongPressMoveUpdateDetails@localPosition': (m.Scope scope, LongPressMoveUpdateDetails target)=>target.localPosition,
'package:flutter/src/gestures/long_press.dart@LongPressMoveUpdateDetails@offsetFromOrigin': (m.Scope scope, LongPressMoveUpdateDetails target)=>target.offsetFromOrigin,
'package:flutter/src/gestures/long_press.dart@LongPressMoveUpdateDetails@localOffsetFromOrigin': (m.Scope scope, LongPressMoveUpdateDetails target)=>target.localOffsetFromOrigin,
'package:flutter/src/gestures/long_press.dart@LongPressMoveUpdateDetails@': (m.Scope scope)=>({ globalPosition,  localOffsetFromOrigin,  localPosition,  offsetFromOrigin}){
return LongPressMoveUpdateDetails(globalPosition:globalPosition ?? Offset.zero, localOffsetFromOrigin:localOffsetFromOrigin, localPosition:localPosition, offsetFromOrigin:offsetFromOrigin ?? Offset.zero);
},
'package:flutter/src/gestures/long_press.dart@LongPressEndDetails@#as': (m.Scope scope, target)=>()=>target as LongPressEndDetails,
'package:flutter/src/gestures/long_press.dart@LongPressEndDetails@#is': (m.Scope scope, target)=>()=>target is LongPressEndDetails,
'package:flutter/src/gestures/long_press.dart@LongPressEndDetails@globalPosition': (m.Scope scope, LongPressEndDetails target)=>target.globalPosition,
'package:flutter/src/gestures/long_press.dart@LongPressEndDetails@localPosition': (m.Scope scope, LongPressEndDetails target)=>target.localPosition,
'package:flutter/src/gestures/long_press.dart@LongPressEndDetails@velocity': (m.Scope scope, LongPressEndDetails target)=>target.velocity,
'package:flutter/src/gestures/long_press.dart@LongPressEndDetails@': (m.Scope scope)=>({ globalPosition,  localPosition,  velocity}){
return LongPressEndDetails(globalPosition:globalPosition ?? Offset.zero, localPosition:localPosition, velocity:velocity ?? Velocity.zero);
},
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as LongPressGestureRecognizer,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is LongPressGestureRecognizer,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPressDown': (m.Scope scope, LongPressGestureRecognizer target)=>target.onLongPressDown,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPressDown:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onLongPressDown=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPressCancel': (m.Scope scope, LongPressGestureRecognizer target)=>target.onLongPressCancel,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPressCancel:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onLongPressCancel=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPress': (m.Scope scope, LongPressGestureRecognizer target)=>target.onLongPress,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPress:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onLongPress=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPressStart': (m.Scope scope, LongPressGestureRecognizer target)=>target.onLongPressStart,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPressStart:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onLongPressStart=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPressMoveUpdate': (m.Scope scope, LongPressGestureRecognizer target)=>target.onLongPressMoveUpdate,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPressMoveUpdate:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onLongPressMoveUpdate=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPressUp': (m.Scope scope, LongPressGestureRecognizer target)=>target.onLongPressUp,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPressUp:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onLongPressUp=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPressEnd': (m.Scope scope, LongPressGestureRecognizer target)=>target.onLongPressEnd,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onLongPressEnd:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onLongPressEnd=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPressDown': (m.Scope scope, LongPressGestureRecognizer target)=>target.onSecondaryLongPressDown,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPressDown:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onSecondaryLongPressDown=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPressCancel': (m.Scope scope, LongPressGestureRecognizer target)=>target.onSecondaryLongPressCancel,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPressCancel:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onSecondaryLongPressCancel=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPress': (m.Scope scope, LongPressGestureRecognizer target)=>target.onSecondaryLongPress,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPress:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onSecondaryLongPress=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPressStart': (m.Scope scope, LongPressGestureRecognizer target)=>target.onSecondaryLongPressStart,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPressStart:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onSecondaryLongPressStart=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPressMoveUpdate': (m.Scope scope, LongPressGestureRecognizer target)=>target.onSecondaryLongPressMoveUpdate,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPressMoveUpdate:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onSecondaryLongPressMoveUpdate=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPressUp': (m.Scope scope, LongPressGestureRecognizer target)=>target.onSecondaryLongPressUp,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPressUp:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onSecondaryLongPressUp=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPressEnd': (m.Scope scope, LongPressGestureRecognizer target)=>target.onSecondaryLongPressEnd,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onSecondaryLongPressEnd:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onSecondaryLongPressEnd=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPressDown': (m.Scope scope, LongPressGestureRecognizer target)=>target.onTertiaryLongPressDown,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPressDown:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onTertiaryLongPressDown=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPressCancel': (m.Scope scope, LongPressGestureRecognizer target)=>target.onTertiaryLongPressCancel,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPressCancel:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onTertiaryLongPressCancel=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPress': (m.Scope scope, LongPressGestureRecognizer target)=>target.onTertiaryLongPress,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPress:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onTertiaryLongPress=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPressStart': (m.Scope scope, LongPressGestureRecognizer target)=>target.onTertiaryLongPressStart,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPressStart:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onTertiaryLongPressStart=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPressMoveUpdate': (m.Scope scope, LongPressGestureRecognizer target)=>target.onTertiaryLongPressMoveUpdate,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPressMoveUpdate:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onTertiaryLongPressMoveUpdate=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPressUp': (m.Scope scope, LongPressGestureRecognizer target)=>target.onTertiaryLongPressUp,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPressUp:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onTertiaryLongPressUp=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPressEnd': (m.Scope scope, LongPressGestureRecognizer target)=>target.onTertiaryLongPressEnd,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@onTertiaryLongPressEnd:set': (m.Scope scope, LongPressGestureRecognizer target)=>(other)=>target.onTertiaryLongPressEnd=other,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@debugDescription': (m.Scope scope, LongPressGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  duration,  postAcceptSlopTolerance,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return LongPressGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, duration:duration, postAcceptSlopTolerance:postAcceptSlopTolerance ?? null, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@isPointerAllowed': (m.Scope scope, LongPressGestureRecognizer target)=>target.isPointerAllowed,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@didExceedDeadline': (m.Scope scope, LongPressGestureRecognizer target)=>target.didExceedDeadline,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@handlePrimaryPointer': (m.Scope scope, LongPressGestureRecognizer target)=>target.handlePrimaryPointer,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@resolve': (m.Scope scope, LongPressGestureRecognizer target)=>target.resolve,
'package:flutter/src/gestures/long_press.dart@LongPressGestureRecognizer@acceptGesture': (m.Scope scope, LongPressGestureRecognizer target)=>target.acceptGesture,

};
}