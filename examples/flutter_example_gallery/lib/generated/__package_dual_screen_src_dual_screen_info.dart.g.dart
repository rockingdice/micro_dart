import 'package:dual_screen/src/dual_screen_info.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:dual_screen/src/dual_screen_info.dart@DualScreenInfo@#as': (m.Scope scope, target)=>()=>target as DualScreenInfo,
'package:dual_screen/src/dual_screen_info.dart@DualScreenInfo@#is': (m.Scope scope, target)=>()=>target is DualScreenInfo,
'package:dual_screen/src/dual_screen_info.dart@DualScreenInfo@hingeAngleEvents': (m.Scope scope)=>DualScreenInfo.hingeAngleEvents,
'package:dual_screen/src/dual_screen_info.dart@DualScreenInfo@hasHingeAngleSensor': (m.Scope scope)=>DualScreenInfo.hasHingeAngleSensor,
'package:dual_screen/src/dual_screen_info.dart@DualScreenInfo@': (m.Scope scope)=>(){
return DualScreenInfo();
},

};
}