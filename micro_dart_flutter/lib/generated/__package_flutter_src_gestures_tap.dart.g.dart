import 'package:flutter/src/gestures/tap.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/constants.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/tap.dart@TapDownDetails@#as': (m.Scope scope, target)=>()=>target as TapDownDetails,
'package:flutter/src/gestures/tap.dart@TapDownDetails@#is': (m.Scope scope, target)=>()=>target is TapDownDetails,
'package:flutter/src/gestures/tap.dart@TapDownDetails@globalPosition': (m.Scope scope, TapDownDetails target)=>target.globalPosition,
'package:flutter/src/gestures/tap.dart@TapDownDetails@kind': (m.Scope scope, TapDownDetails target)=>target.kind,
'package:flutter/src/gestures/tap.dart@TapDownDetails@localPosition': (m.Scope scope, TapDownDetails target)=>target.localPosition,
'package:flutter/src/gestures/tap.dart@TapDownDetails@': (m.Scope scope)=>({ globalPosition,  kind,  localPosition}){
return TapDownDetails(globalPosition:globalPosition ?? Offset.zero, kind:kind, localPosition:localPosition);
},
'package:flutter/src/gestures/tap.dart@TapUpDetails@#as': (m.Scope scope, target)=>()=>target as TapUpDetails,
'package:flutter/src/gestures/tap.dart@TapUpDetails@#is': (m.Scope scope, target)=>()=>target is TapUpDetails,
'package:flutter/src/gestures/tap.dart@TapUpDetails@globalPosition': (m.Scope scope, TapUpDetails target)=>target.globalPosition,
'package:flutter/src/gestures/tap.dart@TapUpDetails@localPosition': (m.Scope scope, TapUpDetails target)=>target.localPosition,
'package:flutter/src/gestures/tap.dart@TapUpDetails@kind': (m.Scope scope, TapUpDetails target)=>target.kind,
'package:flutter/src/gestures/tap.dart@TapUpDetails@': (m.Scope scope)=>TapUpDetails,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as BaseTapGestureRecognizer,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is BaseTapGestureRecognizer,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@debugDescription': (m.Scope scope, BaseTapGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@handleTapDown': (m.Scope scope, BaseTapGestureRecognizer target)=>target.handleTapDown,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@handleTapUp': (m.Scope scope, BaseTapGestureRecognizer target)=>target.handleTapUp,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@handleTapCancel': (m.Scope scope, BaseTapGestureRecognizer target)=>target.handleTapCancel,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@addAllowedPointer': (m.Scope scope, BaseTapGestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@startTrackingPointer': (m.Scope scope, BaseTapGestureRecognizer target)=>target.startTrackingPointer,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@handlePrimaryPointer': (m.Scope scope, BaseTapGestureRecognizer target)=>target.handlePrimaryPointer,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@resolve': (m.Scope scope, BaseTapGestureRecognizer target)=>target.resolve,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@didExceedDeadline': (m.Scope scope, BaseTapGestureRecognizer target)=>target.didExceedDeadline,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@acceptGesture': (m.Scope scope, BaseTapGestureRecognizer target)=>target.acceptGesture,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@rejectGesture': (m.Scope scope, BaseTapGestureRecognizer target)=>target.rejectGesture,
'package:flutter/src/gestures/tap.dart@BaseTapGestureRecognizer@debugFillProperties': (m.Scope scope, BaseTapGestureRecognizer target)=>target.debugFillProperties,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as TapGestureRecognizer,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is TapGestureRecognizer,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTapDown': (m.Scope scope, TapGestureRecognizer target)=>target.onTapDown,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTapDown:set': (m.Scope scope, TapGestureRecognizer target)=>(other)=>target.onTapDown=other,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTapUp': (m.Scope scope, TapGestureRecognizer target)=>target.onTapUp,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTapUp:set': (m.Scope scope, TapGestureRecognizer target)=>(other)=>target.onTapUp=other,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTap': (m.Scope scope, TapGestureRecognizer target)=>target.onTap,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTap:set': (m.Scope scope, TapGestureRecognizer target)=>(other)=>target.onTap=other,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTapCancel': (m.Scope scope, TapGestureRecognizer target)=>target.onTapCancel,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTapCancel:set': (m.Scope scope, TapGestureRecognizer target)=>(other)=>target.onTapCancel=other,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onSecondaryTap': (m.Scope scope, TapGestureRecognizer target)=>target.onSecondaryTap,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onSecondaryTap:set': (m.Scope scope, TapGestureRecognizer target)=>(other)=>target.onSecondaryTap=other,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onSecondaryTapDown': (m.Scope scope, TapGestureRecognizer target)=>target.onSecondaryTapDown,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onSecondaryTapDown:set': (m.Scope scope, TapGestureRecognizer target)=>(other)=>target.onSecondaryTapDown=other,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onSecondaryTapUp': (m.Scope scope, TapGestureRecognizer target)=>target.onSecondaryTapUp,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onSecondaryTapUp:set': (m.Scope scope, TapGestureRecognizer target)=>(other)=>target.onSecondaryTapUp=other,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onSecondaryTapCancel': (m.Scope scope, TapGestureRecognizer target)=>target.onSecondaryTapCancel,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onSecondaryTapCancel:set': (m.Scope scope, TapGestureRecognizer target)=>(other)=>target.onSecondaryTapCancel=other,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTertiaryTapDown': (m.Scope scope, TapGestureRecognizer target)=>target.onTertiaryTapDown,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTertiaryTapDown:set': (m.Scope scope, TapGestureRecognizer target)=>(other)=>target.onTertiaryTapDown=other,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTertiaryTapUp': (m.Scope scope, TapGestureRecognizer target)=>target.onTertiaryTapUp,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTertiaryTapUp:set': (m.Scope scope, TapGestureRecognizer target)=>(other)=>target.onTertiaryTapUp=other,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTertiaryTapCancel': (m.Scope scope, TapGestureRecognizer target)=>target.onTertiaryTapCancel,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@onTertiaryTapCancel:set': (m.Scope scope, TapGestureRecognizer target)=>(other)=>target.onTertiaryTapCancel=other,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@debugDescription': (m.Scope scope, TapGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  debugOwner,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return TapGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, debugOwner:debugOwner, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@isPointerAllowed': (m.Scope scope, TapGestureRecognizer target)=>target.isPointerAllowed,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@handleTapDown': (m.Scope scope, TapGestureRecognizer target)=>target.handleTapDown,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@handleTapUp': (m.Scope scope, TapGestureRecognizer target)=>target.handleTapUp,
'package:flutter/src/gestures/tap.dart@TapGestureRecognizer@handleTapCancel': (m.Scope scope, TapGestureRecognizer target)=>target.handleTapCancel,

};
}