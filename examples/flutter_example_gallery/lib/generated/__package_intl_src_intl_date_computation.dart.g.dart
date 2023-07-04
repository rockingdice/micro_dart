import 'package:intl/src/intl/date_computation.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:intl/src/intl/date_computation.dart@@dayOfYear': (m.Scope scope)=>dayOfYear,
'package:intl/src/intl/date_computation.dart@@isLeapYear': (m.Scope scope)=>isLeapYear,
'package:intl/src/intl/date_computation.dart@@ordinalDayFromMarchFirst': (m.Scope scope)=>ordinalDayFromMarchFirst,

};
}