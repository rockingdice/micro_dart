import 'package:flutter/src/material/date.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:flutter/src/material/date.dart@DateUtils@#as': (m.Scope scope, target)=>()=>target as DateUtils,
'package:flutter/src/material/date.dart@DateUtils@#is': (m.Scope scope, target)=>()=>target is DateUtils,
'package:flutter/src/material/date.dart@DateUtils@dateOnly': (m.Scope scope)=>DateUtils.dateOnly,
'package:flutter/src/material/date.dart@DateUtils@datesOnly': (m.Scope scope)=>DateUtils.datesOnly,
'package:flutter/src/material/date.dart@DateUtils@isSameDay': (m.Scope scope)=>DateUtils.isSameDay,
'package:flutter/src/material/date.dart@DateUtils@isSameMonth': (m.Scope scope)=>DateUtils.isSameMonth,
'package:flutter/src/material/date.dart@DateUtils@monthDelta': (m.Scope scope)=>DateUtils.monthDelta,
'package:flutter/src/material/date.dart@DateUtils@addMonthsToMonthDate': (m.Scope scope)=>DateUtils.addMonthsToMonthDate,
'package:flutter/src/material/date.dart@DateUtils@addDaysToDate': (m.Scope scope)=>DateUtils.addDaysToDate,
'package:flutter/src/material/date.dart@DateUtils@firstDayOffset': (m.Scope scope)=>DateUtils.firstDayOffset,
'package:flutter/src/material/date.dart@DateUtils@getDaysInMonth': (m.Scope scope)=>DateUtils.getDaysInMonth,
'package:flutter/src/material/date.dart@DateTimeRange@#as': (m.Scope scope, target)=>()=>target as DateTimeRange,
'package:flutter/src/material/date.dart@DateTimeRange@#is': (m.Scope scope, target)=>()=>target is DateTimeRange,
'package:flutter/src/material/date.dart@DateTimeRange@start': (m.Scope scope, DateTimeRange target)=>target.start,
'package:flutter/src/material/date.dart@DateTimeRange@end': (m.Scope scope, DateTimeRange target)=>target.end,
'package:flutter/src/material/date.dart@DateTimeRange@duration': (m.Scope scope, DateTimeRange target)=>target.duration,
'package:flutter/src/material/date.dart@DateTimeRange@hashCode': (m.Scope scope, DateTimeRange target)=>target.hashCode,
'package:flutter/src/material/date.dart@DateTimeRange@': (m.Scope scope)=>({ end,  start}){
return DateTimeRange(end:end, start:start);
},
'package:flutter/src/material/date.dart@DateTimeRange@==': (m.Scope scope, DateTimeRange target)=>(other)=> target == other,
'package:flutter/src/material/date.dart@DateTimeRange@toString': (m.Scope scope, DateTimeRange target)=>target.toString,

};
}