import 'package:flutter/src/scheduler/binding.dart';
import 'dart:async';
import 'dart:collection';
import 'dart:developer' show Flow,Timeline,TimelineTask;
import 'dart:ui' show AppLifecycleState,DartPerformanceMode,FramePhase,FrameTiming,PlatformDispatcher,TimingsCallback;
import 'package:collection/collection.dart' show HeapPriorityQueue,PriorityQueue;
import 'package:flutter/foundation.dart';
import 'package:flutter/src/scheduler/debug.dart';
import 'package:flutter/src/scheduler/priority.dart';
import 'package:flutter/src/scheduler/service_extensions.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/scheduler/binding.dart@@timeDilation': (m.Scope scope)=>timeDilation,
'package:flutter/src/scheduler/binding.dart@@timeDilation:set': (m.Scope scope)=>(other)=>timeDilation=other,
'package:flutter/src/scheduler/binding.dart@PerformanceModeRequestHandle@#as': (m.Scope scope, target)=>()=>target as PerformanceModeRequestHandle,
'package:flutter/src/scheduler/binding.dart@PerformanceModeRequestHandle@#is': (m.Scope scope, target)=>()=>target is PerformanceModeRequestHandle,
'package:flutter/src/scheduler/binding.dart@PerformanceModeRequestHandle@dispose': (m.Scope scope, PerformanceModeRequestHandle target)=>target.dispose,
'package:flutter/src/scheduler/binding.dart@@defaultSchedulingStrategy': (m.Scope scope)=>defaultSchedulingStrategy,

};
}