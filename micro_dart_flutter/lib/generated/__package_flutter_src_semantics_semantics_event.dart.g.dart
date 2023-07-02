import 'package:flutter/src/semantics/semantics_event.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/semantics/semantics_event.dart@SemanticsEvent@#as': (m.Scope scope, target)=>()=>target as SemanticsEvent,
'package:flutter/src/semantics/semantics_event.dart@SemanticsEvent@#is': (m.Scope scope, target)=>()=>target is SemanticsEvent,
'package:flutter/src/semantics/semantics_event.dart@SemanticsEvent@type': (m.Scope scope, SemanticsEvent target)=>target.type,
'package:flutter/src/semantics/semantics_event.dart@SemanticsEvent@toMap': (m.Scope scope, SemanticsEvent target)=>target.toMap,
'package:flutter/src/semantics/semantics_event.dart@SemanticsEvent@getDataMap': (m.Scope scope, SemanticsEvent target)=>target.getDataMap,
'package:flutter/src/semantics/semantics_event.dart@SemanticsEvent@toString': (m.Scope scope, SemanticsEvent target)=>target.toString,
'package:flutter/src/semantics/semantics_event.dart@AnnounceSemanticsEvent@#as': (m.Scope scope, target)=>()=>target as AnnounceSemanticsEvent,
'package:flutter/src/semantics/semantics_event.dart@AnnounceSemanticsEvent@#is': (m.Scope scope, target)=>()=>target is AnnounceSemanticsEvent,
'package:flutter/src/semantics/semantics_event.dart@AnnounceSemanticsEvent@message': (m.Scope scope, AnnounceSemanticsEvent target)=>target.message,
'package:flutter/src/semantics/semantics_event.dart@AnnounceSemanticsEvent@textDirection': (m.Scope scope, AnnounceSemanticsEvent target)=>target.textDirection,
'package:flutter/src/semantics/semantics_event.dart@AnnounceSemanticsEvent@assertiveness': (m.Scope scope, AnnounceSemanticsEvent target)=>target.assertiveness,
'package:flutter/src/semantics/semantics_event.dart@AnnounceSemanticsEvent@': (m.Scope scope)=>( message,  textDirection, { assertiveness}){
return AnnounceSemanticsEvent(message, textDirection, assertiveness:assertiveness ?? Assertiveness.polite);
},
'package:flutter/src/semantics/semantics_event.dart@AnnounceSemanticsEvent@getDataMap': (m.Scope scope, AnnounceSemanticsEvent target)=>target.getDataMap,
'package:flutter/src/semantics/semantics_event.dart@TooltipSemanticsEvent@#as': (m.Scope scope, target)=>()=>target as TooltipSemanticsEvent,
'package:flutter/src/semantics/semantics_event.dart@TooltipSemanticsEvent@#is': (m.Scope scope, target)=>()=>target is TooltipSemanticsEvent,
'package:flutter/src/semantics/semantics_event.dart@TooltipSemanticsEvent@message': (m.Scope scope, TooltipSemanticsEvent target)=>target.message,
'package:flutter/src/semantics/semantics_event.dart@TooltipSemanticsEvent@': (m.Scope scope)=>( message){
return TooltipSemanticsEvent(message);
},
'package:flutter/src/semantics/semantics_event.dart@TooltipSemanticsEvent@getDataMap': (m.Scope scope, TooltipSemanticsEvent target)=>target.getDataMap,
'package:flutter/src/semantics/semantics_event.dart@LongPressSemanticsEvent@#as': (m.Scope scope, target)=>()=>target as LongPressSemanticsEvent,
'package:flutter/src/semantics/semantics_event.dart@LongPressSemanticsEvent@#is': (m.Scope scope, target)=>()=>target is LongPressSemanticsEvent,
'package:flutter/src/semantics/semantics_event.dart@LongPressSemanticsEvent@': (m.Scope scope)=>(){
return LongPressSemanticsEvent();
},
'package:flutter/src/semantics/semantics_event.dart@LongPressSemanticsEvent@getDataMap': (m.Scope scope, LongPressSemanticsEvent target)=>target.getDataMap,
'package:flutter/src/semantics/semantics_event.dart@TapSemanticEvent@#as': (m.Scope scope, target)=>()=>target as TapSemanticEvent,
'package:flutter/src/semantics/semantics_event.dart@TapSemanticEvent@#is': (m.Scope scope, target)=>()=>target is TapSemanticEvent,
'package:flutter/src/semantics/semantics_event.dart@TapSemanticEvent@': (m.Scope scope)=>(){
return TapSemanticEvent();
},
'package:flutter/src/semantics/semantics_event.dart@TapSemanticEvent@getDataMap': (m.Scope scope, TapSemanticEvent target)=>target.getDataMap,

};
}