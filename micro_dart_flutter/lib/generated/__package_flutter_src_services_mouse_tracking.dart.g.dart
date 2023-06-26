import 'package:flutter/src/services/mouse_tracking.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/services/mouse_cursor.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/services/mouse_tracking.dart@MouseTrackerAnnotation@#as': (m.Scope scope, target)=>()=>target as MouseTrackerAnnotation,
'package:flutter/src/services/mouse_tracking.dart@MouseTrackerAnnotation@#is': (m.Scope scope, target)=>()=>target is MouseTrackerAnnotation,
'package:flutter/src/services/mouse_tracking.dart@MouseTrackerAnnotation@onEnter': (m.Scope scope, MouseTrackerAnnotation target)=>target.onEnter,
'package:flutter/src/services/mouse_tracking.dart@MouseTrackerAnnotation@onExit': (m.Scope scope, MouseTrackerAnnotation target)=>target.onExit,
'package:flutter/src/services/mouse_tracking.dart@MouseTrackerAnnotation@cursor': (m.Scope scope, MouseTrackerAnnotation target)=>target.cursor,
'package:flutter/src/services/mouse_tracking.dart@MouseTrackerAnnotation@validForMouseTracker': (m.Scope scope, MouseTrackerAnnotation target)=>target.validForMouseTracker,
'package:flutter/src/services/mouse_tracking.dart@MouseTrackerAnnotation@': (m.Scope scope)=>({ cursor,  onEnter,  onExit,  validForMouseTracker}){
void onEnterProxy( event) {
 engine.callFunctionPointer(scope, onEnter!,[event], {});
}

void onExitProxy( event) {
 engine.callFunctionPointer(scope, onExit!,[event], {});
}

return MouseTrackerAnnotation(cursor:cursor ?? MouseCursor.defer, onEnter:onEnter == null ? null :onEnterProxy, onExit:onExit == null ? null :onExitProxy, validForMouseTracker:validForMouseTracker ?? true);
},
'package:flutter/src/services/mouse_tracking.dart@MouseTrackerAnnotation@debugFillProperties': (m.Scope scope, MouseTrackerAnnotation target)=>target.debugFillProperties,

};
}