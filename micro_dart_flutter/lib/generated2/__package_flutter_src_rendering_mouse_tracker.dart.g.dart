import 'package:flutter/src/rendering/mouse_tracker.dart';
import 'dart:collection' show LinkedHashMap;
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/rendering/object.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/rendering/mouse_tracker.dart@MouseTracker@#as': (m.Scope scope, target)=>()=>target as MouseTracker,
'package:flutter/src/rendering/mouse_tracker.dart@MouseTracker@#is': (m.Scope scope, target)=>()=>target is MouseTracker,
'package:flutter/src/rendering/mouse_tracker.dart@MouseTracker@mouseIsConnected': (m.Scope scope, MouseTracker target)=>target.mouseIsConnected,
'package:flutter/src/rendering/mouse_tracker.dart@MouseTracker@': (m.Scope scope)=>(){
return MouseTracker();
},
'package:flutter/src/rendering/mouse_tracker.dart@MouseTracker@updateWithEvent': (m.Scope scope, MouseTracker target)=>( event,  getResult){
HitTestResult getResultProxy() {
return  engine.callFunctionPointer(scope, getResult!,[], {});
}

target.updateWithEvent(event, getResultProxy);
},
'package:flutter/src/rendering/mouse_tracker.dart@MouseTracker@updateAllDevices': (m.Scope scope, MouseTracker target)=>( hitTest){
HitTestResult hitTestProxy( offset) {
return  engine.callFunctionPointer(scope, hitTest!,[offset], {});
}

target.updateAllDevices(hitTestProxy);
},
'package:flutter/src/rendering/mouse_tracker.dart@MouseTracker@debugDeviceActiveCursor': (m.Scope scope, MouseTracker target)=>target.debugDeviceActiveCursor,

};
}