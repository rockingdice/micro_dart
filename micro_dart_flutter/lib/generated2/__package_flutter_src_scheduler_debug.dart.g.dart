import 'package:flutter/src/scheduler/debug.dart';
import 'package:flutter/foundation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/scheduler/debug.dart@@debugPrintBeginFrameBanner': (m.Scope scope)=>debugPrintBeginFrameBanner,
'package:flutter/src/scheduler/debug.dart@@debugPrintBeginFrameBanner:set': (m.Scope scope)=>(other)=>debugPrintBeginFrameBanner=other,
'package:flutter/src/scheduler/debug.dart@@debugPrintEndFrameBanner': (m.Scope scope)=>debugPrintEndFrameBanner,
'package:flutter/src/scheduler/debug.dart@@debugPrintEndFrameBanner:set': (m.Scope scope)=>(other)=>debugPrintEndFrameBanner=other,
'package:flutter/src/scheduler/debug.dart@@debugPrintScheduleFrameStacks': (m.Scope scope)=>debugPrintScheduleFrameStacks,
'package:flutter/src/scheduler/debug.dart@@debugPrintScheduleFrameStacks:set': (m.Scope scope)=>(other)=>debugPrintScheduleFrameStacks=other,
'package:flutter/src/scheduler/debug.dart@@debugAssertAllSchedulerVarsUnset': (m.Scope scope)=>debugAssertAllSchedulerVarsUnset,

};
}