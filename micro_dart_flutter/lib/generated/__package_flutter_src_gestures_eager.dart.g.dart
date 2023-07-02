import 'package:flutter/src/gestures/eager.dart';
import 'package:flutter/src/gestures/recognizer.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/eager.dart@EagerGestureRecognizer@#as': (m.Scope scope, target)=>()=>target as EagerGestureRecognizer,
'package:flutter/src/gestures/eager.dart@EagerGestureRecognizer@#is': (m.Scope scope, target)=>()=>target is EagerGestureRecognizer,
'package:flutter/src/gestures/eager.dart@EagerGestureRecognizer@debugDescription': (m.Scope scope, EagerGestureRecognizer target)=>target.debugDescription,
'package:flutter/src/gestures/eager.dart@EagerGestureRecognizer@': (m.Scope scope)=>({ allowedButtonsFilter,  supportedDevices}){
bool allowedButtonsFilterProxy( buttons) {
return  engine.callFunctionPointer(scope, allowedButtonsFilter!,[buttons], {});
}

return EagerGestureRecognizer(allowedButtonsFilter:allowedButtonsFilter == null ? null :allowedButtonsFilterProxy, supportedDevices:supportedDevices);
},
'package:flutter/src/gestures/eager.dart@EagerGestureRecognizer@addAllowedPointer': (m.Scope scope, EagerGestureRecognizer target)=>target.addAllowedPointer,
'package:flutter/src/gestures/eager.dart@EagerGestureRecognizer@didStopTrackingLastPointer': (m.Scope scope, EagerGestureRecognizer target)=>target.didStopTrackingLastPointer,
'package:flutter/src/gestures/eager.dart@EagerGestureRecognizer@handleEvent': (m.Scope scope, EagerGestureRecognizer target)=>target.handleEvent,

};
}