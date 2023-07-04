import 'package:clock/src/utils.dart';
import 'package:micro_dart_runtime/micro_dart_runtime.dart' as m;
Map<String,Function> getLibrary(m.MicroDartEngine engine) {
return {
'package:clock/src/utils.dart@@daysInMonth': (m.Scope scope)=>daysInMonth,
'package:clock/src/utils.dart@@isLeapYear': (m.Scope scope)=>isLeapYear,
'package:clock/src/utils.dart@@clampDayOfMonth': (m.Scope scope)=>clampDayOfMonth,

};
}