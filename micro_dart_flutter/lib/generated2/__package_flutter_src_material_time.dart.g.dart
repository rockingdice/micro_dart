import 'package:flutter/src/material/time.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/time.dart@TimeOfDay@#as': (m.Scope scope, target)=>()=>target as TimeOfDay,
'package:flutter/src/material/time.dart@TimeOfDay@#is': (m.Scope scope, target)=>()=>target is TimeOfDay,
'package:flutter/src/material/time.dart@TimeOfDay@hoursPerDay': (m.Scope scope)=>TimeOfDay.hoursPerDay,
'package:flutter/src/material/time.dart@TimeOfDay@hoursPerPeriod': (m.Scope scope)=>TimeOfDay.hoursPerPeriod,
'package:flutter/src/material/time.dart@TimeOfDay@minutesPerHour': (m.Scope scope)=>TimeOfDay.minutesPerHour,
'package:flutter/src/material/time.dart@TimeOfDay@hour': (m.Scope scope, TimeOfDay target)=>target.hour,
'package:flutter/src/material/time.dart@TimeOfDay@minute': (m.Scope scope, TimeOfDay target)=>target.minute,
'package:flutter/src/material/time.dart@TimeOfDay@period': (m.Scope scope, TimeOfDay target)=>target.period,
'package:flutter/src/material/time.dart@TimeOfDay@hourOfPeriod': (m.Scope scope, TimeOfDay target)=>target.hourOfPeriod,
'package:flutter/src/material/time.dart@TimeOfDay@periodOffset': (m.Scope scope, TimeOfDay target)=>target.periodOffset,
'package:flutter/src/material/time.dart@TimeOfDay@hashCode': (m.Scope scope, TimeOfDay target)=>target.hashCode,
'package:flutter/src/material/time.dart@TimeOfDay@': (m.Scope scope)=>({ hour,  minute}){
return TimeOfDay(hour:hour, minute:minute);
},
'package:flutter/src/material/time.dart@TimeOfDay@fromDateTime': (m.Scope scope)=>TimeOfDay.fromDateTime,
'package:flutter/src/material/time.dart@TimeOfDay@now': (m.Scope scope)=>TimeOfDay.now,
'package:flutter/src/material/time.dart@TimeOfDay@replacing': (m.Scope scope, TimeOfDay target)=>target.replacing,
'package:flutter/src/material/time.dart@TimeOfDay@format': (m.Scope scope, TimeOfDay target)=>target.format,
'package:flutter/src/material/time.dart@TimeOfDay@==': (m.Scope scope, TimeOfDay target)=>(other)=> target == other,
'package:flutter/src/material/time.dart@TimeOfDay@toString': (m.Scope scope, TimeOfDay target)=>target.toString,
'package:flutter/src/material/time.dart@RestorableTimeOfDay@#as': (m.Scope scope, target)=>()=>target as RestorableTimeOfDay,
'package:flutter/src/material/time.dart@RestorableTimeOfDay@#is': (m.Scope scope, target)=>()=>target is RestorableTimeOfDay,
'package:flutter/src/material/time.dart@RestorableTimeOfDay@': (m.Scope scope)=>( defaultValue){
return RestorableTimeOfDay(defaultValue);
},
'package:flutter/src/material/time.dart@RestorableTimeOfDay@createDefaultValue': (m.Scope scope, RestorableTimeOfDay target)=>target.createDefaultValue,
'package:flutter/src/material/time.dart@RestorableTimeOfDay@didUpdateValue': (m.Scope scope, RestorableTimeOfDay target)=>target.didUpdateValue,
'package:flutter/src/material/time.dart@RestorableTimeOfDay@fromPrimitives': (m.Scope scope, RestorableTimeOfDay target)=>target.fromPrimitives,
'package:flutter/src/material/time.dart@RestorableTimeOfDay@toPrimitives': (m.Scope scope, RestorableTimeOfDay target)=>target.toPrimitives,
'package:flutter/src/material/time.dart@@hourFormat': (m.Scope scope)=>hourFormat,

};
}