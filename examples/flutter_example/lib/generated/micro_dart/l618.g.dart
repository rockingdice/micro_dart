import 'package:flutter/src/semantics/semantics_service.dart';
import 'dart:ui' show TextDirection;
import 'package:flutter/services.dart' show SystemChannels;
import 'package:flutter/src/semantics/semantics_event.dart' show AnnounceSemanticsEvent,Assertiveness,TooltipSemanticsEvent;
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/semantics/semantics_service.dart@SemanticsService@#as': (m.Scope scope, target)=>()=>target as SemanticsService,
'package:flutter/src/semantics/semantics_service.dart@SemanticsService@#is': (m.Scope scope, target)=>()=>target is SemanticsService,
'package:flutter/src/semantics/semantics_service.dart@SemanticsService@announce': (m.Scope scope)=>SemanticsService.announce,
'package:flutter/src/semantics/semantics_service.dart@SemanticsService@tooltip': (m.Scope scope)=>SemanticsService.tooltip,

};
}