import 'package:flutter/src/gestures/binding.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:ui' show PointerDataPacket;
import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/gestures/arena.dart';
import 'package:flutter/src/gestures/converter.dart';
import 'package:flutter/src/gestures/debug.dart';
import 'package:flutter/src/gestures/events.dart';
import 'package:flutter/src/gestures/hit_test.dart';
import 'package:flutter/src/gestures/pointer_router.dart';
import 'package:flutter/src/gestures/pointer_signal_resolver.dart';
import 'package:flutter/src/gestures/resampler.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/gestures/binding.dart@SamplingClock@#as': (m.Scope scope, target)=>()=>target as SamplingClock,
'package:flutter/src/gestures/binding.dart@SamplingClock@#is': (m.Scope scope, target)=>()=>target is SamplingClock,
'package:flutter/src/gestures/binding.dart@SamplingClock@': (m.Scope scope)=>(){
return SamplingClock();
},
'package:flutter/src/gestures/binding.dart@SamplingClock@now': (m.Scope scope, SamplingClock target)=>target.now,
'package:flutter/src/gestures/binding.dart@SamplingClock@stopwatch': (m.Scope scope, SamplingClock target)=>target.stopwatch,
'package:flutter/src/gestures/binding.dart@FlutterErrorDetailsForPointerEventDispatcher@#as': (m.Scope scope, target)=>()=>target as FlutterErrorDetailsForPointerEventDispatcher,
'package:flutter/src/gestures/binding.dart@FlutterErrorDetailsForPointerEventDispatcher@#is': (m.Scope scope, target)=>()=>target is FlutterErrorDetailsForPointerEventDispatcher,
'package:flutter/src/gestures/binding.dart@FlutterErrorDetailsForPointerEventDispatcher@event': (m.Scope scope, FlutterErrorDetailsForPointerEventDispatcher target)=>target.event,
'package:flutter/src/gestures/binding.dart@FlutterErrorDetailsForPointerEventDispatcher@hitTestEntry': (m.Scope scope, FlutterErrorDetailsForPointerEventDispatcher target)=>target.hitTestEntry,
'package:flutter/src/gestures/binding.dart@FlutterErrorDetailsForPointerEventDispatcher@': (m.Scope scope)=>({ context,  event,  exception,  hitTestEntry,  informationCollector,  library,  silent,  stack}){
Iterable<DiagnosticsNode> informationCollectorProxy() {
return  engine.callFunctionPointer(scope, informationCollector!,[], {});
}

return FlutterErrorDetailsForPointerEventDispatcher(context:context, event:event, exception:exception, hitTestEntry:hitTestEntry, informationCollector:informationCollector == null ? null :informationCollectorProxy, library:library ?? 'Flutter framework', silent:silent ?? false, stack:stack);
},

};
}