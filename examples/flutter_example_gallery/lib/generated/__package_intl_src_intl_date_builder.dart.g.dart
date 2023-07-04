import 'package:intl/src/intl/date_builder.dart';
import 'package:clock/clock.dart';
import 'package:intl/src/intl/date_computation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/intl/date_builder.dart@DateBuilder@#as': (m.Scope scope, target)=>()=>target as DateBuilder,
'package:intl/src/intl/date_builder.dart@DateBuilder@#is': (m.Scope scope, target)=>()=>target is DateBuilder,
'package:intl/src/intl/date_builder.dart@DateBuilder@year': (m.Scope scope, DateBuilder target)=>target.year,
'package:intl/src/intl/date_builder.dart@DateBuilder@year:set': (m.Scope scope, DateBuilder target)=>(other)=>target.year=other,
'package:intl/src/intl/date_builder.dart@DateBuilder@month': (m.Scope scope, DateBuilder target)=>target.month,
'package:intl/src/intl/date_builder.dart@DateBuilder@month:set': (m.Scope scope, DateBuilder target)=>(other)=>target.month=other,
'package:intl/src/intl/date_builder.dart@DateBuilder@day': (m.Scope scope, DateBuilder target)=>target.day,
'package:intl/src/intl/date_builder.dart@DateBuilder@day:set': (m.Scope scope, DateBuilder target)=>(other)=>target.day=other,
'package:intl/src/intl/date_builder.dart@DateBuilder@dayOfYear': (m.Scope scope, DateBuilder target)=>target.dayOfYear,
'package:intl/src/intl/date_builder.dart@DateBuilder@dayOfYear:set': (m.Scope scope, DateBuilder target)=>(other)=>target.dayOfYear=other,
'package:intl/src/intl/date_builder.dart@DateBuilder@hour': (m.Scope scope, DateBuilder target)=>target.hour,
'package:intl/src/intl/date_builder.dart@DateBuilder@hour:set': (m.Scope scope, DateBuilder target)=>(other)=>target.hour=other,
'package:intl/src/intl/date_builder.dart@DateBuilder@minute': (m.Scope scope, DateBuilder target)=>target.minute,
'package:intl/src/intl/date_builder.dart@DateBuilder@minute:set': (m.Scope scope, DateBuilder target)=>(other)=>target.minute=other,
'package:intl/src/intl/date_builder.dart@DateBuilder@second': (m.Scope scope, DateBuilder target)=>target.second,
'package:intl/src/intl/date_builder.dart@DateBuilder@second:set': (m.Scope scope, DateBuilder target)=>(other)=>target.second=other,
'package:intl/src/intl/date_builder.dart@DateBuilder@fractionalSecond': (m.Scope scope, DateBuilder target)=>target.fractionalSecond,
'package:intl/src/intl/date_builder.dart@DateBuilder@fractionalSecond:set': (m.Scope scope, DateBuilder target)=>(other)=>target.fractionalSecond=other,
'package:intl/src/intl/date_builder.dart@DateBuilder@pm': (m.Scope scope, DateBuilder target)=>target.pm,
'package:intl/src/intl/date_builder.dart@DateBuilder@pm:set': (m.Scope scope, DateBuilder target)=>(other)=>target.pm=other,
'package:intl/src/intl/date_builder.dart@DateBuilder@utc': (m.Scope scope, DateBuilder target)=>target.utc,
'package:intl/src/intl/date_builder.dart@DateBuilder@utc:set': (m.Scope scope, DateBuilder target)=>(other)=>target.utc=other,
'package:intl/src/intl/date_builder.dart@DateBuilder@dateOnly': (m.Scope scope, DateBuilder target)=>target.dateOnly,
'package:intl/src/intl/date_builder.dart@DateBuilder@dateOnly:set': (m.Scope scope, DateBuilder target)=>(other)=>target.dateOnly=other,
'package:intl/src/intl/date_builder.dart@DateBuilder@dayOrDayOfYear': (m.Scope scope, DateBuilder target)=>target.dayOrDayOfYear,
'package:intl/src/intl/date_builder.dart@DateBuilder@hour24': (m.Scope scope, DateBuilder target)=>target.hour24,
'package:intl/src/intl/date_builder.dart@DateBuilder@': (m.Scope scope)=>( _locale,  _dateTimeConstructor){
DateTime _dateTimeConstructorProxy( year,  month,  day,  hour24,  minute,  second,  fractionalSecond,  utc) {
return  engine.callFunctionPointer(scope, _dateTimeConstructor!,[year, month, day, hour24, minute, second, fractionalSecond, utc], {});
}

return DateBuilder(_locale, _dateTimeConstructorProxy);
},
'package:intl/src/intl/date_builder.dart@DateBuilder@setYear': (m.Scope scope, DateBuilder target)=>target.setYear,
'package:intl/src/intl/date_builder.dart@DateBuilder@setHasAmbiguousCentury': (m.Scope scope, DateBuilder target)=>target.setHasAmbiguousCentury,
'package:intl/src/intl/date_builder.dart@DateBuilder@setMonth': (m.Scope scope, DateBuilder target)=>target.setMonth,
'package:intl/src/intl/date_builder.dart@DateBuilder@setDay': (m.Scope scope, DateBuilder target)=>target.setDay,
'package:intl/src/intl/date_builder.dart@DateBuilder@setDayOfYear': (m.Scope scope, DateBuilder target)=>target.setDayOfYear,
'package:intl/src/intl/date_builder.dart@DateBuilder@setHour': (m.Scope scope, DateBuilder target)=>target.setHour,
'package:intl/src/intl/date_builder.dart@DateBuilder@setMinute': (m.Scope scope, DateBuilder target)=>target.setMinute,
'package:intl/src/intl/date_builder.dart@DateBuilder@setSecond': (m.Scope scope, DateBuilder target)=>target.setSecond,
'package:intl/src/intl/date_builder.dart@DateBuilder@setFractionalSecond': (m.Scope scope, DateBuilder target)=>target.setFractionalSecond,
'package:intl/src/intl/date_builder.dart@DateBuilder@verify': (m.Scope scope, DateBuilder target)=>target.verify,
'package:intl/src/intl/date_builder.dart@DateBuilder@asDate': (m.Scope scope, DateBuilder target)=>target.asDate,

};
}